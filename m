From: "Justin P. Mattock" <justinmattock@gmail.com>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Mon, 12 Oct 2009 20:43:37 -0700
Message-ID: <4AD3F769.5080405@gmail.com>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera> <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com> <87ljjgfcbu.fsf@spindle.srvr.nix> <alpine.LFD.2.01.0910121703390.3438@localhost.localdomain> <alpine.LFD.2.01.0910122004200.3438@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758926AbZJMDoL@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=MQKgiT5Y3Ss4Kq3pj82dWDSfI73Or/cCRhxhBACTxOg=;
        b=XDCjh01vXPqhaALUXqY8rXYANybwH1E81y5o996VT0Uke7e9Fai4Lykt5jU9oPt0Kv
         WHF/3/Ybj/9oy3KbuCFSXBfSarljbA8EgMNiy3+iZYZIJMAkJr6fO41vZpRWaSXCFS2y
         7x2h8+QtW75ixam79wO2t8VrAk0B1P8Bf6icM=
In-Reply-To: <alpine.LFD.2.01.0910122004200.3438@localhost.localdomain>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Nix <nix@esperi.org.uk>, Alan Cox <alan@lxorguk.ukuu.org.uk>, Paul Fulghum <paulkf@microgate.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Boyan <btanastasov@yahoo.co.uk>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Ed Tomlinson <edt@aei.ca>, =?ISO-8859-1?Q?=22Fr=E9d=E9ric_L=2E_W=2E_Meunier=22?= <fredlwm@gmail.com>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>

Linus Torvalds wrote:
> [ Alan, Paulkf - the tty buffering and locking is originally your code,
>    although from about three years ago, when it used to be in tty_io.c..
>    Any comment? ]
>
> On Mon, 12 Oct 2009, Linus Torvalds wrote:
>    
>> Alan, Ogawa-san, do either of you see some problem in tty_buffer.c,
>> perhaps?
>>      
>
> Hmm. I see one, at least.
>
> The "tty_insert_flip_string()" locking seems totally bogus.
>
> It does that "tty_buffer_request_room()" call and subsequent copying with
> no locking at all - sure, the tty_buffer_request_room() function itself
> locks the buffers, but then unlocks it when returning, so when we actually
> do the memcpy() etc, we can race with anybody.
>
> I don't really see who would care, but it does look totally broken.
>
> I dunno, this patch seems to make sense to me. Am I missing something?
>
> [ NOTE! The patch is totally untested. It compiled for me on x86-64, and
>    apart from that I'm just going to say that it looks obvious, and the old
>    code looks obviously buggy. Also, any remaining users of
>
> 	tty_prepare_flip_string
> 	tty_prepare_flip_string_flags
>
>    are still fundamentally broken and buggy, while users of
>
> 	tty_buffer_request_room
>
>    are pretty damn odd and suspect (but a lot of them seem to be just
>    pointless: they then call tty_insert_flip_string(), which means that the
>    tty_buffer_request_room() call was totally redundant ]
>
> Comments? Does this work? Does it make any difference? It seems fairly
> unlikely, but it's the only obvious problem I've seen in the tty buffering
> code so far.
>
> And that code is literally 3 years old, and it seems unlikely that a
> regular _keyboard_ buffer would be able to hit the (rather small) race
> condition. But other serialization may have hidden it, and timing
> differences could certainly have caused it to trigger much more easily.
>
> 			Linus
>
> ---
>   drivers/char/tty_buffer.c |   33 +++++++++++++++++++++++++--------
>   1 files changed, 25 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/char/tty_buffer.c b/drivers/char/tty_buffer.c
> index 3108991..25ab538 100644
> --- a/drivers/char/tty_buffer.c
> +++ b/drivers/char/tty_buffer.c
> @@ -196,13 +196,10 @@ static struct tty_buffer *tty_buffer_find(struct tty_struct *tty, size_t size)
>    *
>    *	Locking: Takes tty->buf.lock
>    */
> -int tty_buffer_request_room(struct tty_struct *tty, size_t size)
> +static int locked_tty_buffer_request_room(struct tty_struct *tty, size_t size)
>   {
>   	struct tty_buffer *b, *n;
>   	int left;
> -	unsigned long flags;
> -
> -	spin_lock_irqsave(&tty->buf.lock, flags);
>
>   	/* OPTIMISATION: We could keep a per tty "zero" sized buffer to
>   	   remove this conditional if its worth it. This would be invisible
> @@ -225,9 +222,20 @@ int tty_buffer_request_room(struct tty_struct *tty, size_t size)
>   			size = left;
>   	}
>
> -	spin_unlock_irqrestore(&tty->buf.lock, flags);
>   	return size;
>   }
> +
> +int tty_buffer_request_room(struct tty_struct *tty, size_t size)
> +{
> +	int retval;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&tty->buf.lock, flags);
> +	retval = locked_tty_buffer_request_room(tty, size);
> +	spin_unlock_irqrestore(&tty->buf.lock, flags);
> +	return retval;
> +}
> +
>   EXPORT_SYMBOL_GPL(tty_buffer_request_room);
>
>   /**
> @@ -239,16 +247,20 @@ EXPORT_SYMBOL_GPL(tty_buffer_request_room);
>    *	Queue a series of bytes to the tty buffering. All the characters
>    *	passed are marked as without error. Returns the number added.
>    *
> - *	Locking: Called functions may take tty->buf.lock
> + *	Locking: We take tty->buf.lock
>    */
>
>   int tty_insert_flip_string(struct tty_struct *tty, const unsigned char *chars,
>   				size_t size)
>   {
>   	int copied = 0;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&tty->buf.lock, flags);
>   	do {
> -		int space = tty_buffer_request_room(tty, size - copied);
> +		int space = locked_tty_buffer_request_room(tty, size - copied);
>   		struct tty_buffer *tb = tty->buf.tail;
> +
>   		/* If there is no space then tb may be NULL */
>   		if (unlikely(space == 0))
>   			break;
> @@ -260,6 +272,7 @@ int tty_insert_flip_string(struct tty_struct *tty, const unsigned char *chars,
>   		/* There is a small chance that we need to split the data over
>   		   several buffers. If this is the case we must loop */
>   	} while (unlikely(size>  copied));
> +	spin_unlock_irqrestore(&tty->buf.lock, flags);
>   	return copied;
>   }
>   EXPORT_SYMBOL(tty_insert_flip_string);
> @@ -282,8 +295,11 @@ int tty_insert_flip_string_flags(struct tty_struct *tty,
>   		const unsigned char *chars, const char *flags, size_t size)
>   {
>   	int copied = 0;
> +	unsigned long irqflags;
> +
> +	spin_lock_irqsave(&tty->buf.lock, irqflags);
>   	do {
> -		int space = tty_buffer_request_room(tty, size - copied);
> +		int space = locked_tty_buffer_request_room(tty, size - copied);
>   		struct tty_buffer *tb = tty->buf.tail;
>   		/* If there is no space then tb may be NULL */
>   		if (unlikely(space == 0))
> @@ -297,6 +313,7 @@ int tty_insert_flip_string_flags(struct tty_struct *tty,
>   		/* There is a small chance that we need to split the data over
>   		   several buffers. If this is the case we must loop */
>   	} while (unlikely(size>  copied));
> +	spin_unlock_irqrestore(&tty->buf.lock, irqflags);
>   	return copied;
>   }
>   EXPORT_SYMBOL(tty_insert_flip_string_flags);
>
>    
I can throw your patch in over here for the heck of it.
If there's somebody who's really hitting this bug
then the results would be better  if this is the area that causing
this bug.(from here the only issue I'm seeing is spinning
history commands in the terminal  from time to time,
nothing of any unusable keys like others are reporting).

Justin P. Mattock

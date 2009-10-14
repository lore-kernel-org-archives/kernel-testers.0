From: "=?ISO-8859-15?Q?Fr=E9d=E9ric_L=2E_W=2E_Meunier?=" 
	<fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 21:55:25 -0300 (BRST)
Message-ID: <alpine.LNX.2.01.0910132153221.5212@dyndns.pervalidus.net>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera> <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com> <87ljjgfcbu.fsf@spindle.srvr.nix> <alpine.LFD.2.01.0910121703390.3438@localhost.localdomain> <alpine.LFD.2.01.0910122004200.3438@localhost.localdomain>
 <4AD3F769.5080405@gmail.com> <alpine.LNX.2.01.0910130405200.9297@dyndns.pervalidus.net> <4AD437F9.9020708@yahoo.co.uk> <alpine.LFD.2.01.0910130745550.3438@localhost.localdomain> <4AD4DE4C.4010402@yahoo.co.uk> <alpine.LFD.2.01.0910131317360.26777@localhost.localdomain>
 <alpine.LFD.2.01.0910131413240.3596@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1761379AbZJNA4c-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :in-reply-to:message-id:references:user-agent:x-archive:mime-version
         :content-type;
        bh=bO1fJbwd5znmUy8fRMykvbRaNnW0NTsEUzhX2/opop8=;
        b=ES7+WAuceWndzpiiCeq6n28uZQuEwkwZUUcJWw/OqS11e6lsOmTnK8mMsjiLLR3RiL
         TrZKHUSi4JQx6rKQ1+yGLD0pjxFQjzIvs06OMUt8AQn6GA3GOkSfD58BnCR0rJzY+lpq
         NO+VCPfFU48FotbGqpWwNpdww/r7a80zZ8Bwc=
In-Reply-To: <alpine.LFD.2.01.0910131413240.3596-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: linux-kernel-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Nix <nix-dKoSMcxRz+Te9xe1eoZjHA@public.gmane.org>, Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, Paul Fulghum <paulkf-CZzk0lvu1V9l57MIdRCFDg@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>

On Tue, 13 Oct 2009, Linus Torvalds wrote:

>
> Another bug:
>
> On Tue, 13 Oct 2009, Linus Torvalds wrote:
>>  			if (!count) {
>> -				if (head->next == NULL)
>> -					break;
>
> Those two lines should _not_ be deleted. I cleaned up a bit too much.
>
> The rule is that we must not free the last buffer, because it's also going
> to be 'tail'.
>
> So here's a new version with that fixed (and the previous bug I already
> mentioned).
>
> Whether it _works_ is still not clear. It might eat your pet goldfish, or
> make farting noises in your general direction. Or it might fix the bug.
> Who knows?
>
> 		Linus
>
> ---
> drivers/char/tty_buffer.c |   29 +++++++++++++----------------
> 1 files changed, 13 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/char/tty_buffer.c b/drivers/char/tty_buffer.c
> index 3108991..0296612 100644
> --- a/drivers/char/tty_buffer.c
> +++ b/drivers/char/tty_buffer.c
> @@ -402,28 +402,26 @@ static void flush_to_ldisc(struct work_struct *work)
> 		container_of(work, struct tty_struct, buf.work.work);
> 	unsigned long 	flags;
> 	struct tty_ldisc *disc;
> -	struct tty_buffer *tbuf, *head;
> -	char *char_buf;
> -	unsigned char *flag_buf;
>
> 	disc = tty_ldisc_ref(tty);
> 	if (disc == NULL)	/*  !TTY_LDISC */
> 		return;
>
> 	spin_lock_irqsave(&tty->buf.lock, flags);
> -	/* So we know a flush is running */
> -	set_bit(TTY_FLUSHING, &tty->flags);
> -	head = tty->buf.head;
> -	if (head != NULL) {
> -		tty->buf.head = NULL;
> -		for (;;) {
> -			int count = head->commit - head->read;
> +
> +	if (!test_and_set_bit(TTY_FLUSHING, &tty->flags)) {
> +		struct tty_buffer *head;
> +		while ((head = tty->buf.head) != NULL) {
> +			int count;
> +			char *char_buf;
> +			unsigned char *flag_buf;
> +
> +			count = head->commit - head->read;
> 			if (!count) {
> 				if (head->next == NULL)
> 					break;
> -				tbuf = head;
> -				head = head->next;
> -				tty_buffer_free(tty, tbuf);
> +				tty->buf.head = head->next;
> +				tty_buffer_free(tty, head);
> 				continue;
> 			}
> 			/* Ldisc or user is trying to flush the buffers
> @@ -445,9 +443,9 @@ static void flush_to_ldisc(struct work_struct *work)
> 							flag_buf, count);
> 			spin_lock_irqsave(&tty->buf.lock, flags);
> 		}
> -		/* Restore the queue head */
> -		tty->buf.head = head;
> +		clear_bit(TTY_FLUSHING, &tty->flags);
> 	}
> +
> 	/* We may have a deferred request to flush the input buffer,
> 	   if so pull the chain under the lock and empty the queue */
> 	if (test_bit(TTY_FLUSHPENDING, &tty->flags)) {
> @@ -455,7 +453,6 @@ static void flush_to_ldisc(struct work_struct *work)
> 		clear_bit(TTY_FLUSHPENDING, &tty->flags);
> 		wake_up(&tty->read_wait);
> 	}
> -	clear_bit(TTY_FLUSHING, &tty->flags);
> 	spin_unlock_irqrestore(&tty->buf.lock, flags);
>
> 	tty_ldisc_deref(disc);

For now (more than 3h), it isn't doing any harm. And no keyboard 
lockups.

BTW, the old version of the patch was funny. It booted, but at 
the login prompt I could only enter the first letter.

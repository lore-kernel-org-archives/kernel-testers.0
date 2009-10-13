From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 02:17:25 -0700
Message-ID: <20091013091725.GJ2887@core.coreip.homeip.net>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera> <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com> <87ljjgfcbu.fsf@spindle.srvr.nix> <alpine.LFD.2.01.0910121703390.3438@localhost.localdomain> <alpine.LFD.2.01.0910122004200.3438@localhost.localdomain> <4AD3F769.5080405@gmail.com> <alpine.LNX.2.01.0910130405200.9297@dyndns.pervalidus.net> <4AD437F9.9020708@yahoo.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1759058AbZJMJSk@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=g6D1E+o63SMJdG9KtF/AJTTHA6F4UYbXAAoRwEIOJkM=;
        b=ml0uszIhsa4bMMBVFx3BflWTMe6UKHw5RszoghTAE1wUIA7Y8tttXC+y9rzZjGEtE4
         qng2SBciH4Yp62ARBhd83Q6vi2nSa/3PT5jNsd6BB3eL9to/tBS0KrDfVcMjA+XWhbzI
         oJGNZuIf36sbbpV/QuNarw6xhPtu1bk4elE94=
Content-Disposition: inline
In-Reply-To: <4AD437F9.9020708@yahoo.co.uk>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Boyan <btanastasov@yahoo.co.uk>
Cc: =?iso-8859-1?B?IkZy6WTpcmljIEwuIFcuIE1ldW5pZXIi?= <fredlwm@gmail.com>, "Justin P. Mattock" <justinmattock@gmail.com>, Linus Torvalds <torvalds@linux-foundation.org>, Nix <nix@esperi.org.uk>, Alan Cox <alan@lxorguk.ukuu.org.uk>, Paul Fulghum <paulkf@microgate.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Ed Tomlinson <edt@aei.ca>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>

On Tue, Oct 13, 2009 at 11:19:05AM +0300, Boyan wrote:
> Fr=E9d=E9ric L. W. Meunier wrote:
>> On Mon, 12 Oct 2009, Justin P. Mattock wrote:
>>
>>> Linus Torvalds wrote:
>>>> [ Alan, Paulkf - the tty buffering and locking is originally your =
code,
>>>>    although from about three years ago, when it used to be in tty_=
io.c..
>>>>    Any comment? ]
>>>>
>>>> On Mon, 12 Oct 2009, Linus Torvalds wrote:
>>>>
>>>>> Alan, Ogawa-san, do either of you see some problem in tty_buffer.=
c,
>>>>> perhaps?
>>>>>
>>>>
>>>> Hmm. I see one, at least.
>>>>
>>>> The "tty_insert_flip_string()" locking seems totally bogus.
>>>>
>>>> It does that "tty_buffer_request_room()" call and subsequent=20
>>>> copying with
>>>> no locking at all - sure, the tty_buffer_request_room() function i=
tself
>>>> locks the buffers, but then unlocks it when returning, so when we =
=20
>>>> actually
>>>> do the memcpy() etc, we can race with anybody.
>>>>
>>>> I don't really see who would care, but it does look totally broken=
=2E
>>>>
>>>> I dunno, this patch seems to make sense to me. Am I missing someth=
ing?
>>>>
>>>> [ NOTE! The patch is totally untested. It compiled for me on x86-6=
4, and
>>>>    apart from that I'm just going to say that it looks obvious, an=
d=20
>>>> the old
>>>>    code looks obviously buggy. Also, any remaining users of
>>>>
>>>>     tty_prepare_flip_string
>>>>     tty_prepare_flip_string_flags
>>>>
>>>>    are still fundamentally broken and buggy, while users of
>>>>
>>>>     tty_buffer_request_room
>>>>
>>>>    are pretty damn odd and suspect (but a lot of them seem to be j=
ust
>>>>    pointless: they then call tty_insert_flip_string(), which means=
 =20
>>>> that the
>>>>    tty_buffer_request_room() call was totally redundant ]
>>>>
>>>> Comments? Does this work? Does it make any difference? It seems fa=
irly
>>>> unlikely, but it's the only obvious problem I've seen in the tty =20
>>>> buffering
>>>> code so far.
>>>>
>>>> And that code is literally 3 years old, and it seems unlikely that=
 a
>>>> regular _keyboard_ buffer would be able to hit the (rather small) =
race
>>>> condition. But other serialization may have hidden it, and timing
>>>> differences could certainly have caused it to trigger much more ea=
sily.
>>>>
>>>>             Linus
>>>>
>>>> ---
>>>>   drivers/char/tty_buffer.c |   33 +++++++++++++++++++++++++------=
--
>>>>   1 files changed, 25 insertions(+), 8 deletions(-)
>>>>
>>>> diff --git a/drivers/char/tty_buffer.c b/drivers/char/tty_buffer.c
>>>> index 3108991..25ab538 100644
>>>> --- a/drivers/char/tty_buffer.c
>>>> +++ b/drivers/char/tty_buffer.c
>>>> @@ -196,13 +196,10 @@ static struct tty_buffer =20
>>>> *tty_buffer_find(struct tty_struct *tty, size_t size)
>>>>    *
>>>>    *    Locking: Takes tty->buf.lock
>>>>    */
>>>> -int tty_buffer_request_room(struct tty_struct *tty, size_t size)
>>>> +static int locked_tty_buffer_request_room(struct tty_struct *tty,=
 =20
>>>> size_t size)
>>>>   {
>>>>       struct tty_buffer *b, *n;
>>>>       int left;
>>>> -    unsigned long flags;
>>>> -
>>>> -    spin_lock_irqsave(&tty->buf.lock, flags);
>>>>
>>>>       /* OPTIMISATION: We could keep a per tty "zero" sized buffer=
 to
>>>>          remove this conditional if its worth it. This would be =20
>>>> invisible
>>>> @@ -225,9 +222,20 @@ int tty_buffer_request_room(struct tty_struct=
 =20
>>>> *tty, size_t size)
>>>>               size =3D left;
>>>>       }
>>>>
>>>> -    spin_unlock_irqrestore(&tty->buf.lock, flags);
>>>>       return size;
>>>>   }
>>>> +
>>>> +int tty_buffer_request_room(struct tty_struct *tty, size_t size)
>>>> +{
>>>> +    int retval;
>>>> +    unsigned long flags;
>>>> +
>>>> +    spin_lock_irqsave(&tty->buf.lock, flags);
>>>> +    retval =3D locked_tty_buffer_request_room(tty, size);
>>>> +    spin_unlock_irqrestore(&tty->buf.lock, flags);
>>>> +    return retval;
>>>> +}
>>>> +
>>>>   EXPORT_SYMBOL_GPL(tty_buffer_request_room);
>>>>
>>>>   /**
>>>> @@ -239,16 +247,20 @@ EXPORT_SYMBOL_GPL(tty_buffer_request_room);
>>>>    *    Queue a series of bytes to the tty buffering. All the char=
acters
>>>>    *    passed are marked as without error. Returns the number add=
ed.
>>>>    *
>>>> - *    Locking: Called functions may take tty->buf.lock
>>>> + *    Locking: We take tty->buf.lock
>>>>    */
>>>>
>>>>   int tty_insert_flip_string(struct tty_struct *tty, const unsigne=
d=20
>>>> char *chars,
>>>>                   size_t size)
>>>>   {
>>>>       int copied =3D 0;
>>>> +    unsigned long flags;
>>>> +
>>>> +    spin_lock_irqsave(&tty->buf.lock, flags);
>>>>       do {
>>>> -        int space =3D tty_buffer_request_room(tty, size - copied)=
;
>>>> +        int space =3D locked_tty_buffer_request_room(tty, size - =
copied);
>>>>           struct tty_buffer *tb =3D tty->buf.tail;
>>>> +
>>>>           /* If there is no space then tb may be NULL */
>>>>           if (unlikely(space =3D=3D 0))
>>>>               break;
>>>> @@ -260,6 +272,7 @@ int tty_insert_flip_string(struct tty_struct =20
>>>> *tty, const unsigned char *chars,
>>>>           /* There is a small chance that we need to split the dat=
a over
>>>>              several buffers. If this is the case we must loop */
>>>>       } while (unlikely(size>  copied));
>>>> +    spin_unlock_irqrestore(&tty->buf.lock, flags);
>>>>       return copied;
>>>>   }
>>>>   EXPORT_SYMBOL(tty_insert_flip_string);
>>>> @@ -282,8 +295,11 @@ int tty_insert_flip_string_flags(struct =20
>>>> tty_struct *tty,
>>>>           const unsigned char *chars, const char *flags, size_t si=
ze)
>>>>   {
>>>>       int copied =3D 0;
>>>> +    unsigned long irqflags;
>>>> +
>>>> +    spin_lock_irqsave(&tty->buf.lock, irqflags);
>>>>       do {
>>>> -        int space =3D tty_buffer_request_room(tty, size - copied)=
;
>>>> +        int space =3D locked_tty_buffer_request_room(tty, size - =
copied);
>>>>           struct tty_buffer *tb =3D tty->buf.tail;
>>>>           /* If there is no space then tb may be NULL */
>>>>           if (unlikely(space =3D=3D 0))
>>>> @@ -297,6 +313,7 @@ int tty_insert_flip_string_flags(struct =20
>>>> tty_struct *tty,
>>>>           /* There is a small chance that we need to split the dat=
a over
>>>>              several buffers. If this is the case we must loop */
>>>>       } while (unlikely(size>  copied));
>>>> +    spin_unlock_irqrestore(&tty->buf.lock, irqflags);
>>>>       return copied;
>>>>   }
>>>>   EXPORT_SYMBOL(tty_insert_flip_string_flags);
>>>>
>>>>
>>> I can throw your patch in over here for the heck of it.
>>> If there's somebody who's really hitting this bug
>>> then the results would be better  if this is the area that causing
>>> this bug.(from here the only issue I'm seeing is spinning
>>> history commands in the terminal  from time to time,
>>> nothing of any unusable keys like others are reporting).
>>
>> I tested it on top of 2.6.31.4 (after putting back =20
>> e043e42bdb66885b3ac10d27a01ccb9972e2b0a3), and the keyboard is fine =
=20
>> after almost 3h. Before that, the problems would appear in less than=
=20
>> 1h. Maybe I spoke too soon, but...
>>
>> Boyan, does it work for you ?
>>
>
> I've just tested it on top of 2.6.31.3 and it doesn't work. As I've
> mentioned in previous email - I usually trigger the problem easily
> watching pictures with gthumb - this is combination of cpu intensive
> operations and keyboard usage and if it doesn't work it takes me no m=
ore
> than a minute to trigger the problem.
>
> I thought the problem may be more easily triggered because of the new=
er
> (1.6.4 RC) in fedora which is slower for my ati radeon cards, but now
> I'm with older version 1.6.1.901 which is fine in speed - so it doesn=
't
> matter what is the version of X.


Can you reporoduce it in console while loading the CPU?

--=20
Dmitry

From: "=?ISO-8859-15?Q?Fr=E9d=E9ric_L=2E_W=2E_Meunier?=" 
	<fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 11:33:29 -0300 (BRST)
Message-ID: <alpine.LNX.2.01.0910131129350.4980@dyndns.pervalidus.net>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera> <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com> <87ljjgfcbu.fsf@spindle.srvr.nix> <alpine.LFD.2.01.0910121703390.3438@localhost.localdomain> <alpine.LFD.2.01.0910122004200.3438@localhost.localdomain>
 <4AD3F769.5080405@gmail.com> <alpine.LNX.2.01.0910130405200.9297@dyndns.pervalidus.net> <4AD437F9.9020708@yahoo.co.uk>
Mime-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1955658294-1255444417=:4980"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :in-reply-to:message-id:references:user-agent:x-archive:mime-version
         :content-type;
        bh=o6lD06iRdCyX2x8h7WnknlHLa9d1MthnA6YQGwusqvk=;
        b=J8JSIdyzYOgCx7ZkLPUoj0xmoN4jYlpYVO1wEp6VjSepoqaVmwRlz3apc8cXsweFt9
         4CuUhcgo2qZeaTZOAWmwZxC3Tc3GrVacArorvS1+OXaPCPlHnSoGks/qoQuWXhBe2XD2
         XSZitXp0AUi6QLzDdmI5GRlqEYNZxGhW7f6Wk=
In-Reply-To: <4AD437F9.9020708-/E1597aS9LT10XsdtD+oqA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>
Cc: =?ISO-8859-15?Q?Fr=E9d=E9ric_L=2E_W=2E_Meunier?= <fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Nix <nix-dKoSMcxRz+Te9xe1eoZjHA@public.gmane.org>, Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, Paul Fulghum <paulkf-CZzk0lvu1V9l57MIdRCFDg@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1955658294-1255444417=:4980
Content-Type: TEXT/PLAIN; charset="iso-8859-1"; format="flowed"
Content-Transfer-Encoding: quoted-printable

On Tue, 13 Oct 2009, Boyan wrote:

> Fr=E9d=E9ric L. W. Meunier wrote:
>> On Mon, 12 Oct 2009, Justin P. Mattock wrote:
>>=20
>>> Linus Torvalds wrote:
>>>> [ Alan, Paulkf - the tty buffering and locking is originally your code,
>>>>    although from about three years ago, when it used to be in tty_io.c=
..
>>>>    Any comment? ]
>>>>=20
>>>> On Mon, 12 Oct 2009, Linus Torvalds wrote:
>>>>=20
>>>>> Alan, Ogawa-san, do either of you see some problem in tty_buffer.c,
>>>>> perhaps?
>>>>>=20
>>>>=20
>>>> Hmm. I see one, at least.
>>>>=20
>>>> The "tty_insert_flip_string()" locking seems totally bogus.
>>>>=20
>>>> It does that "tty_buffer_request_room()" call and subsequent copying w=
ith
>>>> no locking at all - sure, the tty_buffer_request_room() function itself
>>>> locks the buffers, but then unlocks it when returning, so when we=20
>>>> actually
>>>> do the memcpy() etc, we can race with anybody.
>>>>=20
>>>> I don't really see who would care, but it does look totally broken.
>>>>=20
>>>> I dunno, this patch seems to make sense to me. Am I missing something?
>>>>=20
>>>> [ NOTE! The patch is totally untested. It compiled for me on x86-64, a=
nd
>>>>    apart from that I'm just going to say that it looks obvious, and th=
e=20
>>>> old
>>>>    code looks obviously buggy. Also, any remaining users of
>>>>
>>>>     tty_prepare_flip_string
>>>>     tty_prepare_flip_string_flags
>>>>
>>>>    are still fundamentally broken and buggy, while users of
>>>>
>>>>     tty_buffer_request_room
>>>>
>>>>    are pretty damn odd and suspect (but a lot of them seem to be just
>>>>    pointless: they then call tty_insert_flip_string(), which means tha=
t=20
>>>> the
>>>>    tty_buffer_request_room() call was totally redundant ]
>>>>=20
>>>> Comments? Does this work? Does it make any difference? It seems fairly
>>>> unlikely, but it's the only obvious problem I've seen in the tty=20
>>>> buffering
>>>> code so far.
>>>>=20
>>>> And that code is literally 3 years old, and it seems unlikely that a
>>>> regular _keyboard_ buffer would be able to hit the (rather small) race
>>>> condition. But other serialization may have hidden it, and timing
>>>> differences could certainly have caused it to trigger much more easily.
>>>>
>>>>             Linus
>>>>=20
>>>> ---
>>>>   drivers/char/tty_buffer.c |   33 +++++++++++++++++++++++++--------
>>>>   1 files changed, 25 insertions(+), 8 deletions(-)
>>>>=20
>>>> diff --git a/drivers/char/tty_buffer.c b/drivers/char/tty_buffer.c
>>>> index 3108991..25ab538 100644
>>>> --- a/drivers/char/tty_buffer.c
>>>> +++ b/drivers/char/tty_buffer.c
>>>> @@ -196,13 +196,10 @@ static struct tty_buffer *tty_buffer_find(struct=
=20
>>>> tty_struct *tty, size_t size)
>>>>    *
>>>>    *    Locking: Takes tty->buf.lock
>>>>    */
>>>> -int tty_buffer_request_room(struct tty_struct *tty, size_t size)
>>>> +static int locked_tty_buffer_request_room(struct tty_struct *tty, siz=
e_t=20
>>>> size)
>>>>   {
>>>>       struct tty_buffer *b, *n;
>>>>       int left;
>>>> -    unsigned long flags;
>>>> -
>>>> -    spin_lock_irqsave(&tty->buf.lock, flags);
>>>>
>>>>       /* OPTIMISATION: We could keep a per tty "zero" sized buffer to
>>>>          remove this conditional if its worth it. This would be invisi=
ble
>>>> @@ -225,9 +222,20 @@ int tty_buffer_request_room(struct tty_struct *tt=
y,=20
>>>> size_t size)
>>>>               size =3D left;
>>>>       }
>>>>=20
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
>>>>    *    Queue a series of bytes to the tty buffering. All the characte=
rs
>>>>    *    passed are marked as without error. Returns the number added.
>>>>    *
>>>> - *    Locking: Called functions may take tty->buf.lock
>>>> + *    Locking: We take tty->buf.lock
>>>>    */
>>>>
>>>>   int tty_insert_flip_string(struct tty_struct *tty, const unsigned ch=
ar=20
>>>> *chars,
>>>>                   size_t size)
>>>>   {
>>>>       int copied =3D 0;
>>>> +    unsigned long flags;
>>>> +
>>>> +    spin_lock_irqsave(&tty->buf.lock, flags);
>>>>       do {
>>>> -        int space =3D tty_buffer_request_room(tty, size - copied);
>>>> +        int space =3D locked_tty_buffer_request_room(tty, size - copi=
ed);
>>>>           struct tty_buffer *tb =3D tty->buf.tail;
>>>> +
>>>>           /* If there is no space then tb may be NULL */
>>>>           if (unlikely(space =3D=3D 0))
>>>>               break;
>>>> @@ -260,6 +272,7 @@ int tty_insert_flip_string(struct tty_struct *tty,=
=20
>>>> const unsigned char *chars,
>>>>           /* There is a small chance that we need to split the data ov=
er
>>>>              several buffers. If this is the case we must loop */
>>>>       } while (unlikely(size>  copied));
>>>> +    spin_unlock_irqrestore(&tty->buf.lock, flags);
>>>>       return copied;
>>>>   }
>>>>   EXPORT_SYMBOL(tty_insert_flip_string);
>>>> @@ -282,8 +295,11 @@ int tty_insert_flip_string_flags(struct tty_struc=
t=20
>>>> *tty,
>>>>           const unsigned char *chars, const char *flags, size_t size)
>>>>   {
>>>>       int copied =3D 0;
>>>> +    unsigned long irqflags;
>>>> +
>>>> +    spin_lock_irqsave(&tty->buf.lock, irqflags);
>>>>       do {
>>>> -        int space =3D tty_buffer_request_room(tty, size - copied);
>>>> +        int space =3D locked_tty_buffer_request_room(tty, size - copi=
ed);
>>>>           struct tty_buffer *tb =3D tty->buf.tail;
>>>>           /* If there is no space then tb may be NULL */
>>>>           if (unlikely(space =3D=3D 0))
>>>> @@ -297,6 +313,7 @@ int tty_insert_flip_string_flags(struct tty_struct=
=20
>>>> *tty,
>>>>           /* There is a small chance that we need to split the data ov=
er
>>>>              several buffers. If this is the case we must loop */
>>>>       } while (unlikely(size>  copied));
>>>> +    spin_unlock_irqrestore(&tty->buf.lock, irqflags);
>>>>       return copied;
>>>>   }
>>>>   EXPORT_SYMBOL(tty_insert_flip_string_flags);
>>>>=20
>>>>=20
>>> I can throw your patch in over here for the heck of it.
>>> If there's somebody who's really hitting this bug
>>> then the results would be better  if this is the area that causing
>>> this bug.(from here the only issue I'm seeing is spinning
>>> history commands in the terminal  from time to time,
>>> nothing of any unusable keys like others are reporting).
>>=20
>> I tested it on top of 2.6.31.4 (after putting back=20
>> e043e42bdb66885b3ac10d27a01ccb9972e2b0a3), and the keyboard is fine afte=
r=20
>> almost 3h. Before that, the problems would appear in less than 1h. Maybe=
 I=20
>> spoke too soon, but...
>>=20
>> Boyan, does it work for you ?
>>=20
>
> I've just tested it on top of 2.6.31.3 and it doesn't work. As I've
> mentioned in previous email - I usually trigger the problem easily
> watching pictures with gthumb - this is combination of cpu intensive
> operations and keyboard usage and if it doesn't work it takes me no more
> than a minute to trigger the problem.
>
> I thought the problem may be more easily triggered because of the newer
> (1.6.4 RC) in fedora which is slower for my ati radeon cards, but now
> I'm with older version 1.6.1.901 which is fine in speed - so it doesn't
> matter what is the version of X.

It happened again here. I was running screen inside a terminal=20
under X, moved to the window running mc, used the up arrow key,=20
and it locked the keyboard with that key pressed.
--8323328-1955658294-1255444417=:4980--

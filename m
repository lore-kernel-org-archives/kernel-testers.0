From: david-gFPdbfVZQbY@public.gmane.org
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 18:20:37 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0910131819260.22169@asgard.lang.hm>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera> <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com> <87ljjgfcbu.fsf@spindle.srvr.nix> <alpine.LFD.2.01.0910121703390.3438@localhost.localdomain> <alpine.LFD.2.01.0910122004200.3438@localhost.localdomain>
 <4AD3F769.5080405@gmail.com> <alpine.LNX.2.01.0910130405200.9297@dyndns.pervalidus.net> <4AD437F9.9020708@yahoo.co.uk> <alpine.LFD.2.01.0910130745550.3438@localhost.localdomain> <4AD4DE4C.4010402@yahoo.co.uk> <alpine.LFD.2.01.0910131317360.26777@localhost.localdomain>
 <alpine.LFD.2.01.0910131413240.3596@localhost.localdomain> <alpine.LNX.2.01.0910132153221.5212@dyndns.pervalidus.net> <alpine.LFD.2.01.0910131806310.6146@localhost.localdomain>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.01.0910131806310.6146-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: =?ISO-8859-15?Q?Fr=E9d=E9ric_L=2E_W=2E_Meunier?= <fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Nix <nix-dKoSMcxRz+Te9xe1eoZjHA@public.gmane.org>, Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, Paul Fulghum <paulkf-CZzk0lvu1V9l57MIdRCFDg@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>

On Tue, 13 Oct 2009, Linus Torvalds wrote:

> On Tue, 13 Oct 2009, Fr?d?ric L. W. Meunier wrote:
>>
>> For now (more than 3h), it isn't doing any harm. And no keyboard lockups.
>
> I think it was Boyan who said he could trigger it "easily", and everybody
> else had a hard time to reproduce the problem, so I'll consider your "good
> for 3h" to not really be a confirmation either way. But at least it's not
> totally broken.
>
>> BTW, the old version of the patch was funny. It booted, but at the login
>> prompt I could only enter the first letter.
>
> Yeah, each time somebody read from a tty, the reading would also get rid
> of all the buffers, but would leave buf.tail set to the last one (that had
> been freed).
>
> Which then resulted in all subsequent IO going to that tail buffer, but
> nobody ever seeing it, because 'head' was NULL, and would stay that way as
> long as 'tail' existed (which it would until the tty was flushed, which it
> would never be).
>
> So you'd only ever see the first read (which could obviously be more than
> one character, but you'd have to type REALLY FAST to get there ;^)

Interesting, I had a hadful of times in the last several months where I 
ran into something like this, but switching virtual terminals cleared it 
up.

David Lang

From: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 18:12:12 -0700 (PDT)
Message-ID: <alpine.LFD.2.01.0910131806310.6146@localhost.localdomain>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera> <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com> <87ljjgfcbu.fsf@spindle.srvr.nix> <alpine.LFD.2.01.0910121703390.3438@localhost.localdomain> <alpine.LFD.2.01.0910122004200.3438@localhost.localdomain>
 <4AD3F769.5080405@gmail.com> <alpine.LNX.2.01.0910130405200.9297@dyndns.pervalidus.net> <4AD437F9.9020708@yahoo.co.uk> <alpine.LFD.2.01.0910130745550.3438@localhost.localdomain> <4AD4DE4C.4010402@yahoo.co.uk> <alpine.LFD.2.01.0910131317360.26777@localhost.localdomain>
 <alpine.LFD.2.01.0910131413240.3596@localhost.localdomain> <alpine.LNX.2.01.0910132153221.5212@dyndns.pervalidus.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1760706AbZJNBNf@vger.kernel.org>
In-Reply-To: <alpine.LNX.2.01.0910132153221.5212@dyndns.pervalidus.net>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
To: =?ISO-8859-15?Q?Fr=E9d=E9ric_L=2E_W=2E_Meunier?= <fredlwm@gmail.com>
Cc: Boyan <btanastasov@yahoo.co.uk>, "Justin P. Mattock" <justinmattock@gmail.com>, Nix <nix@esperi.org.uk>, Alan Cox <alan@lxorguk.ukuu.org.uk>, Paul Fulghum <paulkf@microgate.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Ed Tomlinson <edt@aei.ca>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>



On Tue, 13 Oct 2009, Fr=E9d=E9ric L. W. Meunier wrote:
>=20
> For now (more than 3h), it isn't doing any harm. And no keyboard lock=
ups.

I think it was Boyan who said he could trigger it "easily", and everybo=
dy=20
else had a hard time to reproduce the problem, so I'll consider your "g=
ood=20
for 3h" to not really be a confirmation either way. But at least it's n=
ot=20
totally broken.

> BTW, the old version of the patch was funny. It booted, but at the lo=
gin
> prompt I could only enter the first letter.

Yeah, each time somebody read from a tty, the reading would also get ri=
d=20
of all the buffers, but would leave buf.tail set to the last one (that =
had=20
been freed).=20

Which then resulted in all subsequent IO going to that tail buffer, but=
=20
nobody ever seeing it, because 'head' was NULL, and would stay that way=
 as=20
long as 'tail' existed (which it would until the tty was flushed, which=
 it=20
would never be).

So you'd only ever see the first read (which could obviously be more th=
an=20
one character, but you'd have to type REALLY FAST to get there ;^)

			Linus

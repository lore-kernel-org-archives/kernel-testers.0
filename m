From: Richard Atterer <richard-2/EmM+jwkBzwc4Swprx3xw@public.gmane.org>
Subject: Re: [Bug #13371] s2disk hangs with kernel 2.6.29 and later, SATA,
	Gigabyte EG45M-DS2H - culprit found
Date: Tue, 26 May 2009 01:03:00 +0200
Message-ID: <20090525230259.GA5098@vilya>
References: <GtY7d2eWpoK.A.ioC.MQcGKB@chimera> <200905251448.40907.bzolnier@gmail.com> <20090525134522.GA7805@arbonne.lan> <200905251630.21781.bzolnier@gmail.com> <20090525171305.GA5855@arbonne.lan>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090525171305.GA5855-dsTKODJrvkThXIiyNabO3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Thadeu Lima de Souza Cascardo <cascardo-DmMZpsCg3uxeGPcbtGPokg@public.gmane.org>, Auke Kok <auke-jan.h.kok-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

Hello,

"Jerry" contacted me off-list with information about the root of the=20
problem - many thanks indeed!!!

It turns out that the e100 driver is responsible. (The motherboard actu=
ally=20
has a r8169 chip, but I added an old Intel PCI ethernet card I own.)

By rmmoding e100 before s2disk, the problem goes away. Jerry mentions t=
hat=20
he once saw a message about e100 failing to load its microcode - I neve=
r=20
saw such a message.

The most recent e100 commit ac7c992 by Thadeu Lima de Souza Cascardo (A=
pr=20
28) made some changes to the behaviour in the case of shutdown vs. susp=
end,=20
maybe the problem is there? (But note that during bisecting, I tested=20
kernels older than that commit, and not all of them worked.) Before tha=
t,=20
f902283 (Mar 3 2008) mentions suspend in the log message.

Cheers,

  Richard

--=20
  __   _
  |_) /|  Richard Atterer     |  GnuPG key: 888354F7
  | \/=AF|  http://atterer.net  |  08A9 7B7D 3D13 3EF2 3D25  D157 79E6 =
=466DC 8883 54F7
  =AF '` =AF

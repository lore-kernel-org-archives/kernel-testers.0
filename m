From: Richard Atterer <richard-2/EmM+jwkBzwc4Swprx3xw@public.gmane.org>
Subject: Re: [Bug #13371] s2disk hangs with e100, kernel 2.6.29 and later
Date: Sun, 31 May 2009 04:19:12 +0200
Message-ID: <20090531021912.GA11361@arbonne.lan>
References: <THxQaUP0K2D.A.QkF.UVbIKB@chimera> <PkPeJtNB3KO.A.i1F.bVbIKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <PkPeJtNB3KO.A.i1F.bVbIKB@chimera> <20090525230259.GA5098@vilya>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Kirsher, Jeffrey T" <jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

This bug is still present.

On Sat, May 30, 2009 at 09:55:39PM +0200, Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D13371
> Subject		: s2disk hangs with kernel 2.6.29 and later, SATA, Gigabyte =
EG45M-DS2H

Better: s2disk hangs with e100, kernel 2.6.29 and later

> Submitter	: Richard Atterer <richard-2/EmM+jwkBzwc4Swprx3xw@public.gmane.org>
> Date		: 2009-05-16 22:51 (15 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D124251446428166&w=
=3D4
> 		  http://lkml.org/lkml/2009/5/25/253

Latest information: The e100 driver is responsible for the problem.=20
http://lkml.org/lkml/2009/5/25/440

Maybe handled by: Jeffrey Kirsher <jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Rafae=
l J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
:)

Cheers,

  Richard

--=20
  __   _
  |_) /|  Richard Atterer
  | \/=AF|  http://atterer.net
  =AF '` =AF

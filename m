From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15589] 2.6.34-rc1: Badness at fs/proc/generic.c:316
Date: Tue, 22 Jun 2010 00:43:46 +0200
Message-ID: <201006220043.46459.rjw@sisk.pl>
References: <g77CuMUl7QI.A.qMH.4ZpHMB@chimera> <rHrHQMIU4rI.A.5FD.vepHMB@chimera> <201006220019.34874.s.L-H@gmx.de>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201006220019.34874.s.L-H-Mmb7MZpHnFY@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="iso-8859-1"
To: Stefan Lippers-Hollmann <s.L-H-Mmb7MZpHnFY@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tuesday, June 22, 2010, Stefan Lippers-Hollmann wrote:
> Hi
>=20
> On Tuesday 22 June 2010, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.33 and 2.6.34.
> >=20
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.33 and 2.6.34.  Please verify if it still sh=
ould
> > be listed and let the tracking team know (either way).
> >=20
> >=20
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D15589
> > Subject		: 2.6.34-rc1: Badness at fs/proc/generic.c:316
> > Submitter	: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>
> > Date		: 2010-03-13 23:53 (100 days old)
> > Message-ID	: < <AANLkTikNcCtUn9SQwKu2b3IE6NiAwAhciHsm1HVH4EJh@mail.=
gmail.com>>
> > References	: http://marc.info/?l=3Dlinux-kernel&m=3D126852442903680=
&w=3D2
> > Handled-By	: Michael Ellerman <michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org>
> > 		  Jind=F8ich Makovi=E8ka <makovick-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Patch		: http://patchwork.ozlabs.org/patch/52978/
> > 		  http://lkml.indiana.edu/hypermail/linux/kernel/1006.0/00137.htm=
l
>=20
> At least the effects on b2c2-flexcop-pci are still valid, in linux-2.=
6
> HEAD and linux-next (next-20100621).

Thanks for the update.

Rafael

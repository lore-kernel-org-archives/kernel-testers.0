From: "Stefan Lippers-Hollmann" <s.L-H-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: [Bug #15589] 2.6.34-rc1: Badness at fs/proc/generic.c:316
Date: Sun, 13 Jun 2010 17:22:41 +0200
Message-ID: <201006131722.44062.s.L-H@gmx.de>
References: <g77CuMUl7QI.A.5wF.V5OFMB@chimera> <YPGdyfWGvNK.A.C8B.d9OFMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <YPGdyfWGvNK.A.C8B.d9OFMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>, Michael Ellerman <michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, mchehab-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org

Hi

On Sunday 13 June 2010, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.33 and 2.6.34.
>=20
> The following bug entry is on the current list of known regressions
> introduced between 2.6.33 and 2.6.34.  Please verify if it still shou=
ld
> be listed and let the tracking team know (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D15589
> Subject		: 2.6.34-rc1: Badness at fs/proc/generic.c:316
> Submitter	: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>
> Date		: 2010-03-13 23:53 (93 days old)
> Message-ID	: <<alpine.DEB.2.01.1003131544340.5493-uKsf7x9sgtqQ/Pez2Lbyp4QuADTiUCJX@public.gmane.org>=
>
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D126852442903680&w=
=3D2
> Handled-By	: Michael Ellerman <michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org>
> Patch		: http://patchwork.ozlabs.org/patch/52978/

Still existing in 2.6.34 and 2.6.35 HEAD, however a patch fixing the is=
sue=20
for b2c2-flexcop/ flexcop-pci has been posted last week:
	From:		Jind=C5=99ich Makovi=C4=8Dka <makovick-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
	Subject:		[PATCH] DVB flexcop-pci: sanitize driver name to avoid warni=
ng on load
	Date:		Mon, 7 Jun 2010 14:51:30 +0200
	Message-ID:	<AANLkTikNcCtUn9SQwKu2b3IE6NiAwAhciHsm1HVH4EJh-JsoAwUIsXotQFR93xxRIaA@public.gmane.org=
com>
	URL:			http://lkml.indiana.edu/hypermail/linux/kernel/1006.0/00137.htm=
l

Regards
	Stefan Lippers-Hollmann

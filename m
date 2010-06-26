From: Christian Kujau <lists@nerdbynature.de>
Subject: Re: [Bug #15589] 2.6.34-rc1: Badness at fs/proc/generic.c:316
Date: Fri, 25 Jun 2010 18:04:51 -0700 (PDT)
Message-ID: <alpine.DEB.2.01.1006251801350.3964@bogon.housecafe.de>
References: <g77CuMUl7QI.A.qMH.4ZpHMB@chimera> <rHrHQMIU4rI.A.5FD.vepHMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <rHrHQMIU4rI.A.5FD.vepHMB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="utf-8"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, =?UTF-8?Q?Jind=C5=99ich_Makovi=C4=8Dka?= <makovick@gmail.com>, Michael Ellerman <michael@ellerman.id.au>, Grant Likely <grant.likely@secretlab.ca>, Alexey Dobriyan <adobriyan@gmail.com>

Sorry for the late reply:

On Mon, 21 Jun 2010 at 00:32, Rafael J. Wysocki wrote:
> The following bug entry is on the current list of known regressions
> introduced between 2.6.33 and 2.6.34.  Please verify if it still shou=
ld
> be listed and let the tracking team know (either way).

Yes, the bug is still present in 2.6.34 and .35-rc3, but a tested patch=
 is=20
available, hopefully to be included in 2.6.35.

Thanks,
Christian.

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D15589
> Subject		: 2.6.34-rc1: Badness at fs/proc/generic.c:316
> Submitter	: Christian Kujau <lists@nerdbynature.de>
> Date		: 2010-03-13 23:53 (100 days old)
> Message-ID	: < <AANLkTikNcCtUn9SQwKu2b3IE6NiAwAhciHsm1HVH4EJh@mail.gm=
ail.com>>
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D126852442903680&w=
=3D2
> Handled-By	: Michael Ellerman <michael@ellerman.id.au>
> 		  Jind=C5=99ich Makovi=C4=8Dka <makovick@gmail.com>
> Patch		: http://patchwork.ozlabs.org/patch/52978/
> 		  http://lkml.indiana.edu/hypermail/linux/kernel/1006.0/00137.html
--=20
BOFH excuse #302:

microelectronic Riemannian curved-space fault in write-only file system

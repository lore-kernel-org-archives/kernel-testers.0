From: OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Subject: Re: [Bug #14889] System wakeup by time not working anymore
Date: Wed, 30 Dec 2009 02:36:56 +0900
Message-ID: <87k4w5u1fr.fsf@devron.myhome.or.jp>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
	<srmJ8vMxKPH.A.BaC.ZwhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1751392AbZL2RhI@vger.kernel.org>
In-Reply-To: <srmJ8vMxKPH.A.BaC.ZwhOLB@chimera> (Rafael J. Wysocki's message
	of "Tue, 29 Dec 2009 16:28:52 +0100 (CET)")
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Bjorn Helgaas <bjorn.helgaas@hp.com>, =?iso-8859-1?Q?David_H=E4rdeman?= <david@hardeman.nu>, Len Brown <lenb@kernel.org>, =?iso-8859-1?Q?Malte_Schr=F6der?= <maltesch@gmx.de>

"Rafael J. Wysocki" <rjw@sisk.pl> writes:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still shou=
ld
> be listed and let me know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14889
> Subject		: System wakeup by time not working anymore
> Submitter	: Malte Schr=F6der <maltesch@gmx.de>
> Date		: 2009-12-03 18:06 (27 days old)
> First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torvald=
s/linux-2.6.git;a=3Dcommit;h=3Dabd6633c67925f90775bb74755f9c547e30f1f20
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D125986362631900&w=
=3D4

Specified commit would break the pnp driver which is using
driver->shutdown.

Could you test this (untested) patch?
--=20
OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>


[PATCH] rtc_cmos: convert shutdown to new pnp_driver->shutdown

commit abd6633c67925f90775bb74755f9c547e30f1f20 adds shutdown method
to bus driver blindly. With it, driver->shutdown is invalid anymore.

Use pnp_driver->shutdown instead.

Signed-off-by: OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
---

 drivers/rtc/rtc-cmos.c |    9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff -puN drivers/rtc/rtc-cmos.c~rtc-cmos-shutdown-fix drivers/rtc/rtc-=
cmos.c
--- linux-2.6/drivers/rtc/rtc-cmos.c~rtc-cmos-shutdown-fix	2009-12-30 0=
1:25:10.000000000 +0900
+++ linux-2.6-hirofumi/drivers/rtc/rtc-cmos.c	2009-12-30 01:27:36.00000=
0000 +0900
@@ -1096,9 +1096,9 @@ static int cmos_pnp_resume(struct pnp_de
 #define	cmos_pnp_resume		NULL
 #endif
=20
-static void cmos_pnp_shutdown(struct device *pdev)
+static void cmos_pnp_shutdown(struct pnp_dev *pnp)
 {
-	if (system_state =3D=3D SYSTEM_POWER_OFF && !cmos_poweroff(pdev))
+	if (system_state =3D=3D SYSTEM_POWER_OFF && !cmos_poweroff(&pnp->dev)=
)
 		return;
=20
 	cmos_do_shutdown();
@@ -1117,15 +1117,12 @@ static struct pnp_driver cmos_pnp_driver
 	.id_table	=3D rtc_ids,
 	.probe		=3D cmos_pnp_probe,
 	.remove		=3D __exit_p(cmos_pnp_remove),
+	.shutdown	=3D cmos_pnp_shutdown,
=20
 	/* flag ensures resume() gets called, and stops syslog spam */
 	.flags		=3D PNP_DRIVER_RES_DO_NOT_CHANGE,
 	.suspend	=3D cmos_pnp_suspend,
 	.resume		=3D cmos_pnp_resume,
-	.driver		=3D {
-		.name	  =3D (char *)driver_name,
-		.shutdown =3D cmos_pnp_shutdown,
-	}
 };
=20
 #endif	/* CONFIG_PNP */
_

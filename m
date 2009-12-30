From: OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>
Subject: Re: [Bug #14889] System wakeup by time not working anymore
Date: Wed, 30 Dec 2009 18:18:14 +0900
Message-ID: <87pr5wx1k9.fsf@devron.myhome.or.jp>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
	<srmJ8vMxKPH.A.BaC.ZwhOLB@chimera>
	<87k4w5u1fr.fsf@devron.myhome.or.jp>
	<20091230095607.7229baf4@highlander.home.lan>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091230095607.7229baf4-BhAe4JdliszF9s28bWSHhuFciLI1ps7f@public.gmane.org> ("Malte
 =?iso-8859-1?Q?Schr=F6der=22's?=
	message of "Wed, 30 Dec 2009 09:56:07 +0100")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Malte =?iso-8859-1?Q?Schr=F6der?= <maltesch-Mmb7MZpHnFY@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>, David =?iso-8859-1?Q?H=E4rdeman?= <david-0WFrdVpeebksCylrc8G9yg@public.gmane.org>, Len Brown <lenb-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

Malte Schr=F6der <maltesch-Mmb7MZpHnFY@public.gmane.org> writes:

> On Wed, 30 Dec 2009 02:36:56 +0900
> OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org> wrote:
>
>> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:
>>=20
>> > This message has been generated automatically as a part of a repor=
t
>> > of regressions introduced between 2.6.31 and 2.6.32.
>> >
>> > The following bug entry is on the current list of known regression=
s
>> > introduced between 2.6.31 and 2.6.32.  Please verify if it still s=
hould
>> > be listed and let me know (either way).
>> >
>> >
>> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14889
>> > Subject		: System wakeup by time not working anymore
>> > Submitter	: Malte Schr=F6der <maltesch-Mmb7MZpHnFY@public.gmane.org>
>> > Date		: 2009-12-03 18:06 (27 days old)
>> > First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torv=
alds/linux-2.6.git;a=3Dcommit;h=3Dabd6633c67925f90775bb74755f9c547e30f1=
f20
>> > References	: http://marc.info/?l=3Dlinux-kernel&m=3D12598636263190=
0&w=3D4
>>=20
>> Specified commit would break the pnp driver which is using
>> driver->shutdown.
>>=20
>> Could you test this (untested) patch?
>
> I tried to reproduce the problem, it looks like it is working now :)

Thanks for testing.

Andrew, could you handle this pnp breakage fix?
--=20
OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>


[PATCH] rtc_cmos: convert shutdown to new pnp_driver->shutdown

commit abd6633c67925f90775bb74755f9c547e30f1f20 adds shutdown method
to bus driver blindly. With it, driver->shutdown is invalid anymore.

Use pnp_driver->shutdown instead.

Signed-off-by: OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>
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

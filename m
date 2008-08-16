From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: 2.6.27-rc3-git3: Reported regressions from 2.6.26
Date: Sat, 16 Aug 2008 21:00:39 +0200 (CEST)
Message-ID: <DLWXHEp37wB.A.duD.yZzpIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

This message contains a list of some regressions from 2.6.26, for which=
 there
are no fixes in the mainline I know of.  If any of them have been fixed=
 already,
please let me know.

If you know of any other unresolved regressions from 2.6.26, please let=
 me know
either and I'll add them to the list.  Also, please let me know if any =
of the
entries below are invalid.

Each entry from the list will be sent additionally in an automatic repl=
y to
this message with CCs to the people involved in reporting and handling =
the
issue.


Listed regressions statistics:

  Date          Total  Pending  Unresolved
  ----------------------------------------
  2008-08-16      103       47          37
  2008-08-10       80       52          31
  2008-08-02       47       31          20


Unresolved regressions
----------------------

Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11356
Subject		: Linux 2.6.27-rc3 - build failure: undefined reference to `.l=
ockdep_count_forward_deps'
Submitter	: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Date		: 2008-08-16 19:11 (1 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121891396320127&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11355
Subject		: Regression in 2.6.27-rc2 when cross-building the kernel
Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Date		: 2008-08-16 2:38 (1 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121885432118368&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11354
Subject		: AMD Elan regression with 2.6.27-rc3
Submitter	: Sean Young <sean-hENCXIMQXOg@public.gmane.org>
Date		: 2008-08-15 18:37 (2 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121882578430056&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11344
Subject		: lockdep link failed
Submitter	: Ming Lei <tom.leiming-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-14 9:58 (3 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121870792715847&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11343
Subject		: SATA Cold Boot Problems with 2.6.27-rc[23] on nVidia 680i
Submitter	: Manny Maxwell <mannymax-7UBucS1kxs3k1uMJSBkQmQ@public.gmane.org>
Date		: 2008-08-14 4:16 (3 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121868782917600&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11341
Subject		: 2.6.27-rc1 - ext4 e2fsck false prompting for fixing i_size o=
f Inode
Submitter	: Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Date		: 2008-08-13 6:56 (4 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121861058720051&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11340
Subject		: LTP overnight run resulted in unusable box
Submitter	: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-13 9:24 (4 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121861951902949&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11339
Subject		: Only one of my cpus seems to powered down by cpufreq
Submitter	: Torsten Kaiser <just.for.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Date		: 2008-08-13 20:18 (4 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121865907511340&w=3D=
4
Handled-By	: Langsdorf, Mark <mark.langsdorf-5C7GfCeVMHo@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11338
Subject		: ia64 allmodconfig on current mainline
Submitter	: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Date		: 2008-08-12 22:06 (5 days old)
References	: http://marc.info/?l=3Dlinux-ia64&m=3D121857881314455&w=3D4
Handled-By	: Luck, Tony <tony.luck-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
		  Robin Holt <holt-sJ/iWh9BUns@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11337
Subject		: Warning in during hotplug on 2.6.27-rc2-git5
Submitter	: Mark Langsdorf <mark.langsdorf-5C7GfCeVMHo@public.gmane.org>
Date		: 2008-08-12 21:56 (5 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121857820413373&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11336
Subject		: 2.6.27-rc2:stall while mounting root fs
Submitter	: Torsten Kaiser <just.for.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Date		: 2008-08-12 12:37 (5 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121854484015909&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11335
Subject		: 2.6.27-rc2-git5 BUG: unable to handle kernel paging request
Submitter	: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-12 4:18 (5 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121851477201960&w=3D=
4
Handled-By	: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11334
Subject		: myri10ge: use ioremap_wc: compilation failure on ARM
Submitter	: Martin Michlmayr <tbm-R+vWnYXSFMfQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-10 11:25 (7 days old)
References	: http://marc.info/?l=3Dlinux-netdev&m=3D121836771727632&w=3D=
2
Handled-By	: Brice Goglin <brice-vV262kQ/Wyo@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11333
Subject		: Rewrite SSB DMA API breaks compilation on ARM
Submitter	: Martin Michlmayr <tbm-R+vWnYXSFMfQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-10 12:16 (7 days old)
References	: http://marc.info/?l=3Dlinux-wireless&m=3D121837082431460&w=
=3D2


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11313
Subject		: Plugging HDMI causes "unable to handle kernel paging request=
"
Submitter	: Rafa=C5=82 Mi=C5=82ecki <zajec5-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-12 14:30 (5 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11308
Subject		: tbench regression on each kernel release from 2.6.22 -&gt; 2=
=2E6.28
Submitter	: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Date		: 2008-08-11 18:36 (6 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121847986119495&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11296
Subject		: 2.6.27-rc2-git4: suspend and power off fails on Asus M3A32-M=
VP
Submitter	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
Date		: 2008-08-09 21:21 (8 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121831675111794&w=3D=
4
Handled-By	: Langsdorf, Mark <mark.langsdorf-5C7GfCeVMHo@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11293
Subject		: 2.6.27-rc2: suspend regression on EeePC
Submitter	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Date		: 2008-08-06 18:59 (11 days old)
References	: http://thread.gmane.org/gmane.linux.kernel.kernel-testers/=
701


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11282
Subject		: Please fix x86 defconfig regression
Submitter	: Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
Date		: 2008-08-07 20:46 (10 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121814188805666&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11279
Subject		: 2.6.27-rc0 Power Bugs with HP/Compaq Laptops
Submitter	: Matt Parnell <mparnell-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-07 14:57 (10 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121812108031685&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11278
Subject		: 2.6.27-rc2: Very odd top: '5124095h kthreadd' display
Submitter	: Grant Coady <grant_lkml-rGYn+TmxqGy6c6uEtOJ/EA@public.gmane.org>
Date		: 2008-08-07 7:03 (10 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121809267318795&w=3D=
4
Handled-By	: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11272
Subject		: BUG: parport_serial in 2.6.27-rc1 for NetMos Technology PCI =
9835
Submitter	: Jaswinder Singh <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-05 15:12 (12 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121794900319776&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11271
Subject		: BUG: fealnx in 2.6.27-rc1
Submitter	: Jaswinder Singh <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-05 14:58 (12 days old)
References	: http://marc.info/?l=3Dlinux-netdev&m=3D121794762016830&w=3D=
4
		  http://lkml.org/lkml/2008/8/10/98
Handled-By	: Francois Romieu <romieu-W8zweXLXuWQS+FvcfC7Uqw@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11264
Subject		: Invalid op opcode in kernel/workqueue
Submitter	: Jean-Luc Coulon <jean.luc.coulon-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-07 04:18 (10 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11263
Subject		: Re: 2.6.27-rc2: uvcvideo WARNING after suspend to ram
Submitter	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Date		: 2008-08-07 04:02 (10 days old)
References	: http://comments.gmane.org/gmane.linux.kernel/717552


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11245
Subject		: acpi error on 2.6.27-rc1+ (ACPI Error (dsobject-0501))
Submitter	: Marcin Slusarz <marcin.slusarz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-03 18:29 (14 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121778823123488&w=3D=
4
Handled-By	: Zhang Rui <rui.zhang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
		  Zhao Yakui <yakui.zhao-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11237
Subject		: corrupt PMD after resume
Submitter	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Date		: 2008-08-02 9:51 (15 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121767073424952&w=3D=
4
Handled-By	: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11230
Subject		: Kconfig no longer outputs a .config with freshly updated def=
configs
Submitter	: Josh Boyer <jwboyer-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Date		: 2008-08-02 16:03 (15 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121769306319391&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11224
Subject		: Only three cores found on quad-core machine.
Submitter	: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-01 18:15 (16 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121761475224719&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11220
Subject		: Heavy suspend and io problems in 2.6.27-rc1-00156-g94ad374
Submitter	: Nico Schottelius <nico-xuaVFQXs+5hIG4jRRZ66WA@public.gmane.org>
Date		: 2008-07-31 21:05 (17 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121753882422899&w=3D=
4
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11219
Subject		: KVM modules break emergency reboot
Submitter	: Zdenek Kabelac <zdenek.kabelac-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-01 20:25 (16 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121762241105336&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11215
Subject		: INFO: possible recursive locking detected ps2_command
Submitter	: Zdenek Kabelac <zdenek.kabelac-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-07-31 9:41 (17 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121749737011637&w=3D=
4
Handled-By	: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11210
Subject		: libata badness
Submitter	: Kumar Gala <galak-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Date		: 2008-07-31 18:53 (17 days old)
References	: http://marc.info/?l=3Dlinux-ide&m=3D121753059307310&w=3D4
Handled-By	: Ben Dooks <ben-linux-elnMNo+KYs3YtjvyW6yDsg@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11209
Subject		: 2.6.27-rc1 process time accounting
Submitter	: Lukas Hejtmanek <xhejtman-8qz54MUs51PtwjQa/ONI9g@public.gmane.org>
Date		: 2008-07-31 10:43 (17 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121750102917490&w=3D=
4
Handled-By	: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11207
Subject		: VolanoMark regression with 2.6.27-rc1
Submitter	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Date		: 2008-07-31 3:20 (17 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121747464114335&w=3D=
4
Handled-By	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
		  Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
		  Dhaval Giani <dhaval-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
		  Miao Xie <miaox-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11191
Subject		: 2.6.26-git8: spinlock lockup in c1e_idle()
Submitter	: Mikhail Kshevetskiy <mikhail.kshevetskiy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-07-24 03:22 (24 days old)
References	: http://lkml.org/lkml/2008/7/23/317
Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11141
Subject		: no battery or DC status - Dell i1501
Submitter	: Gu Rui <chaos.proton-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-07-21 19:43 (27 days old)
Handled-By	: Zhao Yakui <yakui.zhao-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>


Regressions with patches
------------------------

Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11346
Subject		: kernel BUG at arch/x86/mm/pat.c:233!
Submitter	: Jean Delvare <khali-PUYAD+kWke1g9hUCZPvPmw@public.gmane.org>
Date		: 2008-08-15 02:10 (2 days old)
Handled-By	: Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
Patch		: http://bugzilla.kernel.org/attachment.cgi?id=3D17270&action=3D=
view


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11330
Subject		: int3: 0000 in tsc_read_refs when using powernow_k7
Submitter	: Mikko Vinni <mmvinni-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-14 04:21 (3 days old)
Patch		: http://bugzilla.kernel.org/show_bug.cgi?id=3D11330#c2


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11323
Subject		: /proc/diskstats does not contain all disk devices
Submitter	: Andy Ryan <genanr-FUK3p6tQds9Wk0Htik3J/w@public.gmane.org>
Date		: 2008-08-13 12:12 (4 days old)
Handled-By	: Greg Kroah-Hartman <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>
		  Kay Sievers <kay.sievers-tD+1rO4QERM@public.gmane.org>
Patch		: http://bugzilla.kernel.org/attachment.cgi?id=3D17257&action=3D=
view


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11316
Subject		: severe performance regression for iptables nat routing
Submitter	: Alex Williamson <alex.williamson-VXdhtT5mjnY@public.gmane.org>
Date		: 2008-08-12 22:04 (5 days old)
Handled-By	: Herbert Xu <herbert-lOAM2aK0SrRLBo1qDEOMRrpzq4S04n8Q@public.gmane.org>
Patch		: http://bugzilla.kernel.org/show_bug.cgi?id=3D11316#c15
		  http://bugzilla.kernel.org/show_bug.cgi?id=3D11316#c16


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11276
Subject		: build error: CONFIG_OPTIMIZE_INLINING=3Dy causes gcc 4.2 to =
do stupid things
Submitter	: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-06 17:18 (11 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121804329014332&w=3D=
4
		  http://lkml.org/lkml/2008/7/22/353
Handled-By	: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Patch		: http://lkml.org/lkml/2008/7/22/364


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11260
Subject		: Regression: USB memory stick triggers several USB resets bef=
ore settling with bogus capacity
Submitter	: Alex Villacis Lasso <avillaci-x0m+Mc+nT7uljOmnV8AmnkElSqmLX1BE@public.gmane.org>
Date		: 2008-08-06 13:33 (11 days old)
Handled-By	: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121804333614405&w=3D2


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11254
Subject		: KVM: fix userspace ABI breakage
Submitter	: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Date		: 21 Jul 2008 17:58:26 (0 days old)
References	: http://lkml.org/lkml/2008/7/21/197
Handled-By	: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Patch		: http://lkml.org/lkml/2008/7/21/197


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11228
Subject		: p54usb broken by commit b19fa1f
Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Date		: 2008-08-02 3:06 (15 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121764647801783&w=3D=
4
Handled-By	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121779445431434&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11205
Subject		: x86: 2.6.27-rc1 does not build with gcc-3.2.3 any more
Submitter	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Date		: 2008-07-30 11:02 (18 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121741584608240&w=3D=
4
Handled-By	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121742199419686&w=3D2


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11189
Subject		: sky2 WOL broken
Submitter	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
Date		: 2008-07-20 0:20:10 (28 days old)
References	: http://marc.info/?l=3Dlinux-next&m=3D121651311115104&w=3D4
Handled-By	: Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>
		  Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121838931923267&w=3D4


=46or details, please visit the bug entries and follow the links given =
in
references.

As you can see, there is a Bugzilla entry for each of the listed regres=
sions.
There also is a Bugzilla entry used for tracking the regressions from 2=
=2E6.26,
unresolved as well as resolved, at:

http://bugzilla.kernel.org/show_bug.cgi?id=3D11167

Please let me know if there are any Bugzilla entries that should be add=
ed to
the list in there.

Thanks,
Rafael

From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: 2.6.27-rc2-git4: Reported regressions from 2.6.26
Date: Sun, 10 Aug 2008 00:40:52 +0200 (CEST)
Message-ID: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik>
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
  2008-08-10       80       52          31
  2008-08-02       47       31          20


Unresolved regressions
----------------------

Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11296
Subject		: 2.6.27-rc2-git4: suspend and power off fails on Asus M3A32-M=
VP
Submitter	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
Date		: 2008-08-09 21:21 (1 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121831675111794&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11295
Subject		: Kernel panic on VIA Ester+VIA CX700
Submitter	: Bruno Pr=C3=A9mont <bonbons-ud5FBsm0p/xEiooADzr8i9i2O/JbrIOy@public.gmane.org>
Date		: 2008-08-09 20:51 (1 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121831582810674&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11293
Subject		: 2.6.27-rc2: suspend regression on EeePC
Submitter	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Date		: 2008-08-06 18:59 (4 days old)
References	: http://thread.gmane.org/gmane.linux.kernel.kernel-testers/=
701


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11291
Subject		: 2.6.27-rc2: laptop freezes as soon as starting video playbac=
k
Submitter	: Romano Giannetti <romano.giannetti-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-09 05:00 (1 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11288
Subject		: Regression in 2.6.27-rc1 for set_cpus_allowed_ptr
Submitter	: Langsdorf, Mark <mark.langsdorf-5C7GfCeVMHo@public.gmane.org>
Date		: 2008-08-08 19:44 (2 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121822469903539&w=3D=
4
Handled-By	: Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11287
Subject		: Regression in 2.6.27-rc2 in acpi_processor_init()
Submitter	: Langsdorf, Mark <mark.langsdorf-5C7GfCeVMHo@public.gmane.org>
Date		: 2008-08-08 19:36 (2 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121822438102981&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11283
Subject		: MSI patch blamed for T60p not coming out of suspend to ram
Submitter	: Michael S. Tsirkin <m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-07 16:07 (3 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11282
Subject		: Please fix x86 defconfig regression
Submitter	: Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
Date		: 2008-08-07 20:46 (3 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121814188805666&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11281
Subject		: 2.6.27-rc1: critical thermal shutdown on thinkpad x60
Submitter	: Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>
Date		: 2008-08-06 9:02 (4 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121802744007517&w=3D=
4
Handled-By	: Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11279
Subject		: 2.6.27-rc0 Power Bugs with HP/Compaq Laptops
Submitter	: Matt Parnell <mparnell-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-07 14:57 (3 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121812108031685&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11278
Subject		: 2.6.27-rc2: Very odd top: '5124095h kthreadd' display
Submitter	: Grant Coady <grant_lkml-rGYn+TmxqGy6c6uEtOJ/EA@public.gmane.org>
Date		: 2008-08-07 7:03 (3 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121809267318795&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11273
Subject		: 2.6.27-rc1: softcursor behaviour changed
Submitter	: Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>
Date		: 2008-08-05 21:20 (5 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121797130829383&w=3D=
4
		  http://marc.info/?l=3Dlinux-kernel&m=3D121811414518748&w=3D4
Handled-By	: Stefano Stabellini <stefano.stabellini-mvvWK6WmYclDPfheJLI6IQ@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11272
Subject		: BUG: parport_serial in 2.6.27-rc1 for NetMos Technology PCI =
9835
Submitter	: Jaswinder Singh <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-05 15:12 (5 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121794900319776&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11271
Subject		: BUG: fealnx in 2.6.27-rc1
Submitter	: Jaswinder Singh <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-05 14:58 (5 days old)
References	: http://marc.info/?l=3Dlinux-netdev&m=3D121794762016830&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11264
Subject		: Invalid op opcode in kernel/workqueue
Submitter	: Jean-Luc Coulon <jean.luc.coulon-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-07 04:18 (3 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11263
Subject		: Re: 2.6.27-rc2: uvcvideo WARNING after suspend to ram
Submitter	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Date		: 2008-08-07 04:02 (3 days old)
References	: http://comments.gmane.org/gmane.linux.kernel/717552


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11245
Subject		: acpi error on 2.6.27-rc1+ (ACPI Error (dsobject-0501))
Submitter	: Marcin Slusarz <marcin.slusarz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-03 18:29 (7 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121778823123488&w=3D=
4
Handled-By	: Zhang Rui <rui.zhang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
		  Zhao Yakui <yakui.zhao-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11243
Subject		: Current git fails to compile (gcc 3.4.4)
Submitter	: Dhaval Giani <dhaval-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Date		: 2008-07-18 7:55 (23 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121636772226303&w=3D=
4
Handled-By	: Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11237
Subject		: [BUG] 2.6.27-rc1 in ext3_find_entry
Submitter	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Date		: 2008-08-02 9:51 (8 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121767073424952&w=3D=
4
Handled-By	: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11230
Subject		: Kconfig no longer outputs a .config with freshly updated def=
configs
Submitter	: Josh Boyer <jwboyer-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Date		: 2008-08-02 16:03 (8 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121769306319391&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11224
Subject		: Only three cores found on quad-core machine.
Submitter	: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-01 18:15 (9 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121761475224719&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11221
Subject		: 2.6.27-rc1 oops when plugging USB disk
Submitter	: Lukas Hejtmanek <xhejtman-8qz54MUs51PtwjQa/ONI9g@public.gmane.org>
Date		: 2008-08-01 13:35 (9 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121759786223716&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11220
Subject		: Heavy suspend and io problems in 2.6.27-rc1-00156-g94ad374
Submitter	: Nico Schottelius <nico-xuaVFQXs+5hIG4jRRZ66WA@public.gmane.org>
Date		: 2008-07-31 21:05 (10 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121753882422899&w=3D=
4
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11219
Subject		: KVM modules break emergency reboot
Submitter	: Zdenek Kabelac <zdenek.kabelac-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-01 20:25 (9 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121762241105336&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11215
Subject		: INFO: possible recursive locking detected ps2_command
Submitter	: Zdenek Kabelac <zdenek.kabelac-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-07-31 9:41 (10 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121749737011637&w=3D=
4
Handled-By	: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11214
Subject		: 2.6.27-rc1: I/O errors after resume
Submitter	: Miklos Szeredi <miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org>
Date		: 2008-07-31 13:04 (10 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121750960431966&w=3D=
4
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11210
Subject		: libata badness
Submitter	: Kumar Gala <galak-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Date		: 2008-07-31 18:53 (10 days old)
References	: http://marc.info/?l=3Dlinux-ide&m=3D121753059307310&w=3D4
Handled-By	: Ben Dooks <ben-linux-elnMNo+KYs3YtjvyW6yDsg@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11209
Subject		: 2.6.27-rc1 process time accounting
Submitter	: Lukas Hejtmanek <xhejtman-8qz54MUs51PtwjQa/ONI9g@public.gmane.org>
Date		: 2008-07-31 10:43 (10 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121750102917490&w=3D=
4
Handled-By	: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11207
Subject		: VolanoMark regression with 2.6.27-rc1
Submitter	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Date		: 2008-07-31 3:20 (10 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121747464114335&w=3D=
4
Handled-By	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
		  Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
		  Dhaval Giani <dhaval-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
		  Miao Xie <miaox-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11191
Subject		: 2.6.26-git8: spinlock lockup in c1e_idle()
Submitter	: Mikhail Kshevetskiy <mikhail.kshevetskiy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-07-24 03:22 (17 days old)
References	: http://lkml.org/lkml/2008/7/23/317
Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11141
Subject		: no battery or DC status - Dell i1501
Submitter	: Gu Rui <chaos.proton-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-07-21 19:43 (20 days old)
Handled-By	: Zhao Yakui <yakui.zhao-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>


Regressions with patches
------------------------

Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11294
Subject		: build issue #552 for v2.6.27-rc2-325-g796aade :drivers/watch=
dog/pcwd.c : incompatible pointer type
Submitter	: Toralf F=C3=B6rster <toralf.foerster-Mmb7MZpHnFY@public.gmane.org>
Date		: 2008-08-09 19:54 (1 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121831173604972&w=3D=
4
Handled-By	: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121818422630481&w=3D2


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11286
Subject		: possible recursive locking in udp4_lib_rcv
Submitter	: Michael S. Tsirkin <m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-07 23:46 (3 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121815284623084&w=3D=
4
Handled-By	: Herbert Xu <herbert-lOAM2aK0SrRLBo1qDEOMRrpzq4S04n8Q@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121820774505110&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11280
Subject		: Fix broken VMI in 2.6.27-rc..
Submitter	: Alok Kataria <akataria-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-07 19:12 (3 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121813641028838&w=3D=
4
Handled-By	: Alok Kataria <akataria-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121813641028838&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11277
Subject		: BUG kmalloc-64: Object already free
Submitter	: Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-06 21:21 (4 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121805862910241&w=3D=
4
Handled-By	: Parag Warudkar <parag.warudkar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121814402609514&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11276
Subject		: build error: CONFIG_OPTIMIZE_INLINING=3Dy causes gcc 4.2 to =
do stupid things
Submitter	: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-06 17:18 (4 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121804329014332&w=3D=
4
		  http://lkml.org/lkml/2008/7/22/353
Handled-By	: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Patch		: http://lkml.org/lkml/2008/7/22/364


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11275
Subject		: [BUG] hugetlb: sleeping function called from invalid context
Submitter	: Gerald Schaefer <gerald.schaefer-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-06 14:43 (4 days old)
References	: http://marc.info/?l=3Dlinux-mm&m=3D121803401427843&w=3D4
Handled-By	: Andy Whitcroft <apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121804949526359&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11274
Subject		: Oops when accessing /proc/lockdep_chains
Submitter	: Eric Sesterhenn <snakebyte-Mmb7MZpHnFY@public.gmane.org>
Date		: 2008-08-06 12:16 (4 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121802509626294&w=3D=
4
Handled-By	: Rabin Vincent <rabin-66gdRtMMWGc@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121814269607276&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11270
Subject		: BUG when doing a cat /sys/devices/system/cpu/cpuidle/current=
_driver
Submitter	: Eric Sesterhenn <snakebyte-Mmb7MZpHnFY@public.gmane.org>
Date		: 2008-08-05 12:33 (5 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121793969102438&w=3D=
4
Handled-By	: Rabin Vincent <rabin-66gdRtMMWGc@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121795955208618&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11269
Subject		: sched: revert cpu_clock to pre-27ec4407790d075c325e1f4da0a19=
c56953cce23 state
Submitter	: Nishanth Aravamudan <nacc-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-04 19:46 (6 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121787924917646&w=3D=
4
Handled-By	: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Patch		: http://bugzilla.kernel.org/show_bug.cgi?id=3D11269#c1


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11260
Subject		: Regression: USB memory stick triggers several USB resets bef=
ore settling with bogus capacity
Submitter	: Alex Villacis Lasso <avillaci-x0m+Mc+nT7uljOmnV8AmnkElSqmLX1BE@public.gmane.org>
Date		: 2008-08-06 13:33 (4 days old)
Handled-By	: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121804333614405&w=3D2


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11254
Subject		: KVM: fix userspace ABI breakage
Submitter	: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Date		: 21 Jul 2008 17:58:26 (0 days old)
References	: http://lkml.org/lkml/2008/7/21/197
Handled-By	: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Patch		: http://lkml.org/lkml/2008/7/21/197


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11235
Subject		: acer-wmi broken in latest git kernel on TravelMate 6492 (Ins=
ufficient arguments - method [WQAA])
Submitter	: Sven Wegener <sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org>
Date		: 2008-08-02 15:50:54 (8 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121769235318600&w=3D=
4
Handled-By	: Carlos Corbacho <carlos-8YloKY0SPvpS8uBCpOlSjPXRex20P6io@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121769591723088&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11231
Subject		: gspca_zc3xx oops - 2.6.27-rc1
Submitter	: Parag Warudkar <parag.warudkar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-02 16:22 (8 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121769418920774&w=3D=
4
Handled-By	: Rabin Vincent <rabin-66gdRtMMWGc@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121774908213124&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11228
Subject		: p54usb broken by commit b19fa1f
Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Date		: 2008-08-02 3:06 (8 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121764647801783&w=3D=
4
Handled-By	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121779445431434&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11205
Subject		: x86: 2.6.27-rc1 does not build with gcc-3.2.3 any more
Submitter	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Date		: 2008-07-30 11:02 (11 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121741584608240&w=3D=
4
Handled-By	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121742199419686&w=3D2


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11204
Subject		: Commit 76a2a6ee8a0660a29127f05989ac59ae1ce865fa breaks PXA27=
0 (at least)?
Submitter	: Russell King - ARM Linux <linux-lFZ/pmaqli7XmaaqVzeoHQ@public.gmane.org>
Date		: 2008-07-29 22:31 (12 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121737075314966&w=3D=
4
Handled-By	: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121754090926333&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11201
Subject		: kernel BUG at arch/x86/kernel/io_apic_64.c:357!
Submitter	: Dhaval Giani <dhaval-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Date		: 2008-07-29 16:21 (12 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121734804508255&w=3D=
4
Handled-By	: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
		  Eric W. Biederman <ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121735924628623&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11197
Subject		: Oops in microcode sysfs registration
Submitter	: Alistair John Strachan <alistair-T7eSMZptz7IqdlJmJB21zg@public.gmane.org>
Date		: 2008-07-29 13:57 (12 days old)
References	: http://marc.info/?t=3D121734004900002&r=3D1&w=3D4
Handled-By	: Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121741431005777&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11190
Subject		: [USB boot crash, -git] ecm_do_notify(), list_add corruption.=
 prev-&gt;next should be next (ffff88003b8f82f8)
Submitter	: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Date		: 2008-07-22 13:40 (19 days old)
References	: http://marc.info/?l=3Dlinux-usb&m=3D121673409124827&w=3D4
Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
		  David Brownell <david-b-yBeKhBN/0LDR7s880joybQ@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121708481823201&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11189
Subject		: sky2 WOL broken
Submitter	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
Date		: 2008-07-20 0:20:10 (21 days old)
References	: http://marc.info/?l=3Dlinux-next&m=3D121651311115104&w=3D4
Handled-By	: Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>
		  Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-netdev&m=3D121831747612598&w=3D2


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11178
Subject		: Secondary hard drive fails during both hibernation and resum=
e.
Submitter	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Date		: 2008-07-30 04:53 (11 days old)
Handled-By	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Patch		: http://bugzilla.kernel.org/attachment.cgi?id=3D17043&action=3D=
view


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

From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: 2.6.27-rc5-git8: Reported regressions from 2.6.26
Date: Sat,  6 Sep 2008 23:24:49 +0200 (CEST)
Message-ID: <s3QDdfEDq6.A.wlH.MowwIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
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
  2008-09-07      150       43          33
  2008-08-30      135       48          36
  2008-08-23      122       48          40
  2008-08-16      103       47          37
  2008-08-10       80       52          31
  2008-08-02       47       31          20


Unresolved regressions
----------------------

Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11512
Subject		: sort-of regression due to "kconfig: speed up all*config + ra=
ndconfig"
Submitter	: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-09-05 22:50 (2 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122065498013858&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11507
Subject		: usb: sometimes dead keyboard after boot
Submitter	: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Date		: 2008-08-26 21:03 (12 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121977815018224&w=3D=
2


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11506
Subject		: oops during unmount - ext3? (2.6.27-rc5)
Submitter	: Marcin Slusarz <marcin.slusarz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-09-04 19:14 (3 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122055573123449&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11505
Subject		: oltp ~10% regression with 2.6.27-rc5 on stoakley machine
Submitter	: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Date		: 2008-09-04 7:06 (3 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122051202202373&w=3D=
4
Handled-By	: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
		  Gregory Haskins <ghaskins-Et1tbQHTxzrQT0dZR+AlfA@public.gmane.org>
		  Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11504
Subject		: reiserfs =C2=A0BUG in 2.6.27-rc5
Submitter	: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Date		: 2008-09-03 16:35 (4 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122045982120138&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11501
Subject		: Failed to open destination file: Permission deniedihex2fw
Submitter	: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Date		: 2008-09-04 18:34 (3 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122055342419068&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11500
Subject		: /proc/net bug related to selinux
Submitter	: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Date		: 2008-09-04 17:45 (3 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122055041313270&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11485
Subject		: 2.6.27-rc xen pvops regression?
Submitter	: Bernhard Schmidt <berni-wpePDvIxQxvMZTq/7ZfH4Q@public.gmane.org>
Date		: 2008-08-31 17:18 (7 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122020367015025&w=3D=
4
Handled-By	: Alex Nixon <alex.nixon-Sxgqhf6Nn4DQT0dZR+AlfA@public.gmane.org>
		  Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11476
Subject		: failure to associate after resume from suspend to ram
Submitter	: Michael S. Tsirkin <m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-09-01 13:33 (6 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122028529415108&w=3D=
4
Handled-By	: Zhu Yi <yi.zhu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
		  Dan Williams <dcbw-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
		  Jouni Malinen <j@w1.fi>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11471
Subject		: GPE storm detected, kernel freezes
Submitter	: George Gibbs <Vash63-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-31 22:00 (7 days old)
Handled-By	: Zhang Rui <rui.zhang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11465
Subject		: Linux-2.6.27-rc5, drm errors in log
Submitter	: Gene Heskett <gene.heskett-H+0wwilmMs3R7s880joybQ@public.gmane.org>
Date		: 2008-08-30 18:52 (8 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122012238925775&w=3D=
4
Handled-By	: Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11463
Subject		: sshd hangs on close
Submitter	: Matthias Urlichs <matthias-+qxcz+fHsVSELgA04lAiVw@public.gmane.org>
Date		: 2008-08-30 9:18 (8 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122008800512864&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11459
Subject		: kernel crash after wifi connection established
Submitter	: Alexey Kuznetsov <ak-b7SOpcJQXxU@public.gmane.org>
Date		: 2008-08-30 03:08 (8 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11407
Subject		: suspend: unable to handle kernel paging request
Submitter	: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-21 17:28 (17 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121933974928881&w=3D=
4
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
		  Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
		  Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11404
Subject		: BUG: in 2.6.23-rc3-git7 in do_cciss_intr
Submitter	: rdunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-21 5:52 (17 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121929819616273&w=3D=
4
		  http://marc.info/?l=3Dlinux-kernel&m=3D121932889105368&w=3D4
Handled-By	: Miller, Mike (OS Dev) <Mike.Miller-VXdhtT5mjnY@public.gmane.org>
		  James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11403
Subject		: 2.6.27-rc2 USB suspend regression
Submitter	: Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>
Date		: 2008-08-20 20:48 (18 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121926536103630&w=3D=
4
Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11398
Subject		: hda_intel: IRQ timing workaround is activated for card #0. S=
uggest a bigger bdl_pos_adj.
Submitter	: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Date		: 2008-08-21 17:17 (17 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11380
Subject		: lockdep warning: cpu_add_remove_lock at:cpu_maps_update_begi=
n+0x14/0x16
Submitter	: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Date		: 2008-08-20 6:44 (18 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121921480931970&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11357
Subject		: Can not boot up with zd1211rw USB-Wlan Stick
Submitter	: uwe <kender-KuiJ5kEpwI6ELgA04lAiVw@public.gmane.org>
Date		: 2008-08-16 14:17 (22 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11343
Subject		: SATA Cold Boot Problems with 2.6.27-rc[23] on nVidia 680i
Submitter	: Manny Maxwell <mannymax-7UBucS1kxs3k1uMJSBkQmQ@public.gmane.org>
Date		: 2008-08-14 4:16 (24 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121868782917600&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11340
Subject		: LTP overnight run resulted in unusable box
Submitter	: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-13 9:24 (25 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121861951902949&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11335
Subject		: 2.6.27-rc2-git5 BUG: unable to handle kernel paging request
Submitter	: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-12 4:18 (26 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121851477201960&w=3D=
4
		  http://lkml.org/lkml/2008/8/16/274
Handled-By	: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11308
Subject		: tbench regression on each kernel release from 2.6.22 -&gt; 2=
=2E6.28
Submitter	: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Date		: 2008-08-11 18:36 (27 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121847986119495&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11272
Subject		: BUG: parport_serial in 2.6.27-rc1 for NetMos Technology PCI =
9835
Submitter	: Jaswinder Singh <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-05 15:12 (33 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121794900319776&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11271
Subject		: BUG: fealnx in 2.6.27-rc1
Submitter	: Jaswinder Singh <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-05 14:58 (33 days old)
References	: http://marc.info/?l=3Dlinux-netdev&m=3D121794762016830&w=3D=
4
		  http://lkml.org/lkml/2008/8/10/98
Handled-By	: Francois Romieu <romieu-W8zweXLXuWQS+FvcfC7Uqw@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11264
Subject		: Invalid op opcode in kernel/workqueue
Submitter	: Jean-Luc Coulon <jean.luc.coulon-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-07 04:18 (31 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11230
Subject		: Kconfig no longer outputs a .config with freshly updated def=
configs
Submitter	: Josh Boyer <jwboyer-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Date		: 2008-08-02 16:03 (36 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121769306319391&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11224
Subject		: Only three cores found on quad-core machine.
Submitter	: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-01 18:15 (37 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121761475224719&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11220
Subject		: Screen stays black after resume
Submitter	: Nico Schottelius <nico-xuaVFQXs+5hIG4jRRZ66WA@public.gmane.org>
Date		: 2008-07-31 21:05 (38 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121753882422899&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11215
Subject		: INFO: possible recursive locking detected ps2_command
Submitter	: Zdenek Kabelac <zdenek.kabelac-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-07-31 9:41 (38 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121749737011637&w=3D=
4
Handled-By	: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11210
Subject		: libata badness
Submitter	: Kumar Gala <galak-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Date		: 2008-07-31 18:53 (38 days old)
References	: http://marc.info/?l=3Dlinux-ide&m=3D121753059307310&w=3D4
Handled-By	: Kumar Gala <galak-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11209
Subject		: 2.6.27-rc1 process time accounting
Submitter	: Lukas Hejtmanek <xhejtman-8qz54MUs51PtwjQa/ONI9g@public.gmane.org>
Date		: 2008-07-31 10:43 (38 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121750102917490&w=3D=
4
Handled-By	: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11207
Subject		: VolanoMark regression with 2.6.27-rc1
Submitter	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Date		: 2008-07-31 3:20 (38 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121747464114335&w=3D=
4
Handled-By	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
		  Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
		  Dhaval Giani <dhaval-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
		  Miao Xie <miaox-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>


Regressions with patches
------------------------

Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11511
Subject		: HPT374 detection crash with 74811f355f4f69a187fa74892dcf2a68=
4b84ce99
Submitter	: Masoud Sharbiani <masouds-VSK0CvVmMoVQFI55V6+gNQ@public.gmane.org>
Date		: 2008-09-04 23:11 (3 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122056994113818&w=3D=
4
Handled-By	: Masoud Sharbiani <masouds-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D122072163527041&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11442
Subject		: btusb hibernation/suspend breakage in current -git
Submitter	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
Date		: 2008-08-25 11:37 (13 days old)
References	: http://marc.info/?l=3Dlinux-bluetooth&m=3D121966402012074&=
w=3D4
Handled-By	: Oliver Neukum <oliver-GvhC2dPhHPQdnm+yROfE0A@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-bluetooth&m=3D121967226027323&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11439
Subject		: [2.6.27-rc4-git4] compilation warnings
Submitter	: Rufus &amp; Azrael <rufus-azrael-Bf/eaXMDFuuXqB7oj33eUg@public.gmane.org>
Date		: 2008-08-26 9:37 (12 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121974353815440&w=3D=
4
Handled-By	: Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121976424221858&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11418
Subject		: Many soft lockups
Submitter	: Gu Rui <chaos.proton-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-24 13:06 (14 days old)
Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Patch		: http://bugzilla.kernel.org/attachment.cgi?id=3D17622&action=3D=
view


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11382
Subject		: e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Submitter	: David Vrabel <david.vrabel-kQvG35nSl+M@public.gmane.org>
Date		: 2008-08-08 10:47 (30 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121819267211679&w=3D=
4
Handled-By	: Christopher Li <chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-mm-commits&m=3D122038324200305&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11358
Subject		: net: forcedeth call restore mac addr in nv_shutdown path
Submitter	: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-17 3:30 (21 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121894389018584&w=3D=
4
Handled-By	: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121894389018584&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11336
Subject		: 2.6.27-rc2:stall while mounting root fs
Submitter	: Torsten Kaiser <just.for.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Date		: 2008-08-12 12:37 (26 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121854484015909&w=3D=
4
Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Patch		: http://bugzilla.kernel.org/attachment.cgi?id=3D17622


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11334
Subject		: myri10ge: use ioremap_wc: compilation failure on ARM
Submitter	: Martin Michlmayr <tbm-R+vWnYXSFMfQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-10 11:25 (28 days old)
References	: http://marc.info/?l=3Dlinux-netdev&m=3D121836771727632&w=3D=
2
Handled-By	: Lennert Buytenhek <buytenh-OLH4Qvv75CYX/NnBR394Jw@public.gmane.org>
Patch		: http://bugzilla.kernel.org/show_bug.cgi?id=3D11334#c13


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11276
Subject		: build error: CONFIG_OPTIMIZE_INLINING=3Dy causes gcc 4.2 to =
do stupid things
Submitter	: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-06 17:18 (32 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121804329014332&w=3D=
4
		  http://lkml.org/lkml/2008/7/22/353
Handled-By	: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Patch		: http://lkml.org/lkml/2008/7/22/364


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11237
Subject		: corrupt PMD after resume
Submitter	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Date		: 2008-08-02 9:51 (36 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121767073424952&w=3D=
4
Handled-By	: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
		  Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D122001615314700&w=3D2


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

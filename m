From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: 2.6.28-rc2-git7: Reported regressions 2.6.26 -> 2.6.27
Date: Sun,  2 Nov 2008 17:47:37 +0100 (CET)
Message-ID: <Sl8SUNhCbfL.A.O5H.yueDJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

This message contains a list of some regressions introduced between 2.6=
=2E26 and
2.6.27, for which there are no fixes in the mainline I know of.  If any=
 of them
have been fixed already, please let me know.

If you know of any other unresolved regressions introduced between 2.6.=
26
and 2.6.27, please let me know either and I'll add them to the list.
Also, please let me know if any of the entries below are invalid.

Each entry from the list will be sent additionally in an automatic repl=
y to
this message with CCs to the people involved in reporting and handling =
the
issue.


Listed regressions statistics:

  Date          Total  Pending  Unresolved
  ----------------------------------------
  2008-11-02      195       34          28
  2008-10-26      190       34          29
  2008-10-04      181       41          33
  2008-09-27      173       35          28
  2008-09-21      169       45          36
  2008-09-15      163       46          32
  2008-09-12      163       51          38
  2008-09-07      150       43          33
  2008-08-30      135       48          36
  2008-08-23      122       48          40
  2008-08-16      103       47          37
  2008-08-10       80       52          31
  2008-08-02       47       31          20


Unresolved regressions
----------------------

Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11876
Subject		: RCU hang on cpu re-hotplug with 2.6.27rc8
Submitter	: Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
Date		: 2008-10-06 23:28 (28 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122333610602399&w=3D=
2
Handled-By	: Paul E. McKenney <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11843
Subject		: usb hdd problems with 2.6.27.2
Submitter	: Luciano Rocha <luciano-YWehAnL2kLNBDgjK7y7TUQ@public.gmane.org>
Date		: 2008-10-22 16:22 (12 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122469318102679&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11836
Subject		: Scheduler on C2D CPU and latest 2.6.27 kernel
Submitter	: Zdenek Kabelac <zdenek.kabelac-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-10-21 9:59 (13 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122458320502371&w=3D=
4
Handled-By	: Chris Snook <csnook-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11832
Subject		: 2.6.27: "irq 18: nobody cared" on Toshiba Satellite A100
Submitter	: M. Vefa Bicakci <bicave-qUEp0r/b3FNfOZc0+OmrVg@public.gmane.org>
Date		: 2008-10-19 14:06 (15 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122442552100406&w=3D=
4
Handled-By	: Stefan Assmann <sassmann-l3A5Bk7waGM@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11830
Subject		: disk statistics issue in 2.6.27
Submitter	: Miquel van Smoorenburg <mikevs-qWit8jRvyhWsTnJN9+BGXg@public.gmane.org>
Date		: 2008-10-19 11:31 (15 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122441671421326&w=3D=
4
Handled-By	: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11820
Subject		: 2.6.27: 0 MHz CPU and wrong system time on AMD Geode system
Submitter	: Antipov Dmitry <dmantipov-o+MxOtu4lMCHXe+LvDLADg@public.gmane.org>
Date		: 2008-10-15 6:39 (19 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122405421010969&w=3D=
4
Handled-By	: Jordan Crouse <jordan.crouse-5C7GfCeVMHo@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11795
Subject		: ks959-sir dongle no longer works under 2.6.27 (REGRESSION)
Submitter	: Alex Villacis Lasso <avillaci-x0m+Mc+nT7uljOmnV8AmnkElSqmLX1BE@public.gmane.org>
Date		: 2008-10-20 10:49 (14 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11699
Subject		: 2.6.27-rc-7: BUG: scheduling while atomic, c1e_idle+0x98/0xe=
0
Submitter	: Prakash Punnoor <prakash-HU31jPUvoIKELgA04lAiVw@public.gmane.org>
Date		: 2008-09-28 17:45 (36 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122262403415629&w=3D=
4
Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11698
Subject		: 2.6.27-rc7, freezes with &gt; 1 s2ram cycle
Submitter	: Soeren Sonnenburg <kernel-YxZl4NRrHdw@public.gmane.org>
Date		: 2008-09-29 11:29 (35 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122268780926859&w=3D=
4
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11664
Subject		: acpi errors and random freeze on sony vaio sr
Submitter	: Giovanni Pellerano <giovanni.pellerano-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-09-28 03:48 (36 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11608
Subject		: 2.6.27-rc6 BUG: unable to handle kernel paging request
Submitter	: John Daiker <daikerjohn-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-09-16 23:00 (48 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122160611517267&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11607
Subject		: 2.6.27-rc6 =C2=A0Bug in tty_chars_in_buffer
Submitter	: John Daiker <daikerjohn-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-09-15 2:26 (49 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122144565514490&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11569
Subject		: Panic stop CPUs regression
Submitter	: Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
Date		: 2008-09-02 13:49 (62 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122036356127282&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11543
Subject		: kernel panic: softlockup in tick_periodic() ???
Submitter	: Joshua Hoblitt <j_kernel-amK9oZtvyLhBDgjK7y7TUQ@public.gmane.org>
Date		: 2008-09-11 16:46 (53 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122117786124326&w=3D=
4
Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
		  Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
		  Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11476
Subject		: failure to associate after resume from suspend to ram
Submitter	: Michael S. Tsirkin <m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-09-01 13:33 (63 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122028529415108&w=3D=
4
Handled-By	: Zhu Yi <yi.zhu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
		  Dan Williams <dcbw-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
		  Jouni Malinen <j@w1.fi>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11407
Subject		: suspend: unable to handle kernel paging request
Submitter	: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-21 17:28 (74 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121933974928881&w=3D=
4
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
		  Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
		  Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11404
Subject		: BUG: in 2.6.23-rc3-git7 in do_cciss_intr
Submitter	: rdunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-21 5:52 (74 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121929819616273&w=3D=
4
		  http://marc.info/?l=3Dlinux-kernel&m=3D121932889105368&w=3D4
Handled-By	: Miller, Mike (OS Dev) <Mike.Miller-VXdhtT5mjnY@public.gmane.org>
		  James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11380
Subject		: lockdep warning: cpu_add_remove_lock at:cpu_maps_update_begi=
n+0x14/0x16
Submitter	: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Date		: 2008-08-20 6:44 (75 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121921480931970&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11340
Subject		: LTP overnight run resulted in unusable box
Submitter	: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-13 9:24 (82 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121861951902949&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11308
Subject		: tbench regression on each kernel release from  2.6.22 -&gt; =
2.6.28
Submitter	: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Date		: 2008-08-11 18:36 (84 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121847986119495&w=3D=
4
		  http://marc.info/?l=3Dlinux-kernel&m=3D122125737421332&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11272
Subject		: BUG: parport_serial in 2.6.27-rc1 for NetMos Technology PCI =
9835
Submitter	: Jaswinder Singh <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-05 15:12 (90 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121794900319776&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11271
Subject		: BUG: fealnx in 2.6.27-rc1
Submitter	: Jaswinder Singh <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-05 14:58 (90 days old)
References	: http://marc.info/?l=3Dlinux-netdev&m=3D121794762016830&w=3D=
4
		  http://lkml.org/lkml/2008/8/10/98
Handled-By	: Francois Romieu <romieu-W8zweXLXuWQS+FvcfC7Uqw@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11264
Subject		: Invalid op opcode in kernel/workqueue
Submitter	: Jean-Luc Coulon <jean.luc.coulon-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-07 04:18 (88 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11220
Subject		: Screen stays black after resume
Submitter	: Nico Schottelius <nico-xuaVFQXs+5hIG4jRRZ66WA@public.gmane.org>
Date		: 2008-07-31 21:05 (95 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121753882422899&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11215
Subject		: INFO: possible recursive locking detected ps2_command
Submitter	: Zdenek Kabelac <zdenek.kabelac-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-07-31 9:41 (95 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121749737011637&w=3D=
4
Handled-By	: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11210
Subject		: IRQ routing badness
Submitter	: Kumar Gala <galak-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Date		: 2008-07-31 18:53 (95 days old)
References	: http://marc.info/?l=3Dlinux-ide&m=3D121753059307310&w=3D4
Handled-By	: Kumar Gala <galak-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11209
Subject		: 2.6.27-rc1 process time accounting
Submitter	: Lukas Hejtmanek <xhejtman-8qz54MUs51PtwjQa/ONI9g@public.gmane.org>
Date		: 2008-07-31 10:43 (95 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121750102917490&w=3D=
4
		  http://lkml.org/lkml/2008/9/30/199
		  http://marc.info/?l=3Dlinux-kernel&m=3D122470441624295&w=3D4
Handled-By	: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11207
Subject		: VolanoMark regression with 2.6.27-rc1
Submitter	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Date		: 2008-07-31 3:20 (95 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121747464114335&w=3D=
4
Handled-By	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
		  Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
		  Dhaval Giani <dhaval-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
		  Miao Xie <miaox-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>


Regressions with patches
------------------------

Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11907
Subject		: NVRAM being corrupted on ppc64 preventing boot
Submitter	: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Date		: 2008-10-30 14:26 (4 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122537727204584&w=3D=
4
Handled-By	: Paul Mackerras <paulus-eUNUBHrolfbYtjvyW6yDsg@public.gmane.org>
		  Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D122547833412996&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11904
Subject		: upstream regression (IO-APIC?)
Submitter	: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-10-30 0:00 (4 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122532510328618&w=3D=
4
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D122563711522315&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11829
Subject		: Kernel 2.6.26.5 -&gt; 2.6.27.2 [USB REGRESSION] (USB -&gt; D=
_STATE)
Submitter	: Justin Piszcz <jpiszcz-BP4nVm5VUdNhbmWW9KSYcQ@public.gmane.org>
Date		: 2008-10-19 11:26 (15 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122441560120027&w=3D=
4
Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
		  Mike Isely <isely-2vzrQ03IO+5eoWH0uzbU5w@public.gmane.org>
Patch		: http://linuxtv.org/hg/~mcisely/pvrusb2/rev/0bb411d8d2e4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11805
Subject		: mounting XFS produces a segfault
Submitter	: Tiago Maluta <maluta_tiago-/E1597aS9LRfJ/NunPodnw@public.gmane.org>
Date		: 2008-10-21 18:00 (13 days old)
Handled-By	: Dave Chinner <dgc-sJ/iWh9BUns@public.gmane.org>
Patch		: http://bugzilla.kernel.org/attachment.cgi?id=3D18397&action=3D=
view


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11550
Subject		: pnp: Huge number of "io resource overlap" messages
Submitter	: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Date		: 2008-09-09 10:50 (55 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122095745403793&w=3D=
4
Handled-By	: Rene Herman <rene.herman-cENuUygGYd//D1n+0JDH9g@public.gmane.org>
		  Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D122246533505643&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11505
Subject		: oltp ~10% regression with 2.6.27-rc5 on stoakley machine
Submitter	: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Date		: 2008-09-04 7:06 (60 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122051202202373&w=3D=
4
		  http://marc.info/?t=3D122089704700005&r=3D1&w=3D4
Handled-By	: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
		  Gregory Haskins <ghaskins-Et1tbQHTxzrQT0dZR+AlfA@public.gmane.org>
		  Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D122194673932703&w=3D4


=46or details, please visit the bug entries and follow the links given =
in
references.

As you can see, there is a Bugzilla entry for each of the listed regres=
sions.
There also is a Bugzilla entry used for tracking the regressions introd=
uced
between 2.6.26 and 2.6.27, unresolved as well as resolved, at:

http://bugzilla.kernel.org/show_bug.cgi?id=3D11167

Please let me know if there are any Bugzilla entries that should be add=
ed to
the list in there.

Thanks,
Rafael

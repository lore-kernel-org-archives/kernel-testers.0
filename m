From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: 2.6.27-rc4-git1: Reported regressions from 2.6.26
Date: Sat, 23 Aug 2008 20:07:42 +0200 (CEST)
Message-ID: <mzBsPw3QUOF.A.87F.wZGsIB@albercik>
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
  2008-08-23      122       48          40
  2008-08-16      103       47          37
  2008-08-10       80       52          31
  2008-08-02       47       31          20


Unresolved regressions
----------------------

Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11414
Subject		: Random crashes with 2.6.27-rc3 on PPC
Submitter	: Michael Buesch <mb-fseUSCV1ubazQB+pC5nmwQ@public.gmane.org>
Date		: 2008-08-23 14:10 (1 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121950076812616&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11410
Subject		: SLUB list_lock vs obj_hash.lock...
Submitter	: Daniel J Blueman <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-22 21:48 (2 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121944176609042&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11407
Subject		: suspend: unable to handle kernel paging request
Submitter	: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-21 17:28 (3 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121933974928881&w=3D=
4
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
		  Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
		  Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11406
Subject		: patch "x86: MOVE PCI IO ECS code to x86/pci" breaks CPU hotp=
lug
Submitter	: Jan Beulich <jbeulich-Et1tbQHTxzrQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-21 12:59 (3 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121932366326572&w=3D=
4
Handled-By	: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
		  Robert Richter <robert.richter-5C7GfCeVMHo@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11405
Subject		: 2.6.27-rc3 segfault on cold boot; not on warm boot.
Submitter	: David Greaves <david-FQ/kcb21CSxWk0Htik3J/w@public.gmane.org>
Date		: 2008-08-21 9:45 (3 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121931198904777&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11404
Subject		: BUG: in 2.6.23-rc3-git7 in do_cciss_intr
Submitter	: rdunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-21 5:52 (3 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121929819616273&w=3D=
4
		  http://marc.info/?l=3Dlinux-kernel&m=3D121932889105368&w=3D4
Handled-By	: Miller, Mike (OS Dev) <Mike.Miller-VXdhtT5mjnY@public.gmane.org>
		  James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11403
Subject		: 2.6.27-rc2 USB suspend regression
Submitter	: Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>
Date		: 2008-08-20 20:48 (4 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121926536103630&w=3D=
4
Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11402
Subject		: skbuff bug?
Submitter	: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-21 3:56 (3 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121929102707658&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11401
Subject		: pktcdvd: BUG, NULL pointer dereference in pkt_ioctl, bisecte=
d
Submitter	: Laurent Riffard <laurent.riffard-GANU6spQydw@public.gmane.org>
Date		: 2008-08-22 08:16 (2 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11398
Subject		: hda_intel: IRQ timing workaround is activated for card #0. S=
uggest a bigger bdl_pos_adj.
Submitter	: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Date		: 2008-08-21 17:17 (3 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11388
Subject		: 2.6.27-rc3 warns about MTRR range; only 3 of 16gb of memory =
is usable
Submitter	: Joshua Hoblitt <j_kernel-amK9oZtvyLhBDgjK7y7TUQ@public.gmane.org>
Date		: 2008-08-20 17:38 (4 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11382
Subject		: e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Submitter	: David Vrabel <david.vrabel-kQvG35nSl+M@public.gmane.org>
Date		: 2008-08-08 10:47 (16 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121819267211679&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11380
Subject		: lockdep warning: cpu_add_remove_lock at:cpu_maps_update_begi=
n+0x14/0x16
Submitter	: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Date		: 2008-08-20 6:44 (4 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121921480931970&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11379
Subject		: char/tpm: tpm_infineon no longer loaded for HP 2510p laptop
Submitter	: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Date		: 2008-08-18 13:40 (6 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121906698213329&w=3D=
4
Handled-By	: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11357
Subject		: Can not boot up with zd1211rw USB-Wlan Stick
Submitter	: uwe <kender-KuiJ5kEpwI6ELgA04lAiVw@public.gmane.org>
Date		: 2008-08-16 14:17 (8 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11356
Subject		: Linux 2.6.27-rc3 - build failure: undefined reference to `.l=
ockdep_count_forward_deps'
Submitter	: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Date		: 2008-08-16 19:11 (8 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121891396320127&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11355
Subject		: Regression in 2.6.27-rc2 when cross-building the kernel
Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Date		: 2008-08-16 2:38 (8 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121885432118368&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11354
Subject		: AMD Elan regression with 2.6.27-rc3
Submitter	: Sean Young <sean-hENCXIMQXOg@public.gmane.org>
Date		: 2008-08-15 18:37 (9 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121882578430056&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11343
Subject		: SATA Cold Boot Problems with 2.6.27-rc[23] on nVidia 680i
Submitter	: Manny Maxwell <mannymax-7UBucS1kxs3k1uMJSBkQmQ@public.gmane.org>
Date		: 2008-08-14 4:16 (10 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121868782917600&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11342
Subject		: Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c - bisected
Submitter	: Alan D. Brunelle <Alan.Brunelle-VXdhtT5mjnY@public.gmane.org>
Date		: 2008-08-13 23:03 (11 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121866876027629&w=3D=
4
Handled-By	: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11340
Subject		: LTP overnight run resulted in unusable box
Submitter	: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-13 9:24 (11 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121861951902949&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11336
Subject		: 2.6.27-rc2:stall while mounting root fs
Submitter	: Torsten Kaiser <just.for.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Date		: 2008-08-12 12:37 (12 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121854484015909&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11335
Subject		: 2.6.27-rc2-git5 BUG: unable to handle kernel paging request
Submitter	: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-12 4:18 (12 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121851477201960&w=3D=
4
		  http://lkml.org/lkml/2008/8/16/274
Handled-By	: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11334
Subject		: myri10ge: use ioremap_wc: compilation failure on ARM
Submitter	: Martin Michlmayr <tbm-R+vWnYXSFMfQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-10 11:25 (14 days old)
References	: http://marc.info/?l=3Dlinux-netdev&m=3D121836771727632&w=3D=
2


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11308
Subject		: tbench regression on each kernel release from 2.6.22 -&gt; 2=
=2E6.28
Submitter	: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Date		: 2008-08-11 18:36 (13 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121847986119495&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11282
Subject		: Please fix x86 defconfig regression
Submitter	: Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
Date		: 2008-08-07 20:46 (17 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121814188805666&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11279
Subject		: 2.6.27-rc0 Power Bugs with HP/Compaq Laptops
Submitter	: Matt Parnell <mparnell-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-07 14:57 (17 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121812108031685&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11272
Subject		: BUG: parport_serial in 2.6.27-rc1 for NetMos Technology PCI =
9835
Submitter	: Jaswinder Singh <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-05 15:12 (19 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121794900319776&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11271
Subject		: BUG: fealnx in 2.6.27-rc1
Submitter	: Jaswinder Singh <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-05 14:58 (19 days old)
References	: http://marc.info/?l=3Dlinux-netdev&m=3D121794762016830&w=3D=
4
		  http://lkml.org/lkml/2008/8/10/98
Handled-By	: Francois Romieu <romieu-W8zweXLXuWQS+FvcfC7Uqw@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11264
Subject		: Invalid op opcode in kernel/workqueue
Submitter	: Jean-Luc Coulon <jean.luc.coulon-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-07 04:18 (17 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11237
Subject		: corrupt PMD after resume
Submitter	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Date		: 2008-08-02 9:51 (22 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121767073424952&w=3D=
4
Handled-By	: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
		  Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11230
Subject		: Kconfig no longer outputs a .config with freshly updated def=
configs
Submitter	: Josh Boyer <jwboyer-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Date		: 2008-08-02 16:03 (22 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121769306319391&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11224
Subject		: Only three cores found on quad-core machine.
Submitter	: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-01 18:15 (23 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121761475224719&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11220
Subject		: Screen stays black after resume
Submitter	: Nico Schottelius <nico-xuaVFQXs+5hIG4jRRZ66WA@public.gmane.org>
Date		: 2008-07-31 21:05 (24 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121753882422899&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11219
Subject		: KVM modules break emergency reboot
Submitter	: Zdenek Kabelac <zdenek.kabelac-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-01 20:25 (23 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121762241105336&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11215
Subject		: INFO: possible recursive locking detected ps2_command
Submitter	: Zdenek Kabelac <zdenek.kabelac-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-07-31 9:41 (24 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121749737011637&w=3D=
4
Handled-By	: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11210
Subject		: libata badness
Submitter	: Kumar Gala <galak-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Date		: 2008-07-31 18:53 (24 days old)
References	: http://marc.info/?l=3Dlinux-ide&m=3D121753059307310&w=3D4
Handled-By	: Ben Dooks <ben-linux-elnMNo+KYs3YtjvyW6yDsg@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11209
Subject		: 2.6.27-rc1 process time accounting
Submitter	: Lukas Hejtmanek <xhejtman-8qz54MUs51PtwjQa/ONI9g@public.gmane.org>
Date		: 2008-07-31 10:43 (24 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121750102917490&w=3D=
4
Handled-By	: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11191
Subject		: 2.6.26-git8: spinlock lockup in c1e_idle()
Submitter	: Mikhail Kshevetskiy <mikhail.kshevetskiy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-07-24 03:22 (31 days old)
References	: http://lkml.org/lkml/2008/7/23/317
Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11141
Subject		: no battery or DC status - Dell i1501
Submitter	: Gu Rui <chaos.proton-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-07-21 19:43 (34 days old)
Handled-By	: Zhao Yakui <yakui.zhao-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>


Regressions with patches
------------------------

Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11413
Subject		: get_rtc_time() triggers NMI watchdog in hpet_rtc_interrupt()
Submitter	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Date		: 2008-08-23 9:48 (1 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121948503224161&w=3D=
4
Handled-By	: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121950734922457&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11409
Subject		: build issue #564 for v2.6.27-rc4 : undefined reference to `N=
S8390p_init'
Submitter	: Toralf F=C3=B6rster <toralf.foerster-Mmb7MZpHnFY@public.gmane.org>
Date		: 2008-08-22 8:33 (2 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121939410214677&w=3D=
4
Handled-By	: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121943097320451&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11361
Subject		: my servers with nvidia mcp55 nic don't work with msi in seco=
nd kernel by kexec
Submitter	: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-17 6:25 (7 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121895439927053&w=3D=
4
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121917167232014&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11360
Subject		: mpc8xxx_wdt.c doesn't build modular
Submitter	: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-17 08:07 (7 days old)
References	: http://lkml.org/lkml/2008/8/12/465
Handled-By	: Anton Vorontsov <avorontsov-hkdhdckH98+B+jHODAdFcQ@public.gmane.org>
Patch		: http://lkml.org/lkml/2008/8/13/344


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11358
Subject		: net: forcedeth call restore mac addr in nv_shutdown path
Submitter	: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-17 3:30 (7 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121894389018584&w=3D=
4
Handled-By	: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121894389018584&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11276
Subject		: build error: CONFIG_OPTIMIZE_INLINING=3Dy causes gcc 4.2 to =
do stupid things
Submitter	: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-06 17:18 (18 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121804329014332&w=3D=
4
		  http://lkml.org/lkml/2008/7/22/353
Handled-By	: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Patch		: http://lkml.org/lkml/2008/7/22/364


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11254
Subject		: KVM: fix userspace ABI breakage
Submitter	: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Date		: 21 Jul 2008 17:58:26 (0 days old)
References	: http://lkml.org/lkml/2008/7/21/197
Handled-By	: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Patch		: http://lkml.org/lkml/2008/7/21/197


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11207
Subject		: VolanoMark regression with 2.6.27-rc1
Submitter	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Date		: 2008-07-31 3:20 (24 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121747464114335&w=3D=
4
Handled-By	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
		  Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
		  Dhaval Giani <dhaval-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
		  Miao Xie <miaox-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121922991027344&w=3D4


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

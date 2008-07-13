From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: 2.6.26-rc9-git12: Reported regressions from 2.6.25
Date: Sun, 13 Jul 2008 19:59:35 +0200 (CEST)
Message-ID: <Y1jK9GMA8kJ.A.qOH.7GleIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

This message contains a list of some regressions from 2.6.25, for which=
 there
are no fixes in the mainline I know of.  If any of them have been fixed=
 already,
please let me know.

If you know of any other unresolved regressions from 2.6.25, please let=
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
  2008-07-13      170       30          20
  2008-07-09      167       30          21
  2008-07-06      166       38          26
  2008-06-29      158       43          31
  2008-06-22      148       39          28
  2008-06-14      130       37          28
  2008-06-07      125       48          33
  2008-05-31      115       52          31
  2008-05-24       94       47          28
  2008-05-18       80       51          37
  2008-05-11       53       46          34


Unresolved regressions
----------------------

Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11069
Subject		: ACPI Error under 2.6.26-rc*
Submitter	: Andre Prendel <andre_prendel-Mmb7MZpHnFY@public.gmane.org>
Date		: 2008-07-10 20:55 (4 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121572339107954&w=3D=
4
Handled-By	: Zhang Rui <rui.zhang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11065
Subject		: WARNING: at drivers/ata/libata-sff.c:1321 ata_sff_hsm_move+0=
x8f/0x661()
Submitter	: Greg Fitzgerald <netzdamon-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-07-09 19:36 (5 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11064
Subject		: resume failure on thinkpad x61s
Submitter	: maximilian attems <max-U9r9yeDMy7A@public.gmane.org>
Date		: 2008-07-09 13:24 (5 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121584459809675&w=3D=
4
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11055
Subject		: iwl4965 - connection doesn't work more than 10 seconds
Submitter	: Fran=C3=A7ois Valenduc <francois.valenduc-bmtTS95sd5BUM80lpFwj4w@public.gmane.org>
Date		: 2008-07-08 13:29 (6 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11045
Subject		: Bug in MPT Fusion 2.6.26-rc7 unbootable
Submitter	: Kurk <kurk-9AbUPqfR1/2XDw4h08c5KA@public.gmane.org>
Date		: 2008-07-06 11:22 (8 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11040
Subject		: 2.6.26-rc: host can not shutdown: ata problem
Submitter	: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-07-03 21:43 (11 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121512197225068&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11039
Subject		: 2.6.28-rc8-git3 forcedeth WARNING (kills the interface)
Submitter	: Brad Campbell <brad-UPaTOFvTz1K6c6uEtOJ/EA@public.gmane.org>
Date		: 2008-07-03 10:07 (11 days old)
References	: http://marc.info/?l=3Dlinux-netdev&m=3D121508714430752&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11023
Subject		: 2.6.26-rc8-git2 - kernel BUG at mm/page_alloc.c:585
Submitter	: Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Date		: 2008-07-02 11:55 (12 days old)
References	: http://lkml.org/lkml/2008/7/2/32
Handled-By	: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11009
Subject		: No console on Riva TNT since 2.6.26-0.rc4
Submitter	: Quel Qun <kelk1-Wuw85uim5zDR7s880joybQ@public.gmane.org>
Date		: 2008-06-26 20:04 (18 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121451344229718&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D10989
Subject		: kernel oopses when wiggling the mouse to make it known to hi=
dd
Submitter	: Daniel Vetter <daniel-/w4YWyX8dFk@public.gmane.org>
Date		: 2008-06-26 10:32 (18 days old)
Handled-By	: Marcel Holtmann <marcel-kz+m5ild9QBg9hUCZPvPmw@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D10960
Subject		: 2.6.26-rc: SPARC: Sun Ultra 10 can not boot
Submitter	: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-06-19 14:07 (25 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121388456519637&w=3D=
4
Handled-By	: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D10955
Subject		: v2.6.26-rc7: BUG task_struct: Poison overwritten
Submitter	: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-06-21 19:24 (23 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121407641925121&w=3D=
4
Handled-By	: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D10954
Subject		: hda_intel: azx_get_response timeout, switching to polling mo=
de: last cmd=3D0x011f000c
Submitter	: Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-06-21 2:05 (23 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121401399622190&w=3D=
4
		  http://marc.info/?t=3D121416231700010&r=3D1&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D10919
Subject		: [regression] display dimming is slow and laggy - Acer Travel=
mate 661lci
Submitter	: Maximilian Engelhardt <maxi-OwNUvPV92VfddJNmlsFzeA@public.gmane.org>
Date		: 2008-06-14 22:31 (30 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121348428828320&w=3D=
4
Handled-By	: Alexey Starikovskiy <astarikovskiy-l3A5Bk7waGM@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D10906
Subject		: repeatable slab corruption with LTP msgctl08
Submitter	: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Date		: 2008-06-12 5:13 (32 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121324775927704&w=3D=
4
Handled-By	: Pekka J Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
		  Christoph Lameter <clameter-sJ/iWh9BUns@public.gmane.org>
		  Manfred Spraul <manfred-nhLOkwUX5cPe2c5cEj3t2g@public.gmane.org>
		  Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D10865
Subject		: Oops trying to mount an ntfs partition on thinkpad
Submitter	: Alex Romosan <romosan-z2gvhuI27Wv/eO6KEJJvLQ@public.gmane.org>
Date		: 2008-06-05 14:47 (39 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121267834421414&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D10843
Subject		: Display artifacts on XOrg logout with PAT kernel and VESA fr=
amebuffer
Submitter	: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Date		: 2008-05-31 14:04 (44 days old)
References	: http://lkml.org/lkml/2008/6/7/206
		  http://lkml.org/lkml/2008/6/15/119
		  http://lkml.org/lkml/2008/6/23/160


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D10821
Subject		: rt25xx: lock dependency warning, association failure, and km=
alloc corruption
Submitter	: Christian Casteyde <casteyde.christian-GANU6spQydw@public.gmane.org>
Date		: 2008-05-29 14:30 (46 days old)
Handled-By	: Ivo van Doorn <IvDoorn-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D10741
Subject		: bug in `tty: BKL pushdown'?
Submitter	: Johannes Weiner <hannes-BfM5BwqdGSkPyMaTEpOvjQ@public.gmane.org>
Date		: 2008-05-18 2:16 (57 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121107706506181&w=3D=
4
		  http://lkml.org/lkml/2008/6/16/104
Handled-By	: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D10714
Subject		: powerpc: Badness seen on 2.6.26-rc2 with lockdep enabled
Submitter	: Balbir Singh <balbir-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Date		: 2008-05-14 12:57 (61 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121076917429133&w=3D=
4
Handled-By	: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>


Regressions with patches
------------------------

Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11072
Subject		: scsi-layer crash after usb storage device unplug
Submitter	: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Date		: 2008-07-12 01:50 (2 days old)
Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Patch		: http://bugzilla.kernel.org/show_bug.cgi?id=3D11072#c3


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11057
Subject		: vbetest fails on 2.6.26-rc9
Submitter	: PaX Team <pageexec-Y8qEzhMunLyT9ig0jae3mg@public.gmane.org>
Date		: 2008-07-08 19:46 (6 days old)
Handled-By	: Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Patch		: http://bugzilla.kernel.org/attachment.cgi?id=3D16792&action=3D=
view


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11042
Subject		: build issue #477 for v2.6.26-rc8-290-gb8a0b6c : input_event"=
 [drivers/media/dvb/ttpci/dvb-ttpci.ko] undefined!
Submitter	: Toralf F=C3=B6rster <toralf.foerster-Mmb7MZpHnFY@public.gmane.org>
Date		: 2008-07-05 15:25 (9 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121527158632563&w=3D=
4
Handled-By	: Oliver Endriss <o.endriss-Mmb7MZpHnFY@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121529790229531&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11024
Subject		: 2.6.25 to 2.6.26-rc8 regression (related to ahci and acpi _G=
TF)
Submitter	: Mathieu B=C3=A9rard <Mathieu.Berard-S9djqSf+cojYtjvyW6yDsg@public.gmane.org>
Date		: 2008-07-01 9:39 (13 days old)
References	: http://marc.info/?t=3D121490593600001&r=3D1&w=3D4
Handled-By	: Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121514631317343&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D10957
Subject		: pata_pcmcia with Sandisk Extreme III 8GB
Submitter	: Komuro <komurojun-mbn-dTzOdQ2U+/YAvxtiuMwx3w@public.gmane.org>
Date		: 2008-06-07 13:37 (37 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121284627119861&w=3D=
4
Handled-By	: Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
		  Dominik Brodowski <linux-X3ehHDuj6sIIGcDfoQAp7OTW4wlIGRCZ@public.gmane.org>
		  Komuro <komurojun-mbn-dTzOdQ2U+/YAvxtiuMwx3w@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121530861605673&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D10862
Subject		: forcedeth: lockdep warning on ethtool -s
Submitter	: Tobias Diedrich <ranma+kernel-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org>
Date		: 2008-06-01 8:37 (43 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121230964032247&w=3D=
4
Handled-By	: Tobias Diedrich <ranma+kernel-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org>
Patch		: http://lkml.org/lkml/2008/6/15/120


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D10725
Subject		: USB Mass storage mount fails: Write protect on
Submitter	: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-05-16 14:55 (59 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121095168003572&w=3D=
4
Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-scsi&m=3D121433068314568&w=3D2


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D10724
Subject		: ACPI: EC: GPE storm detected, disabling EC GPE
Submitter	: Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-05-16 6:17 (59 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121091875711824&w=3D=
4
		  http://lkml.org/lkml/2008/5/18/168
		  http://lkml.org/lkml/2008/5/25/195
Patch		: http://bugzilla.kernel.org/attachment.cgi?id=3D16364&action=3D=
view
		  http://bugzilla.kernel.org/attachment.cgi?id=3D16365&action=3Dview


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D10493
Subject		: mips BCM47XX compile error
Submitter	: Adrian Bunk <adrian.bunk-WgUW+8SLYMv1KXRcyAk9cg@public.gmane.org>
Date		: 2008-04-20 17:07 (85 days old)
References	: http://lkml.org/lkml/2008/4/20/34
		  http://lkml.org/lkml/2008/5/12/30
		  http://lkml.org/lkml/2008/5/18/131
		  http://lkml.org/lkml/2008/5/31/202
		  http://lkml.org/lkml/2008/6/7/154
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D120876451216558&w=3D2


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D9791
Subject		: Clock is running too fast^Wslow using acpi_pm clocksource
Submitter	: tosn00j02-O/bDAPVd7B0N+BqQ9rBEUg@public.gmane.org
Date		: 2008-05-03 05:09 (72 days old)
Handled-By	: Maciej W. Rozycki <macro-6z/3iImG2C8G8FEW9MqTrA@public.gmane.org>
Patch		: http://bugzilla.kernel.org/attachment.cgi?id=3D16180


=46or details, please visit the bug entries and follow the links given =
in
references.

As you can see, there is a Bugzilla entry for each of the listed regres=
sions.
There also is a Bugzilla entry used for tracking the regressions from 2=
=2E6.25,
unresolved as well as resolved, at:

http://bugzilla.kernel.org/show_bug.cgi?id=3D10492

Please let me know if there are any Bugzilla entries that should be add=
ed to
the list in there.

Thanks,
Rafael

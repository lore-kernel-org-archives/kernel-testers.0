From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: 2.6.27-rc1-git4: Reported regressions from 2.6.26
Date: Sat,  2 Aug 2008 19:59:41 +0200 (CEST)
Message-ID: <cbItfVMShGI.A.olC.UMLlIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

[Note that all of the suspend/resume regressions seem to result from the same
couple of bugs, or even one bug, but since that has not been confirmed yet,
they are listed separately.

Bug submitters also please note that if you CC your reports to
kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, they will be _much_ easier to track for me
and pretty much everybody else.]

This message contains a list of some regressions from 2.6.26, for which there
are no fixes in the mainline I know of.  If any of them have been fixed already,
please let me know.

If you know of any other unresolved regressions from 2.6.26, please let me know
either and I'll add them to the list.  Also, please let me know if any of the
entries below are invalid.

Each entry from the list will be sent additionally in an automatic reply to
this message with CCs to the people involved in reporting and handling the
issue.


Listed regressions statistics:

  Date          Total  Pending  Unresolved
  ----------------------------------------
  2008-08-02       47       31          20


Unresolved regressions
----------------------

Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11233
Subject		: serial/bfin_5xx.c build error
Submitter	: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Date		: 2008-08-02 11:18 (1 days old)
References	: http://lkml.org/lkml/2008/8/2/116


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11232
Subject		: Console Suspend - Resume Regression
Submitter	: Dionisus Torimens <djtm-hi6Y0CQ0nG0@public.gmane.org>
Date		: 2008-08-02 10:56 (1 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11231
Subject		: gspca_zc3xx oops - 2.6.27-rc1
Submitter	: Parag Warudkar <parag.warudkar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-02 16:22 (1 days old)
References	: http://marc.info/?l=linux-kernel&m=121769418920774&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11230
Subject		: Kconfig no longer outputs a .config with freshly updated defconfigs
Submitter	: Josh Boyer <jwboyer-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Date		: 2008-08-02 16:03 (1 days old)
References	: http://marc.info/?l=linux-kernel&m=121769306319391&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11229
Subject		: nfsd, v4: oops in find_acceptable_alias, ppc32 Linux, post-2.6.27-rc1
Submitter	: Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org>
Date		: 2008-08-02 12:03 (1 days old)
References	: http://marc.info/?l=linux-kernel&m=121767906702209&w=4
Handled-By	: J. Bruce Fields <bfields-uC3wQj2KruNg9hUCZPvPmw@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11228
Subject		: p54usb broken by commit b19fa1f
Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Date		: 2008-08-02 3:06 (1 days old)
References	: http://marc.info/?l=linux-kernel&m=121764647801783&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11224
Subject		: Only three cores found on quad-core machine.
Submitter	: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-01 18:15 (2 days old)
References	: http://marc.info/?l=linux-kernel&m=121761475224719&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11221
Subject		: 2.6.27-rc1 oops when plugging USB disk
Submitter	: Lukas Hejtmanek <xhejtman-8qz54MUs51PtwjQa/ONI9g@public.gmane.org>
Date		: 2008-08-01 13:35 (2 days old)
References	: http://marc.info/?l=linux-kernel&m=121759786223716&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11220
Subject		: Heavy suspend and io problems in 2.6.27-rc1-00156-g94ad374
Submitter	: Nico Schottelius <nico-xuaVFQXs+5hIG4jRRZ66WA@public.gmane.org>
Date		: 2008-07-31 21:05 (3 days old)
References	: http://marc.info/?l=linux-kernel&m=121753882422899&w=4
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11219
Subject		: KVM modules break emergency reboot
Submitter	: Zdenek Kabelac <zdenek.kabelac-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-01 20:25 (2 days old)
References	: http://marc.info/?l=linux-kernel&m=121762241105336&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11218
Subject		: drivers/serial/crisv10.c build error
Submitter	: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Date		: 2008-08-01 14:48 (2 days old)
References	: http://lkml.org/lkml/2008/8/1/431


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11215
Subject		: INFO: possible recursive locking detected ps2_command
Submitter	: Zdenek Kabelac <zdenek.kabelac-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-07-31 9:41 (3 days old)
References	: http://marc.info/?l=linux-kernel&m=121749737011637&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11214
Subject		: 2.6.27-rc1: I/O errors after resume
Submitter	: Miklos Szeredi <miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org>
Date		: 2008-07-31 13:04 (3 days old)
References	: http://marc.info/?l=linux-kernel&m=121750960431966&w=4
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11210
Subject		: libata badness
Submitter	: Kumar Gala <galak-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Date		: 2008-07-31 18:53 (3 days old)
References	: http://marc.info/?l=linux-ide&m=121753059307310&w=4
Handled-By	: Ben Dooks <ben-linux-elnMNo+KYs3YtjvyW6yDsg@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11209
Subject		: 2.6.27-rc1 process time accounting
Submitter	: Lukas Hejtmanek <xhejtman-8qz54MUs51PtwjQa/ONI9g@public.gmane.org>
Date		: 2008-07-31 10:43 (3 days old)
References	: http://marc.info/?l=linux-kernel&m=121750102917490&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11207
Subject		: VolanoMark regression with 2.6.27-rc1
Submitter	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Date		: 2008-07-31 3:20 (3 days old)
References	: http://marc.info/?l=linux-kernel&m=121747464114335&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11205
Subject		: x86: 2.6.27-rc1 does not build with gcc-3.2.3 any more
Submitter	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Date		: 2008-07-30 11:02 (4 days old)
References	: http://marc.info/?l=linux-kernel&m=121741584608240&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11191
Subject		: 2.6.26-git8: spinlock lockup in c1e_idle()
Submitter	: Mikhail Kshevetskiy <mikhail.kshevetskiy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-07-24 03:22 (10 days old)
References	: http://lkml.org/lkml/2008/7/23/317
Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11181
Subject		: power-off broken
Submitter	: Mircea Gherzan <mgherzan-0aWM6n0cdD1zL9IiBdi9GK9KmVUGpFAF@public.gmane.org>
Date		: 2008-07-30 13:57 (4 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11141
Subject		: no battery or DC status - Dell i1501
Submitter	: Gu Rui <chaos.proton-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-07-21 19:43 (13 days old)


Regressions with patches
------------------------

Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11235
Subject		: acer-wmi broken in latest git kernel on TravelMate 6492 (Insufficient arguments - method [WQAA])
Submitter	: Sven Wegener <sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org>
Date		: 2008-08-02 15:50:54 (1 days old)
References	: http://marc.info/?l=linux-kernel&m=121769235318600&w=4
Handled-By	: Carlos Corbacho <carlos-8YloKY0SPvpS8uBCpOlSjPXRex20P6io@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=121769591723088&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11227
Subject		: BUG on booting 2.6.27-rc1
Submitter	: Steve Wise <swise-7bPotxP6k4+P2YhJcF5u+vpXobYPEAuW@public.gmane.org>
Date		: 2008-08-01 20:56 (2 days old)
References	: http://marc.info/?l=linux-kernel&m=121762419708424&w=4
Handled-By	: Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=121762583111470&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11225
Subject		: mtdsuper.c BLOCK=n compile error
Submitter	: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Date		: 2008-08-01 15:33 (2 days old)
References	: http://lkml.org/lkml/2008/8/1/454
Handled-By	: David Woodhouse <dwmw2-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Patch		: http://lkml.org/lkml/2008/8/1/499


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11223
Subject		: sh: fix LIBGCC
Submitter	: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Date		: 2008-08-01 15:16 (2 days old)
References	: http://lkml.org/lkml/2008/8/1/446
Handled-By	: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Patch		: http://lkml.org/lkml/2008/8/1/446


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11216
Subject		: sh O= builds broken
Submitter	: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Date		: 2008-08-01 14:31 (2 days old)
References	: http://lkml.org/lkml/2008/8/1/426
Handled-By	: Paul Mundt <lethal-M7jkjyW5wf5g9hUCZPvPmw@public.gmane.org>
Patch		: http://lkml.org/lkml/2008/8/1/437


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11204
Subject		: Commit 76a2a6ee8a0660a29127f05989ac59ae1ce865fa breaks PXA270 (at least)?
Submitter	: Russell King - ARM Linux <linux-lFZ/pmaqli7XmaaqVzeoHQ@public.gmane.org>
Date		: 2008-07-29 22:31 (5 days old)
References	: http://marc.info/?l=linux-kernel&m=121737075314966&w=4
Handled-By	: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=121754090926333&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11201
Subject		: kernel BUG at arch/x86/kernel/io_apic_64.c:357!
Submitter	: Dhaval Giani <dhaval-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Date		: 2008-07-29 16:21 (5 days old)
References	: http://marc.info/?l=linux-kernel&m=121734804508255&w=4
Handled-By	: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
		  Eric W. Biederman <ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=121735924628623&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11197
Subject		: Oops in microcode sysfs registration
Submitter	: Alistair John Strachan <alistair-T7eSMZptz7IqdlJmJB21zg@public.gmane.org>
Date		: 2008-07-29 13:57 (5 days old)
References	: http://marc.info/?t=121734004900002&r=1&w=4
Handled-By	: Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=121741431005777&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11190
Subject		: [USB boot crash, -git] ecm_do_notify(), list_add corruption. prev-&gt;next should be next (ffff88003b8f82f8)
Submitter	: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Date		: 2008-07-22 13:40 (12 days old)
References	: http://marc.info/?l=linux-usb&m=121673409124827&w=4
Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
		  David Brownell <david-b-yBeKhBN/0LDR7s880joybQ@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=121708481823201&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11189
Subject		: sky2 WOL broken
Submitter	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
Date		: 2008-07-20 0:20:10 (14 days old)
References	: http://marc.info/?l=linux-next&m=121651311115104&w=4
Handled-By	: Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>
Patch		: http://marc.info/?l=linux-netdev&m=121694346401281&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11178
Subject		: Secondary hard drive fails during both hibernation and resume.
Submitter	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Date		: 2008-07-30 04:53 (4 days old)
Handled-By	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Patch		: http://bugzilla.kernel.org/attachment.cgi?id=17043&action=view


For details, please visit the bug entries and follow the links given in
references.

As you can see, there is a Bugzilla entry for each of the listed regressions.
There also is a Bugzilla entry used for tracking the regressions from 2.6.26,
unresolved as well as resolved, at:

http://bugzilla.kernel.org/show_bug.cgi?id=11167

Please let me know if there are any Bugzilla entries that should be added to
the list in there.

Thanks,
Rafael

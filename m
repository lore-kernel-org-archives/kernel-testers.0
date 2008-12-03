From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: 2.6.28-rc7-git2: Reported regressions 2.6.26 -> 2.6.27
Date: Wed,  3 Dec 2008 23:38:05 +0100 (CET)
Message-ID: <49ZBswjGjrL.A.ECE.BGyNJB@chimera>
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
  2008-12-04      202       16          14
  2008-11-22      199       12          10
  2008-11-16      199       18          14
  2008-11-09      196       28          23
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

Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D12149
Subject		: suspend/hibernate issues with ThinkPad T41
Submitter	: Toralf F=F6rster <toralf.foerster-Mmb7MZpHnFY@public.gmane.org>
Date		: 2008-12-03 09:59 (1 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122805295416976&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D12121
Subject		: Hibernation regression on Toshiba Portege R500
Submitter	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
Date		: 2008-11-29 07:00 (5 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122818451003644&w=3D=
4
Handled-By	: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D12048
Subject		: Regression in bonding between 2.6.26.8 and 2.6.27.6
Submitter	: Jesper Krogh <jesper-Q2TZfHgGEy4@public.gmane.org>
Date		: 2008-11-16 9:41 (18 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122682977001048&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D12039
Subject		: Regression: USB/DVB 2.6.26.8 --&gt; 2.6.27.6
Submitter	: David <david-Os2QIKb4eqJd3aXB8m+yKQ@public.gmane.org>
Date		: 2008-11-14 20:20 (20 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122669568022274&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11983
Subject		: iwlagn: wrong command queue 31, command id 0x0
Submitter	: Matt Mackall <mpm-VDJrAJ4Gl5ZBDgjK7y7TUQ@public.gmane.org>
Date		: 2008-11-06 4:16 (28 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122598672815803&w=3D=
4
		  http://www.intellinuxwireless.org/bugzilla/show_bug.cgi?id=3D1703
Handled-By	: reinette chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11886
Subject		: without serial console system doesn't  poweroff
Submitter	: Daniel Smolik <marvin-0pWKB23IDFjrBKCeMvbIDA@public.gmane.org>
Date		: 2008-10-29 04:06 (36 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11876
Subject		: RCU hang on cpu re-hotplug with 2.6.27rc8
Submitter	: Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
Date		: 2008-10-06 23:28 (59 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122333610602399&w=3D=
2
Handled-By	: Paul E. McKenney <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11795
Subject		: ks959-sir dongle no longer works under 2.6.27 (REGRESSION)
Submitter	: Alex Villacis Lasso <avillaci-x0m+Mc+nT7uljOmnV8AmnkElSqmLX1BE@public.gmane.org>
Date		: 2008-10-20 10:49 (45 days old)
Handled-By	: Samuel Ortiz <samuel-jcdQHdrhKHMdnm+yROfE0A@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11698
Subject		: 2.6.27-rc7, freezes with &gt; 1 s2ram cycle
Submitter	: Soeren Sonnenburg <kernel-YxZl4NRrHdw@public.gmane.org>
Date		: 2008-09-29 11:29 (66 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122268780926859&w=3D=
4
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11664
Subject		: acpi errors and random freeze on sony vaio sr
Submitter	: Giovanni Pellerano <giovanni.pellerano-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-09-28 03:48 (67 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11569
Subject		: Panic stop CPUs regression
Submitter	: Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
Date		: 2008-09-02 13:49 (93 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122036356127282&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11543
Subject		: kernel panic: softlockup in tick_periodic() ???
Submitter	: Joshua Hoblitt <j_kernel-amK9oZtvyLhBDgjK7y7TUQ@public.gmane.org>
Date		: 2008-09-11 16:46 (84 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D122117786124326&w=3D=
4
Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
		  Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
		  Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
		  Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11215
Subject		: INFO: possible recursive locking detected ps2_command
Submitter	: Zdenek Kabelac <zdenek.kabelac-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-07-31 9:41 (126 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121749737011637&w=3D=
4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11207
Subject		: VolanoMark regression with 2.6.27-rc1
Submitter	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Date		: 2008-07-31 3:20 (126 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D121747464114335&w=3D=
4
Handled-By	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
		  Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
		  Dhaval Giani <dhaval-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
		  Miao Xie <miaox-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>


Regressions with patches
------------------------

Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D12099
Subject		: Nokia 5310 storage-mode
Submitter	: Robson Roberto Souza Peixoto <robsonpeixoto-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-11-25 01:07 (9 days old)
Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D122762731503933&w=3D4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11865
Subject		: WOL for E100 Doesn't Work Anymore
Submitter	: roger <rogerx-VThn6mlTRQFChFL4AGkBsw@public.gmane.org>
Date		: 2008-10-26 21:56 (39 days old)
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
Patch		: http://bugzilla.kernel.org/attachment.cgi?id=3D18646&action=3D=
view


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

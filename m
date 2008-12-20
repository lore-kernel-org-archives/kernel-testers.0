From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: 2.6.28-rc9-git1: Reported regressions 2.6.26 -> 2.6.27
Date: Sat, 20 Dec 2008 23:07:13 +0100 (CET)
Message-ID: <_EB9bLpq_z.A.hAC.NkYTJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

This message contains a list of some regressions introduced between 2.6.26 and
2.6.27, for which there are no fixes in the mainline I know of.  If any of them
have been fixed already, please let me know.

If you know of any other unresolved regressions introduced between 2.6.26
and 2.6.27, please let me know either and I'll add them to the list.
Also, please let me know if any of the entries below are invalid.

Each entry from the list will be sent additionally in an automatic reply to
this message with CCs to the people involved in reporting and handling the
issue.


Listed regressions statistics:

  Date          Total  Pending  Unresolved
  ----------------------------------------
  2008-12-21      203       13           9
  2008-12-13      201       11           8
  2008-12-07      200       14          12
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

Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12266
Subject		: Red leds at harddisk bays on SR1530HSH after update to 2.6.27.x
Submitter	: Badalian Vyacheslav <slavon-/OLsYea6LCEzYF+gKu1hbQ@public.gmane.org>
Date		: 2008-12-18 11:32 (3 days old)
References	: http://marc.info/?l=linux-kernel&m=122959999712523&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12048
Subject		: Regression in bonding between 2.6.26.8 and 2.6.27.6
Submitter	: Jesper Krogh <jesper-Q2TZfHgGEy4@public.gmane.org>
Date		: 2008-11-16 9:41 (35 days old)
References	: http://marc.info/?l=linux-kernel&m=122682977001048&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12039
Subject		: Regression: USB/DVB 2.6.26.8 --&gt; 2.6.27.6
Submitter	: David <david-Os2QIKb4eqJd3aXB8m+yKQ@public.gmane.org>
Date		: 2008-11-14 20:20 (37 days old)
References	: http://marc.info/?l=linux-kernel&m=122669568022274&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11886
Subject		: without serial console system doesn't  poweroff
Submitter	: Daniel Smolik <marvin-0pWKB23IDFjrBKCeMvbIDA@public.gmane.org>
Date		: 2008-10-29 04:06 (53 days old)


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11876
Subject		: RCU hang on cpu re-hotplug with 2.6.27rc8
Submitter	: Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
Date		: 2008-10-06 23:28 (76 days old)
References	: http://marc.info/?l=linux-kernel&m=122333610602399&w=2
Handled-By	: Paul E. McKenney <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11795
Subject		: ks959-sir dongle no longer works under 2.6.27 (REGRESSION)
Submitter	: Alex Villacis Lasso <avillaci-x0m+Mc+nT7uljOmnV8AmnkElSqmLX1BE@public.gmane.org>
Date		: 2008-10-20 10:49 (62 days old)
Handled-By	: Samuel Ortiz <samuel-jcdQHdrhKHMdnm+yROfE0A@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11698
Subject		: 2.6.27-rc7, freezes with more than 1 s2ram cycle
Submitter	: Soeren Sonnenburg <kernel-YxZl4NRrHdw@public.gmane.org>
Date		: 2008-09-29 11:29 (83 days old)
References	: http://marc.info/?l=linux-kernel&m=122268780926859&w=4
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11569
Subject		: Panic stop CPUs regression
Submitter	: Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
Date		: 2008-09-02 13:49 (110 days old)
References	: http://marc.info/?l=linux-kernel&m=122036356127282&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11215
Subject		: INFO: possible recursive locking detected ps2_command
Submitter	: Zdenek Kabelac <zdenek.kabelac-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-07-31 9:41 (143 days old)
References	: http://marc.info/?l=linux-kernel&m=121749737011637&w=4


Regressions with patches
------------------------

Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12261
Subject		: kernel panics with net_rx_action on kernels above 2.6.26
Submitter	: Alexander Huemer <alexander.huemer-CeK7gDkSoXheoWH0uzbU5w@public.gmane.org>
Date		: 2008-12-13 18:43 (8 days old)
References	: http://marc.info/?l=linux-kernel&m=122919424932016&w=4
Handled-By	: Jarek Poplawski <jarkao2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Patch		: http://marc.info/?l=linux-net&m=122934825227768&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12200
Subject		: BUG: bad unlock balance detected! e1000e
Submitter	: Zdenek Kabelac <zdenek.kabelac-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-12-08 11:24 (13 days old)
References	: http://marc.info/?l=linux-kernel&m=122873549700644&w=4
Handled-By	: Jeff Kirsher <jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=122905927102071&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12099
Subject		: Nokia 5310 storage-mode
Submitter	: Robson Roberto Souza Peixoto <robsonpeixoto-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-11-25 01:07 (26 days old)
Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=122762731503933&w=4


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11865
Subject		: WOL for E100 Doesn't Work Anymore
Submitter	: roger <rogerx-VThn6mlTRQFChFL4AGkBsw@public.gmane.org>
Date		: 2008-10-26 21:56 (56 days old)
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
Patch		: http://bugzilla.kernel.org/attachment.cgi?id=18646&action=view


For details, please visit the bug entries and follow the links given in
references.

As you can see, there is a Bugzilla entry for each of the listed regressions.
There also is a Bugzilla entry used for tracking the regressions introduced
between 2.6.26 and 2.6.27, unresolved as well as resolved, at:

http://bugzilla.kernel.org/show_bug.cgi?id=11167

Please let me know if there are any Bugzilla entries that should be added to
the list in there.

Thanks,
Rafael

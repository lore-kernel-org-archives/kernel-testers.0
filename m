From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #10862] forcedeth: lockdep warning on ethtool -s
Date: Sun, 13 Jul 2008 20:00:46 +0200 (CEST)
Message-ID: <c6ZRbn0adb.A.R9.8IleIB@albercik>
References: <Y1jK9GMA8kJ.A.qOH.7GleIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Y1jK9GMA8kJ.A.qOH.7GleIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Tobias Diedrich <ranma+kernel-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.25.  Please verify if it still should be listed.


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=10862
Subject		: forcedeth: lockdep warning on ethtool -s
Submitter	: Tobias Diedrich <ranma+kernel-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org>
Date		: 2008-06-01 8:37 (43 days old)
References	: http://marc.info/?l=linux-kernel&m=121230964032247&w=4
Handled-By	: Tobias Diedrich <ranma+kernel-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org>
Patch		: http://lkml.org/lkml/2008/6/15/120


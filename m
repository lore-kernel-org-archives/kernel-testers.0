From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #13833] Kernel Oops when trying to suspend with ubifs mounted on block2mtd mtd device
Date: Sun,  9 Aug 2009 22:44:23 +0200 (CEST)
Message-ID: <u1L1PAbl8zG.A.o6D.Fk1fKB@chimera>
References: <AuPdDySr74O.A.5LC.Pj1fKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754151AbZHIXis@vger.kernel.org>
In-Reply-To: <AuPdDySr74O.A.5LC.Pj1fKB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, David Brownell <david-b@pacbell.net>, David Woodhouse <David.Woodhouse@intel.com>, Eric Miao <eric.y.miao@gmail.com>, Pavel Machek <pavel@ucw.cz>, Tobias Diedrich <ranma@tdiedrich.de>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.30.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13833
Subject		: Kernel Oops when trying to suspend with ubifs mounted on block2mtd mtd device
Submitter	: Tobias Diedrich <ranma@tdiedrich.de>
Date		: 2009-07-15 14:20 (26 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=15bce40cb3133bcc07d548013df97e4653d363c1
References	: http://marc.info/?l=linux-kernel&m=124766049207807&w=4
		  http://marc.info/?l=linux-kernel&m=124704927819769&w=4


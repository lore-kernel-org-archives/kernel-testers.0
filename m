From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14630] sched_rt_periodic_timer vs cpu hotplug
Date: Tue, 29 Dec 2009 16:28:45 +0100 (CET)
Message-ID: <srmJ8vMxKPH.A.UwD.jxhOLB@chimera>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753260AbZL2Pdc@vger.kernel.org>
In-Reply-To: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>, Peter Zijlstra <peterz@infradead.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.31 and 2.6.32.

The following bug entry is on the current list of known regressions
introduced between 2.6.31 and 2.6.32.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14630
Subject		: sched_rt_periodic_timer vs cpu hotplug
Submitter	: Heiko Carstens <heiko.carstens@de.ibm.com>
Date		: 2009-11-11 10:18 (49 days old)
References	: http://marc.info/?l=linux-kernel&m=125793470309588&w=4
Handled-By	: Peter Zijlstra <peterz@infradead.org>
Patch		: http://patchwork.kernel.org/patch/60250/


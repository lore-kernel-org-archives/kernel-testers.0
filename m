From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14377] "conservative" cpufreq governor broken
Date: Mon, 12 Oct 2009 01:01:10 +0200 (CEST)
Message-ID: <L6tb-VyKHZK.A.lrB.Rzl0KB@chimera>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754440AbZJKXGz@vger.kernel.org>
In-Reply-To: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Eero Nurkkala <ext-eero.nurkkala@nokia.com>, Rik van Riel <riel@redhat.com>, Steven Noonan <steven@uplinklabs.net>, Thomas Gleixner <tglx@linutronix.de>, Venkatesh Pallipadi <venkatesh.pallipadi@intel.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.30 and 2.6.31.

The following bug entry is on the current list of known regressions
introduced between 2.6.30 and 2.6.31.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14377
Subject		: "conservative" cpufreq governor broken
Submitter	: Steven Noonan <steven@uplinklabs.net>
Date		: 2009-10-05 16:32 (7 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=f2e21c9610991e95621a81407cdbab881226419b
References	: http://marc.info/?l=linux-kernel&m=125476067108252&w=4


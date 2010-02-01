From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14297] console resume broken since ba15ab0e8d
Date: Mon,  1 Feb 2010 01:38:47 +0100 (CET)
Message-ID: <de962C6zBxL.A.rcH.dJiZLB@chimera>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <UgwvXSBS_tM.A.alD.1EiZLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Alan Cox <alan@linux.intel.com>, Deepak Saxena <dsaxena@laptop.org>, Greg Kroah-Hartman <gregkh@suse.de>, Sascha Hauer <s.hauer@pengutronix.de>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.31 and 2.6.32.

The following bug entry is on the current list of known regressions
introduced between 2.6.31 and 2.6.32.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14297
Subject		: console resume broken since ba15ab0e8d
Submitter	: Sascha Hauer <s.hauer@pengutronix.de>
Date		: 2009-09-30 15:11 (124 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=ba15ab0e8de0d4439a91342ad52d55ca9e313f3d
References	: http://marc.info/?l=linux-kernel&m=125432349404060&w=4


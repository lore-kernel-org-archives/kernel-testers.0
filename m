From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15032] Oops in uart_resume_port() on resume
Date: Sun, 24 Jan 2010 23:04:35 +0100 (CET)
Message-ID: <hE3x9c-4KZM.A.MPG.hKMXLB@chimera>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754589Ab0AXWV4@vger.kernel.org>
In-Reply-To: <md-TZL3UUvL.A.FiE.xJMXLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Alan Cox <alan@linux.intel.com>, Deepak Saxena <dsaxena@laptop.org>, Greg Kroah-Hartman <gregkh@suse.de>, Zdenek Kabelac <zdenek.kabelac@gmail.com>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15032
Subject		: Oops in uart_resume_port() on resume
Submitter	: Zdenek Kabelac <zdenek.kabelac@gmail.com>
Date		: 2010-01-04 15:47 (21 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=ba15ab0e8de0d4439a91342ad52d55ca9e313f3d
References	: http://marc.info/?l=linux-kernel&m=126262008815689&w=4


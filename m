From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14135] NULL pointer dereference in ima_counts_put
Date: Sun,  6 Sep 2009 19:24:57 +0200 (CEST)
Message-ID: <Vm51Upp4EV.A.bEC.EfBpKB@chimera>
References: <2ehA7xoGvXL.A.4PB.3eBpKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758596AbZIFU3a@vger.kernel.org>
In-Reply-To: <2ehA7xoGvXL.A.4PB.3eBpKB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Ciprian Docan <docan@eden.rutgers.edu>, Eric Paris <eparis@redhat.com>, Frans Pop <elendil@planet.nl>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.30.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14135
Subject		: NULL pointer dereference in ima_counts_put
Submitter	: Ciprian Docan <docan@eden.rutgers.edu>
Date		: 2009-09-02 13:49 (5 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=94e5d714f604d4cb4cb13163f01ede278e69258b
References	: http://marc.info/?l=linux-kernel&m=125190146028116&w=4


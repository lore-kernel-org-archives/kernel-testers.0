From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15127] Bluetooth: sleeping function called from invalid context
Date: Mon,  1 Feb 2010 01:43:21 +0100 (CET)
Message-ID: <de962C6zBxL.A.lME.FFiZLB@chimera>
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
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, David John <davidjon@xenontk.org>, Luiz Augusto von Dentz <luiz.dentz@openbossa.org>, Marcel Holtmann <marcel@holtmann.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.31 and 2.6.32.

The following bug entry is on the current list of known regressions
introduced between 2.6.31 and 2.6.32.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15127
Subject		: Bluetooth: sleeping function called from invalid context
Submitter	: David John <davidjon@xenontk.org>
Date		: 2010-01-12 9:19 (20 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=9e726b17422bade75fba94e625cd35fd1353e682
References	: http://marc.info/?l=linux-kernel&m=126328727021949&w=4


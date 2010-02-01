From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14998] Caught 32-bit read from uninitialized memory in acpi_system_read_event -- 2.6.31 regression
Date: Mon,  1 Feb 2010 01:43:18 +0100 (CET)
Message-ID: <de962C6zBxL.A.i3E.hFiZLB@chimera>
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
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, al <al@dizzy.pdmi.ras.ru>, Andrew Morton <akpm@linux-foundation.org>, Christian Casteyde <casteyde.christian@free.fr>, Vegard Nossum <vegard.nossum@gmail.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.31 and 2.6.32.

The following bug entry is on the current list of known regressions
introduced between 2.6.31 and 2.6.32.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14998
Subject		: Caught 32-bit read from uninitialized memory in acpi_system_read_event -- 2.6.31 regression
Submitter	: Christian Casteyde <casteyde.christian@free.fr>
Date		: 2010-01-06 21:40 (26 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=eca6f534e61919b28fb21aafbd1c2983deae75be


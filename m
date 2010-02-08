From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14998] Caught 32-bit read from uninitialized memory in acpi_system_read_event -- 2.6.31 regression
Date: Mon,  8 Feb 2010 01:28:20 +0100 (CET)
Message-ID: <iuJeop2ribM.A.cZ.0Y1bLB@chimera>
References: <2uzMDuY-7_O.A.M1G.7X1bLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2uzMDuY-7_O.A.M1G.7X1bLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, al <al@dizzy.pdmi.ras.ru>, Andrew Morton <akpm@linux-foundation.org>, Christian Casteyde <casteyde.christian@free.fr>, Vegard Nossum <vegard.nossum@gmail.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.31 and 2.6.32.

The following bug entry is on the current list of known regressions
introduced between 2.6.31 and 2.6.32.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14998
Subject		: Caught 32-bit read from uninitialized memory in acpi_system_read_event -- 2.6.31 regression
Submitter	: Christian Casteyde <casteyde.christian@free.fr>
Date		: 2010-01-06 21:40 (33 days old)
First-Bad-Commit: http://git.kernel.org/git/linus/eca6f534e61919b28fb21aafbd1c2983deae75be


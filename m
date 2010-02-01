From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14668] Resume from disk hangs in acpi_ex_acquire_global_lock
Date: Mon,  1 Feb 2010 01:43:12 +0100 (CET)
Message-ID: <de962C6zBxL.A.DMG.LHiZLB@chimera>
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
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maxim Levitsky <maximlevitsky@gmail.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.31 and 2.6.32.

The following bug entry is on the current list of known regressions
introduced between 2.6.31 and 2.6.32.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14668
Subject		: Resume from disk hangs in acpi_ex_acquire_global_lock
Submitter	: Maxim Levitsky <maximlevitsky@gmail.com>
Date		: 2009-11-22 21:25 (71 days old)


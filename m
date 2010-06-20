From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #16147] ksoftirq hogs the CPU
Date: Mon, 21 Jun 2010 00:34:31 +0200 (CEST)
Message-ID: <rHrHQMIU4rI.A.l8H.OapHMB@chimera>
References: <g77CuMUl7QI.A.qMH.4ZpHMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <g77CuMUl7QI.A.qMH.4ZpHMB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, Corey Minyard <cminyard@mvista.com>, Linus Torvalds <torvalds@linux-foundation.org>, Martin Wilck <martin.wilck@ts.fujitsu.com>, Thomas Jarosch <thomas.jarosch@intra2net.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.33 and 2.6.34.

The following bug entry is on the current list of known regressions
introduced between 2.6.33 and 2.6.34.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16147
Subject		: ksoftirq hogs the CPU
Submitter	: Thomas Jarosch <thomas.jarosch@intra2net.com>
Date		: 2010-06-07 15:17 (14 days old)
First-Bad-Commit: http://git.kernel.org/linus/ae74e823cb7d4cd476f623fce9a38f625f6c09a8
Handled-By	: Martin Wilck <martin.wilck@ts.fujitsu.com>
Patch		: https://bugzilla.kernel.org/attachment.cgi?id=26732


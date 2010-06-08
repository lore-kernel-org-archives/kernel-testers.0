From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #16129] BUG: using smp_processor_id() in preemptible [00000000] code: jbd2/sda2
Date: Wed,  9 Jun 2010 00:10:18 +0200 (CEST)
Message-ID: <C9Q3XEnHPeG.A.iXG.b8rDMB@chimera>
References: <Rlf_Qjov7bG.A.a8F.I8rDMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <Rlf_Qjov7bG.A.a8F.I8rDMB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Jan Kreuzer <kontrollator@gmx.de>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.34.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16129
Subject		: BUG: using smp_processor_id() in preemptible [00000000] code: jbd2/sda2
Submitter	: Jan Kreuzer <kontrollator@gmx.de>
Date		: 2010-06-05 06:15 (4 days old)


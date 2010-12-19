From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #16971] qla4xxx compile failure on 32-bit PowerPC: missing readq and writeq
Date: Sun, 19 Dec 2010 13:50:22 +0100 (CET)
Message-ID: <xqq2Z3iR9HJ.A.pL.C4fDNB@chimera>
References: <ZRNlsjykcOD.A.b-F.20fDNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <ZRNlsjykcOD.A.b-F.20fDNB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Meelis Roos <mroos@linux.ee>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.35 and 2.6.36.

The following bug entry is on the current list of known regressions
introduced between 2.6.35 and 2.6.36.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16971
Subject		: qla4xxx compile failure on 32-bit PowerPC: missing readq and writeq
Submitter	: Meelis Roos <mroos@linux.ee>
Date		: 2010-08-19 21:03 (123 days old)
Message-ID	: <<<alpine.SOC.1.00.1008192359310.19654@math.ut.ee>>>
References	: http://marc.info/?l=linux-kernel&m=128225184900892&w=2
Patch		: http://marc.info/?l=linux-scsi&m=128590267608876&w=2


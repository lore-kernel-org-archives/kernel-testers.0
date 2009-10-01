From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14275] kernel>=2.6.31: ahci.c: do not force unconditionally sb600 to 32bit dma any more?
Date: Thu,  1 Oct 2009 21:56:05 +0200 (CEST)
Message-ID: <COE24pZSBH.A.OnH.vMTxKB@chimera>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755701AbZJAXKz@vger.kernel.org>
In-Reply-To: <3onW63eFtRF.A.xXH.oMTxKB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, gabriele balducci <balducci@units.it>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.30 and 2.6.31.

The following bug entry is on the current list of known regressions
introduced between 2.6.30 and 2.6.31.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14275
Subject		: kernel>=2.6.31: ahci.c: do not force unconditionally sb600 to 32bit dma any more?
Submitter	: gabriele balducci <balducci@units.it>
Date		: 2009-09-30 15:02 (2 days old)
Patch		: http://bugzilla.kernel.org/show_bug.cgi?id=14275#c0


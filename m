From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14294] kernel BUG at drivers/ide/ide-disk.c:187
Date: Tue, 17 Nov 2009 00:01:20 +0100 (CET)
Message-ID: <OWmO9uyC1hM.A.NaC.6ndALB@chimera>
References: <ipicVA1QUFF.A.zWB.1mdALB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755886AbZKPXTe@vger.kernel.org>
In-Reply-To: <ipicVA1QUFF.A.zWB.1mdALB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, David Miller <davem@davemloft.net>, Santiago Garcia Mantinan <manty@manty.net>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.30 and 2.6.31.

The following bug entry is on the current list of known regressions
introduced between 2.6.30 and 2.6.31.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14294
Subject		: kernel BUG at drivers/ide/ide-disk.c:187
Submitter	: Santiago Garcia Mantinan <manty@manty.net>
Date		: 2009-09-30 11:05 (48 days old)
References	: http://marc.info/?l=linux-kernel&m=125430926311466&w=4
Handled-By	: David Miller <davem@davemloft.net>


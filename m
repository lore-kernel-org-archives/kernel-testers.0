From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #20342] [LogFS] [2.6.36-rc7] Deadlock in logfs_get_wblocks, hold and wait on same lock super->s_write_mutex
Date: Sun, 19 Dec 2010 13:50:24 +0100 (CET)
Message-ID: <xqq2Z3iR9HJ.A.g9G.E2fDNB@chimera>
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
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Prasad Joshi <prasadjoshi124@gmail.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.35 and 2.6.36.

The following bug entry is on the current list of known regressions
introduced between 2.6.35 and 2.6.36.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=20342
Subject		: [LogFS] [2.6.36-rc7] Deadlock in logfs_get_wblocks, hold and wait on same lock super->s_write_mutex
Submitter	: Prasad Joshi <prasadjoshi124@gmail.com>
Date		: 2010-10-13 9:49 (68 days old)
Message-ID	: <AANLkTinvsMxTxEbDEFmb5M-6fYjdRvErU==Zs7+qANkV@mail.gmail.com>
References	: http://marc.info/?l=linux-kernel&m=128696335024718&w=2
Patch		: https://patchwork.kernel.org/patch/328682/


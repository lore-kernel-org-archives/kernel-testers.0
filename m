From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14624] ath9k: BUG kmalloc-8192: Poison overwritten
Date: Sun, 10 Jan 2010 23:56:12 +0100 (CET)
Message-ID: <CXIfLt-ygXM.A.BlD.ZilSLB@chimera>
References: <nzLqtSp97aP.A.RGB.hglSLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755246Ab0AJXLs@vger.kernel.org>
In-Reply-To: <nzLqtSp97aP.A.RGB.hglSLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, "Luis R. Rodriguez" <mcgrof@gmail.com>, Miles Lane <miles.lane@gmail.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.31 and 2.6.32.

The following bug entry is on the current list of known regressions
introduced between 2.6.31 and 2.6.32.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14624
Subject		: ath9k: BUG kmalloc-8192: Poison overwritten
Submitter	: Miles Lane <miles.lane@gmail.com>
Date		: 2009-11-12 4:58 (60 days old)
References	: http://marc.info/?l=linux-kernel&m=125800196520396&w=4


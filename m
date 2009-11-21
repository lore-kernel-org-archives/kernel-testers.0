From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14480] 2 locks held by cat -- running "find /sys | head -c 4" --> system hang
Date: Sat, 21 Nov 2009 15:51:28 +0100 (CET)
Message-ID: <l2_yP_tdgYK.A.aPD.n7_BLB@chimera>
References: <pohDdrcORVG.A.U2B.-6_BLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755452AbZKUPH7@vger.kernel.org>
In-Reply-To: <pohDdrcORVG.A.U2B.-6_BLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Chris Wilson <chris@chris-wilson.co.uk>, Jesse Barnes <jbarnes@virtuousgeek.org>, Miles Lane <miles.lane@gmail.com>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.31.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14480
Subject		: 2 locks held by cat -- running "find /sys | head -c 4" --> system hang
Submitter	: Miles Lane <miles.lane@gmail.com>
Date		: 2009-10-20 16:11 (33 days old)
References	: http://marc.info/?l=linux-kernel&m=125605511728088&w=4
Handled-By	: Chris Wilson <chris@chris-wilson.co.uk>
Patch		: http://patchwork.kernel.org/patch/54974/


From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14951] lockdep possible recursive lock in slab parent->list->rlock
Date: Tue, 29 Dec 2009 16:10:05 +0100 (CET)
Message-ID: <NJVdobuNFNK.A.pdF.3mhOLB@chimera>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752938AbZL2PQH@vger.kernel.org>
In-Reply-To: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Andi Kleen <andi@firstfloor.org>, Pekka Enberg <penberg@cs.helsinki.fi>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14951
Subject		: lockdep possible recursive lock in slab parent->list->rlock
Submitter	: Andi Kleen <andi@firstfloor.org>
Date		: 2009-12-27 12:06 (3 days old)
References	: http://marc.info/?l=linux-kernel&m=126191560531463&w=4
Handled-By	: Pekka Enberg <penberg@cs.helsinki.fi>
Patch		: http://patchwork.kernel.org/patch/69829/


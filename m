From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14430] sync() hangs in bdi_sched_wait
Date: Mon, 16 Nov 2009 23:37:42 +0100 (CET)
Message-ID: <xXQGFmujPl.A.ggH.iTdALB@chimera>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755275AbZKPXB4@vger.kernel.org>
In-Reply-To: <GUZt44bIwCE.A.vLF.pSdALB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Petr Vandrovec <petr@vandrovec.name>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.31.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14430
Subject		: sync() hangs in bdi_sched_wait
Submitter	: Petr Vandrovec <petr@vandrovec.name>
Date		: 2009-10-17 19:14 (31 days old)


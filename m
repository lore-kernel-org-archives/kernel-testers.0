From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #11849] default IRQ affinity change in v2.6.27 (breaking several SMP PPC based systems)
Date: Sat, 13 Dec 2008 17:29:56 +0100 (CET)
Message-ID: <T1gm2CtAHBF.A.TS.56_QJB@chimera>
References: <u7kfEgp36eE.A.qpG.Y4_QJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752025AbYLMShe@vger.kernel.org>
In-Reply-To: <u7kfEgp36eE.A.qpG.Y4_QJB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Chris Snook <csnook@redhat.com>, Kumar Gala <galak@kernel.crashing.org>, Max Krasnyansky <maxk@qualcomm.com>, Scott Wood <scottwood@freescale.com>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.27.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11849
Subject		: default IRQ affinity change in v2.6.27 (breaking several SMP PPC based systems)
Submitter	: Kumar Gala <galak@kernel.crashing.org>
Date		: 2008-10-24 12:45 (51 days old)
References	: http://marc.info/?l=linux-kernel&m=122485245924125&w=4


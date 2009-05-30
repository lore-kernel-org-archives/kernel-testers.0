From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #13378] kernel/async.c broke pata_legacy.c
Date: Sat, 30 May 2009 21:37:36 +0200 (CEST)
Message-ID: <LEcEO2518_I.A.8UD.tIbIKB@chimera>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-ide-owner@vger.kernel.org>
In-Reply-To: <4to6E2myxvG.A.muC.aIbIKB@chimera>
Content-Disposition: inline
Sender: linux-ide-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, IDE <linux-ide@vger.kernel.org>, James Bottomley <James.Bottomley@hansenpartnership.com>, Mikael Pettersson <mikpe@it.uu.se>, Tejun Heo <tj@kernel.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.29.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13378
Subject		: kernel/async.c broke pata_legacy.c
Submitter	: Mikael Pettersson <mikpe@it.uu.se>
Date		: 2009-05-24 16:13 (7 days old)
References	: http://marc.info/?l=linux-kernel&m=124318186507210&w=4
Handled-By	: James Bottomley <James.Bottomley@hansenpartnership.com>
Patch		: http://patchwork.kernel.org/patch/25699/



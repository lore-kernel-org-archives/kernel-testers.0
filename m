From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15017] kexec regression, radeon/kms irq related (bisected)
Date: Sun, 24 Jan 2010 23:04:35 +0100 (CET)
Message-ID: <hE3x9c-4KZM.A.kWG.mKMXLB@chimera>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754287Ab0AXWRR@vger.kernel.org>
In-Reply-To: <md-TZL3UUvL.A.FiE.xJMXLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Alex Deucher <alexdeucher@gmail.com>, Dave Airlie <airlied@redhat.com>, Markus Trippelsdorf <markus@trippelsdorf.de>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15017
Subject		: kexec regression, radeon/kms irq related (bisected)
Submitter	: Markus Trippelsdorf <markus@trippelsdorf.de>
Date		: 2010-01-09 18:49 (16 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=d8f60cfc93452d0554f6a701aa8e3236cbee4636


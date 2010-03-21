From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15585] [Bisected Regression in 2.6.32.8] i915 with KMS enabled causes memorycorruption when resuming from suspend-to-disk
Date: Sun, 21 Mar 2010 21:30:53 +0100 (CET)
Message-ID: <hTwaxgnIZ2O.A.aND.0NopLB@chimera>
References: <QQGfxbJf48H.A.NFD.uNopLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <QQGfxbJf48H.A.NFD.uNopLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Chris Wilson <chris@chris-wilson.co.uk>, "M. Vefa Bicakci" <bicave@superonline.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.32 and 2.6.33.

The following bug entry is on the current list of known regressions
introduced between 2.6.32 and 2.6.33.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15585
Subject		: [Bisected Regression in 2.6.32.8] i915 with KMS enabled causes memorycorruption when resuming from suspend-to-disk
Submitter	: M. Vefa Bicakci <bicave@superonline.com>
Date		: 2010-03-13 5:11 (9 days old)
First-Bad-Commit: http://git.kernel.org/git/linus/d8e0902806c0bd2ccc4f6a267ff52565a3ec933b
Message-ID	: <4B9B1E8F.5090806@superonline.com>
References	: http://marc.info/?l=linux-kernel&m=126845754409543&w=2


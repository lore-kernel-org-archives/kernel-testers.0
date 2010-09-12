From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #17311] 2.6.36-rc2-git4 - INFO: possible circular locking dependency detected
Date: Sun, 12 Sep 2010 20:14:28 +0200 (CEST)
Message-ID: <0c5PAlgnPrH.A.LyB.KsRjMB@chimera>
References: <EP3NUDNWMO.A.O0.rrRjMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <EP3NUDNWMO.A.O0.rrRjMB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Johannes Berg <johannes@sipsolutions.net>, Maxime Bizon <mbizon@freebox.fr>, Miles Lane <miles.lane@gmail.com>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.35.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=17311
Subject		: 2.6.36-rc2-git4 - INFO: possible circular locking dependency detected
Submitter	: Miles Lane <miles.lane@gmail.com>
Date		: 2010-08-27 1:56 (17 days old)
First-Bad-Commit: http://git.kernel.org/linus/5a652052fedbd7869572c757dd2ffc2ed420c69d
Message-ID	: <AANLkTinHbEW36D5R9NSrGgfbOC0Hri3Tg-fA0iR92Udi@mail.gmail.com>
References	: http://marc.info/?l=linux-kernel&m=128287422106267&w=2
Handled-By	: Johannes Berg <johannes@sipsolutions.net>


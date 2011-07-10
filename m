From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #38702] 3.0.0-rc4-git6 - INFO: possible circular locking dependency detected - (&rdev->mtx){+.+.+.}, at: [<ffffffffa00e27e0>] cfg80211_netdev_notifier_call+0x275/0x4ff [cfg80211]
Date: Sun, 10 Jul 2011 12:38:24 +0200 (CEST)
Message-ID: <XNkIyhV6dgF.A.IjG.ACYGOB@chimera>
References: <Y7LyOsOBwFM.A.kJG.kBYGOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <Y7LyOsOBwFM.A.kJG.kBYGOB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Miles Lane <miles.lane@gmail.com>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.39.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=38702
Subject		: 3.0.0-rc4-git6 - INFO: possible circular locking dependency detected - (&rdev->mtx){+.+.+.}, at: [<ffffffffa00e27e0>] cfg80211_netdev_notifier_call+0x275/0x4ff [cfg80211]
Submitter	: Miles Lane <miles.lane@gmail.com>
Date		: 2011-06-26 21:54 (15 days old)
Message-ID	: <BANLkTikztsFnPkJZ7VxRC-zsitwCCvVmeg@mail.gmail.com>
References	: http://marc.info/?l=linux-kernel&m=130912559804336&w=2


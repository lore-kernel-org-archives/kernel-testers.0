From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15142] sysfs-related lockdep warning in __blkdev_get
Date: Mon, 15 Feb 2010 00:38:31 +0100 (CET)
Message-ID: <4un6Gst5rKB.A.B0H.ZjIeLB@chimera>
References: <Z5cmiqDComP.A.gyF.OiIeLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <Z5cmiqDComP.A.gyF.OiIeLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Matti Aarnio <matti.aarnio--kernel-bugzilla@zmailer.org>, NeilBrown <neilb@suse.de>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15142
Subject		: sysfs-related lockdep warning in __blkdev_get
Submitter	: Matti Aarnio <matti.aarnio--kernel-bugzilla@zmailer.org>
Date		: 2010-01-25 13:38 (21 days old)


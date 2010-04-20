From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15768] Incorrectly calculated free blocks result in ENOSPC from writepage
Date: Tue, 20 Apr 2010 05:19:24 +0200 (CEST)
Message-ID: <YeFfFNFyTSF.A.toG.RRSzLB@tosh>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <deuQKFRcc0B.A.3EG.BRSzLB@tosh>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Dmitry Monakhov <dmonakhov@openvz.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.33.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15768
Subject		: Incorrectly calculated free blocks result in ENOSPC from writepage
Submitter	: Dmitry Monakhov <dmonakhov@openvz.org>
Date		: 2010-04-12 11:24 (8 days old)


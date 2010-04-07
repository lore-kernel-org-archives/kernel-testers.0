From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15715] vmscan: underflow for get_scan_ratio
Date: Wed,  7 Apr 2010 23:13:53 +0200 (CEST)
Message-ID: <JVS2s9dmTsP.A.2EG.7sPvLB@chimera>
References: <6Pphclm24fK.A.lSF.qsPvLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <6Pphclm24fK.A.lSF.qsPvLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>, Linus Torvalds <torvalds@linux-foundation.org>, Shaohua Li <shaohua.li@intel.com>, Wu Fengguang <fengguang.wu@intel.com>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.33.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15715
Subject		: vmscan: underflow for get_scan_ratio
Submitter	: Shaohua Li <shaohua.li@intel.com>
Date		: 2010-03-30 5:53 (9 days old)
First-Bad-Commit: http://git.kernel.org/git/linus/84b18490d1f1bc7ed5095c929f78bc002eb70f26
Message-ID	: <20100330055304.GA2983@sli10-desk.sh.intel.com>
References	: http://marc.info/?l=linux-kernel&m=126992842105754&w=4
Handled-By	: KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>
		  Wu Fengguang <fengguang.wu@intel.com>


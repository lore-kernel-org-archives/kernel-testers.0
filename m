From: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Bug #15715] vmscan: underflow for get_scan_ratio
Date: Wed, 7 Apr 2010 15:05:25 -0700 (PDT)
Message-ID: <alpine.LFD.2.00.1004071505100.3586@i5.linux-foundation.org>
References: <6Pphclm24fK.A.lSF.qsPvLB@chimera> <JVS2s9dmTsP.A.2EG.7sPvLB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <JVS2s9dmTsP.A.2EG.7sPvLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>, Shaohua Li <shaohua.li@intel.com>, Wu Fengguang <fengguang.wu@intel.com>



On Wed, 7 Apr 2010, Rafael J. Wysocki wrote:
>
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.33.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15715
> Subject		: vmscan: underflow for get_scan_ratio
> Submitter	: Shaohua Li <shaohua.li@intel.com>
> Date		: 2010-03-30 5:53 (9 days old)
> First-Bad-Commit: http://git.kernel.org/git/linus/84b18490d1f1bc7ed5095c929f78bc002eb70f26
> Message-ID	: <20100330055304.GA2983@sli10-desk.sh.intel.com>
> References	: http://marc.info/?l=linux-kernel&m=126992842105754&w=4
> Handled-By	: KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>
> 		  Wu Fengguang <fengguang.wu@intel.com>

Reverted by commit d6da1a5abc2bf3a06a5bda08e0f6833409234666

			Linus

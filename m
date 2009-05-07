From: Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Thu, 7 May 2009 15:38:24 -0700
Message-ID: <20090507153824.df54658c.akpm@linux-foundation.org>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera>
	<alpine.DEB.2.00.0905071417160.24417@chino.kir.corp.google.com>
	<20090507145041.9b59f4eb.akpm@linux-foundation.org>
	<200905080014.49426.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754620AbZEGWod@vger.kernel.org>
In-Reply-To: <200905080014.49426.rjw@sisk.pl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: rientjes@google.com, fengguang.wu@intel.com, linux-pm@lists.linux-foundation.org, pavel@ucw.cz, torvalds@linux-foundation.org, jens.axboe@oracle.com, alan-jenkins@tuffmail.co.uk, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org

On Fri, 8 May 2009 00:14:48 +0200
"Rafael J. Wysocki" <rjw@sisk.pl> wrote:

> IOW, you need to freeze the user space totally before trying to disable the
> OOM killer.

Not necessarily.  We only need to take action if a task is about to
start oom-killing - presumably by taking a nap.

If a process is sitting there happily computing pi then we can leave it
running.

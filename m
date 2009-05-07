From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Fri, 8 May 2009 00:50:41 +0200
Message-ID: <200905080050.41973.rjw@sisk.pl>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905080014.49426.rjw@sisk.pl> <20090507153824.df54658c.akpm@linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1763381AbZEGWwS@vger.kernel.org>
In-Reply-To: <20090507153824.df54658c.akpm@linux-foundation.org>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Andrew Morton <akpm@linux-foundation.org>
Cc: rientjes@google.com, fengguang.wu@intel.com, linux-pm@lists.linux-foundation.org, pavel@ucw.cz, torvalds@linux-foundation.org, jens.axboe@oracle.com, alan-jenkins@tuffmail.co.uk, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org

On Friday 08 May 2009, Andrew Morton wrote:
> On Fri, 8 May 2009 00:14:48 +0200
> "Rafael J. Wysocki" <rjw@sisk.pl> wrote:
> 
> > IOW, you need to freeze the user space totally before trying to disable the
> > OOM killer.
> 
> Not necessarily.  We only need to take action if a task is about to
> start oom-killing - presumably by taking a nap.
> 
> If a process is sitting there happily computing pi then we can leave it
> running.

Well, the point is we don't really know what the task is going to do next.
Is it going to continue computing pi, or is it going to execl(huge_binary), for
example?

If we knew what tasks were going to do in advance, the whole freezing wouldn't
really be necessary. :-)

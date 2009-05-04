From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [PATCH 0/4] PM: Drop shrink_all_memory (rev. 2) (was: Re: [PATCH 3/3] PM/Hibernate: Use memory allocations to free memory)
Date: Mon, 4 May 2009 21:53:36 +0200
Message-ID: <200905042153.37069.rjw@sisk.pl>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905031830.49690.rjw@sisk.pl> <20090504093310.GC30306@elf.ucw.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755498AbZEDTxq@vger.kernel.org>
In-Reply-To: <20090504093310.GC30306@elf.ucw.cz>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Pavel Machek <pavel@ucw.cz>
Cc: Wu Fengguang <fengguang.wu@intel.com>, Andrew Morton <akpm@linux-foundation.org>, torvalds@linux-foundation.org, jens.axboe@oracle.com, alan-jenkins@tuffmail.co.uk, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, linux-pm@lists.linux-foundation.org

On Monday 04 May 2009, Pavel Machek wrote:
> Hi!
> 
> > I know that swsusp_shrink_memory() has problems, that's why I'd like to get rid
> > of it.
> > 
> > > I wonder if it's possible to free up the memory within 1s at all.
> > 
> > I'm not sure.
> > 
> > Apparently, the counting of saveable pages takes substantial time (0.5 s each
> > iteration on my 64-bit test box), so we can improve that by limiting the number
> > of iterations.
> 
> We could increase step size after each step. Free in 40MB step, then
> 80MB step, then 160MB step, ...

Why not just one step?  It doesn't seem to hurt performance AFAICS.

Thanks,
Rafael

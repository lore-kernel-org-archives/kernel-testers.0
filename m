From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Sat, 9 May 2009 23:37:38 +0200
Message-ID: <200905092337.39906.rjw@sisk.pl>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905090155.44635.rjw@sisk.pl> <alpine.DEB.2.00.0905091415310.1124@chino.kir.corp.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.00.0905091415310.1124-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, pavel-+ZI9xUNit7I@public.gmane.org, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>

On Saturday 09 May 2009, David Rientjes wrote:
> On Sat, 9 May 2009, Rafael J. Wysocki wrote:
> 
> > > All of your tasks are in D state other than kthreads, right?  That means 
> > > they won't be in the oom killer (thus no zones are oom locked), so you can 
> > > easily do this
> > > 
> > > 	struct zone *z;
> > > 	for_each_populated_zone(z)
> > > 		zone_set_flag(z, ZONE_OOM_LOCKED);
> > > 
> > > and then
> > > 
> > > 	for_each_populated_zone(z)
> > > 		zone_clear_flag(z, ZONE_OOM_LOCKED);
> > > 
> > > The serialization is done with trylocks so this will never invoke the oom 
> > > killer because all zones in the allocator's zonelist will be oom locked.
> > 
> > Well, that might have been a good idea if it actually had worked. :-(
> > 
> > > Why does this not work for you?
> > 
> > If I set image_size to something below "hard core working set" +
> > totalreserve_pages, preallocate_image_memory() hangs the
> > box (please refer to the last patch I sent,
> > http://patchwork.kernel.org/patch/22423/).
> > 
> 
> This has been changed in the latest mmotm with Mel's page alloactor 
> patches (and I think yours should be based on mmotm).  Specifically, 
> page-allocator-break-up-the-allocator-entry-point-into-fast-and-slow-paths.patch.
> 
> Before his patchset, zonelists that had ZONE_OOM_LOCKED set for at least 
> one of their zones would unconditionally goto restart.  Now, if
> order > PAGE_ALLOC_COSTLY_ORDER, it gives up and returns NULL.  Otherwise, 
> it does goto restart.
> 
> So if your allocation has order > PAGE_ALLOC_COSTLY_ORDER,

It doesn't.  All of my allocations are of order 0.

> using the ZONE_OOM_LOCKED approach to locking out the oom killer will work
> just fine in mmotm.

No, it won't, AFAICT.

Best,
Rafael

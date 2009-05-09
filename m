From: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Sat, 9 May 2009 15:34:17 +0800
Message-ID: <20090509073417.GB6487@localhost>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <20090508095010.GA26398@localhost> <200905081551.56577.rjw@sisk.pl> <200905090208.44381.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200905090208.44381.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org" <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, "pavel-+ZI9xUNit7I@public.gmane.org" <pavel-+ZI9xUNit7I@public.gmane.org>, "torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org" <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org" <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org" <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sat, May 09, 2009 at 08:08:43AM +0800, Rafael J. Wysocki wrote:
> On Friday 08 May 2009, Rafael J. Wysocki wrote:
> > On Friday 08 May 2009, Wu Fengguang wrote:
> [--snip--]
> > > But hey, that 'count' counts "savable+free" memory.
> > > We don't have a counter for an estimation of "free+freeable" memory,
> > > ie. we are sure we cannot preallocate above that threshold. 
> > > 
> > > One applicable situation is, when there are 800M anonymous memory,
> > > but only 500M image_size and no swap space.
> > > 
> > > In that case we will otherwise goto the oom code path. Sure oom is
> > > (and shall be) reliably disabled in hibernation, but still we shall be
> > > cautious enough not to create a low memory situation, which will hurt:
> > > - hibernation speed
> > >   (vmscan goes mad trying to squeeze the last free page)
> > > - user experiences after resume
> > >   (all *active* file data and metadata have to reloaded)
> > 
> > Strangely enough, my recent testing with this patch doesn't confirm the
> > theory. :-)  Namely, I set image_size too low on purpose and it only caused
> > preallocate_image_memory() to return NULL at one point and that was it.
> > 
> > It didn't even took too much time.
> > 
> > I'll carry out more testing to verify this observation.
> 
> I can confirm that even if image_size is below the minimum we can get,

Which minimum please?

> the second preallocate_image_memory() just returns after allocating fewer pages
> that it's been asked for (that's with the original __GFP_NO_OOM_KILL-based
> approach, as I wrote in the previous message in this thread) and nothing bad
> happens.
>
> That may be because we freeze the mm kernel threads, but I've also tested
> without freezing them and it's still worked the same way.
> 
> > > The current code simply tries *too hard* to meet image_size.
> > > I'd rather take that as a mild advice, and to only free
> > > "free+freeable-margin" pages when image_size is not approachable.
> > > 
> > > The safety margin can be totalreserve_pages, plus enough pages for
> > > retaining the "hard core working set".
> > 
> > How to compute the size of the "hard core working set", then?
> 
> Well, I'm still interested in the answer here. ;-)

A tough question ;-)

We can start with the following formula, this should be called *after*
the initial memory shrinking.

/* a typical desktop do not have more than 100MB mapped pages */
#define MAX_MMAP_PAGES  (100 << (20 - PAGE_SHIFT))
unsigned long hard_core_working_set(void)
{
        unsigned long nr;

        /*
         * mapped pages are normally small and precious,
         * but shall be bounded for safety.
         */
        nr = global_page_state(NR_FILE_MAPPED);
        nr = min_t(unsigned long, nr, MAX_MMAP_PAGES);

        /*
         * if no swap space, this is a hard request;
         * otherwise this is an optimization.
         * (the disk image IO can be much faster than swap IO)
         */
        nr += global_page_state(NR_ACTIVE_ANON);
        nr += global_page_state(NR_INACTIVE_ANON);

        /* hard (but normally small) memory requests */
        nr += global_page_state(NR_SLAB_UNRECLAIMABLE);
        nr += global_page_state(NR_UNEVICTABLE);
        nr += global_page_state(NR_PAGETABLE);

        return nr;
}

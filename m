From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [PATCH 5/5] PM/Hibernate: Do not release preallocated memory unnecessarily (rev. 2)
Date: Wed, 6 May 2009 01:05:09 +0200
Message-ID: <200905060105.10800.rjw@sisk.pl>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905040222.39062.rjw@sisk.pl> <20090505022427.GA10880@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090505022427.GA10880@localhost>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: "linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org" <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "pavel-+ZI9xUNit7I@public.gmane.org" <pavel-+ZI9xUNit7I@public.gmane.org>, "torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org" <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org" <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org" <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tuesday 05 May 2009, Wu Fengguang wrote:
> On Mon, May 04, 2009 at 08:22:38AM +0800, Rafael J. Wysocki wrote:
> > From: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> > 
> > Since the hibernation code is now going to use allocations of memory
> > to create enough room for the image, it can also use the page frames
> > allocated at this stage as image page frames.  The low-level
> > hibernation code needs to be rearranged for this purpose, but it
> > allows us to avoid freeing a great number of pages and allocating
> > these same pages once again later, so it generally is worth doing.
> > 
> > [rev. 2: Change the strategy of preallocating memory to allocate as
> >  many pages as needed to get the right image size in one shot (the
> >  excessive allocated pages are released afterwards).]
> 
> Rafael, I tried out your patches and found doubled memory shrink speed!
>
> [  579.641781] PM: Preallocating image memory ... done (allocated 383900 pages, 128000 image pages kept)
> [  583.087875] PM: Allocated 1535600 kbytes in 3.43 seconds (447.69 MB/s)

Unfortunately, I'm observing a regression and a huge one.

On my Atom-based test box with 1 GB of RAM after a fresh boot and starting X
with KDE 4 there are ~256 MB free.  To create an image we need to free ~300 MB
and that takes ~2 s with the old code and ~15 s with the new one.

It helps to call shrink_all_memory() once with a sufficiently large argument
before the preallocation.
 
> For you reference, here is the free memory before/after
> hibernate_preallocate_memory():
> 
>         # free
>                      total       used       free     shared    buffers     cached
>         Mem:          1933       1917         15          0          0       1845
>         -/+ buffers/cache:         72       1861
>         Swap:            0          0          0
> 
>         # free
>                      total       used       free     shared    buffers     cached
>         Mem:          1933        920       1012          0          0        356
>         -/+ buffers/cache:        563       1369
>         Swap:            0          0          0
> 
> It seems that the preallocated memory is not freed on -ENOMEM.
> 
> +       error = memory_bm_create(&orig_bm, GFP_IMAGE, PG_ANY);
> +       if (error)
> +               goto err_out;
> +
> +       error = memory_bm_create(&copy_bm, GFP_IMAGE, PG_ANY);
> +       if (error)
> +               goto err_out;
> 
> memory_bm_create() is called a number of times, each time it will
> call create_mem_extents()/memory_bm_free(). Can they be optimized to
> be called only once?

Possibly, but not right now if you please?  This is just moving code BTW.

> A side note: there are somehow duplicated *_extent_*() logics in the
> filesystems, is it possible that we abstract out some of the common code?

I think we can do it, but it really is low priority to me at the moment.

> +       for_each_populated_zone(zone) {
> +               size += snapshot_additional_pages(zone);
> +               count += zone_page_state(zone, NR_FREE_PAGES);
> +               if (!is_highmem(zone))
> +                       count -= zone->lowmem_reserve[ZONE_NORMAL];
> +       }
> 
> Why [ZONE_NORMAL] instead of [zone]? ZONE_NORMAL may not always be the largest zone,
> for example, My 4GB laptop has a tiny ZONE_NORMAL and a large ZONE_DMA32.

Ah, this is a leftover and it should be changed or even dropped.  Can you
please remind me how exactly lowmem_reserve[] is supposed to work?

> +       /* If size < max_size, preallocating enough memory may be impossible. */
> +       if (count > 0 && size == max_size)
> +               error = -ENOMEM;
> +       if (error)
> +               goto err_out;
> 
> The two if()s can be merged.

Unfortunately, the first one is actually wrong. :-)

It's not present in the updated patchset I'm going to send tomorrow.

> At last, I'd express my major concern about the transition to preallocate
> based memory shrinking: will it lead to more random swapping IOs?

Hmm.  I don't see immediately why would it.  Maybe the regression I'm seeing
is related to that ...

Thanks,
Rafael

From: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH 1/4] mm: Add __GFP_NO_OOM_KILL flag
Date: Sun, 3 May 2009 19:54:50 +0800
Message-ID: <20090503115450.GB9661@localhost>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <20090502104947.2720f173.akpm@linux-foundation.org> <200905030220.57933.rjw@sisk.pl> <200905030222.07360.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200905030222.07360.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org

On Sun, May 03, 2009 at 02:22:06AM +0200, Rafael J. Wysocki wrote:
> From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
> 
> > > Remind me: why can't we just allocate N pages at suspend-time?
> > 
> > We need half of memory free. The reason we can't "just allocate" is
> > probably OOM killer; but my memories are quite weak :-(.
> 
> hm.  You'd think that with our splendid range of __GFP_foo falgs, there
> would be some combo which would suit this requirement but I can't
> immediately spot one.
> 
> We can always add another I guess.  Something like...
> 
> Signed-off-by: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> ---
>  include/linux/gfp.h |    3 ++-
>  mm/page_alloc.c     |    3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> Index: linux-2.6/mm/page_alloc.c
> ===================================================================
> --- linux-2.6.orig/mm/page_alloc.c
> +++ linux-2.6/mm/page_alloc.c
> @@ -1620,7 +1620,8 @@ nofail_alloc:
>  		}
>  
>  		/* The OOM killer will not help higher order allocs so fail */
> -		if (order > PAGE_ALLOC_COSTLY_ORDER) {
> +		if (order > PAGE_ALLOC_COSTLY_ORDER ||
> +				(gfp_mask & __GFP_NO_OOM_KILL)) {
>  			clear_zonelist_oom(zonelist, gfp_mask);
>  			goto nopage;
>  		}
> Index: linux-2.6/include/linux/gfp.h
> ===================================================================
> --- linux-2.6.orig/include/linux/gfp.h
> +++ linux-2.6/include/linux/gfp.h
> @@ -51,8 +51,9 @@ struct vm_area_struct;
>  #define __GFP_THISNODE	((__force gfp_t)0x40000u)/* No fallback, no policies */
>  #define __GFP_RECLAIMABLE ((__force gfp_t)0x80000u) /* Page is reclaimable */
>  #define __GFP_MOVABLE	((__force gfp_t)0x100000u)  /* Page is movable */
> +#define __GFP_NO_OOM_KILL ((__force gfp_t)0x200000u)  /* Don't invoke out_of_memory() */
>  
> -#define __GFP_BITS_SHIFT 21	/* Room for 21 __GFP_FOO bits */
> +#define __GFP_BITS_SHIFT 22	/* Number of__GFP_FOO bits */
                                            ^ missed a white space :)

From: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH 3/4] PM/Hibernate: Use memory allocations to free
	memory (rev. 2)
Date: Sun, 3 May 2009 19:51:27 +0800
Message-ID: <20090503115127.GA9661@localhost>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <20090502104947.2720f173.akpm@linux-foundation.org> <200905030220.57933.rjw@sisk.pl> <200905030224.21471.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200905030224.21471.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org

On Sun, May 03, 2009 at 02:24:20AM +0200, Rafael J. Wysocki wrote:
> From: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> 
> Modify the hibernation memory shrinking code so that it will make
> memory allocations to free memory instead of using an artificial
> memory shrinking mechanism for that.  Remove the shrinking of
> memory from the suspend-to-RAM code, where it is not really
> necessary.  Finally, remove the no longer used memory shrinking
> functions from mm/vmscan.c .
> 
> [rev. 2: Use the existing memory bitmaps for marking preallocated
>  image pages and use swsusp_free() from releasing them, introduce
>  GFP_IMAGE, add comments describing the memory shrinking strategy.]
> 
> Signed-off-by: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> ---
>  kernel/power/main.c     |   20 ------
>  kernel/power/snapshot.c |  132 +++++++++++++++++++++++++++++++++-----------
>  mm/vmscan.c             |  142 ------------------------------------------------
>  3 files changed, 101 insertions(+), 193 deletions(-)
> 
> Index: linux-2.6/kernel/power/snapshot.c
> ===================================================================
> --- linux-2.6.orig/kernel/power/snapshot.c
> +++ linux-2.6/kernel/power/snapshot.c
> @@ -1066,41 +1066,97 @@ void swsusp_free(void)
>  	buffer = NULL;
>  }
>  
> +/* Helper functions used for the shrinking of memory. */
> +
> +#ifdef CONFIG_HIGHMEM
> +#define GFP_IMAGE	(GFP_KERNEL | __GFP_HIGHMEM | __GFP_NO_OOM_KILL)
> +#else
> +#define GFP_IMAGE	(GFP_KERNEL | __GFP_NO_OOM_KILL)
> +#endif

The CONFIG_HIGHMEM test is not necessary: __GFP_HIGHMEM is always defined.

> +#define SHRINK_BITE	10000

This is ~40MB. A full scan of (for example) 8G pages will be time
consuming, not to mention we have to do it 2*(8G-500M)/40M = 384 times!

Can we make it a LONG_MAX?

Thanks,
Fengguang

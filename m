From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [PATCH 3/3] PM/Hibernate: Use memory allocations to free memory
Date: Fri, 1 May 2009 16:14:23 -0700
Message-ID: <20090501161423.94b37d5b.akpm@linux-foundation.org>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera>
	<20090422131943.69288af3.akpm@linux-foundation.org>
	<200905020026.19027.rjw@sisk.pl>
	<200905020029.39181.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200905020029.39181.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org

On Sat, 2 May 2009 00:29:38 +0200
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> From: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> 
> Modify the hibernation memory shrinking code so that it will make
> memory allocations to free memory instead of using an artificial
> memory shrinking mechanism for that.  Remove the shrinking of
> memory from the suspend-to-RAM code, where it is not really
> necessary.  Finally, remove the no longer used memory shrinking
> functions from mm/vmscan.c .
> 
> ...
>
> +static long alloc_and_mark_pages(struct memory_bitmap *bm, long nr_pages)
>  {
> -	if (tmp > SHRINK_BITE)
> -		tmp = SHRINK_BITE;
> -	return shrink_all_memory(tmp);
> +	long nr_normal = 0;
> +
> +	while (nr_pages-- > 0) {
> +		struct page *page;
> +
> +		page = alloc_page(GFP_KERNEL | __GFP_HIGHMEM);
> +		if (!page)
> +			return -ENOMEM;
> +		memory_bm_set_bit(bm, page_to_pfn(page));
> +		if (!PageHighMem(page))
> +			nr_normal++;
> +	}
> +
> +	return nr_normal;
>  }

Do we need the bitmap?  I expect we can just string all these pages
onto a local list via page.lru.  Would need to check that - the
pageframe fields are quite overloaded.


> ...
>
> +#define SHRINK_BITE	10000
> +		long size, highmem_size, ret;
> +
> +		highmem_size = count_highmem_pages() - 2 * alloc_highmem;
> +		size = count_data_pages() + PAGES_FOR_IO + SPARE_PAGES
> +			- 2 * alloc_normal;

It'd be nice if this head-spinning arithmetic were spelled out in a
comment somewhere.  There are rather a lot of magic-number heuristics
in here.

>  		tmp = size;
>  		size += highmem_size;
>  		for_each_populated_zone(zone) {
> @@ -621,27 +671,39 @@ int swsusp_shrink_memory(void)

All looks pretty sane to me.

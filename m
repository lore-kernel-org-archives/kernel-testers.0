From: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Subject: Re: [Experimental][PATCH] putback_lru_page rework
Date: Sat, 21 Jun 2008 17:39:06 +0900
Message-ID: <20080621173013.E821.KOSAKI.MOTOHIRO@jp.fujitsu.com>
References: <1213886722.6398.29.camel@lts-notebook> <20080620101352.e1200b8e.kamezawa.hiroyu@jp.fujitsu.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080620101352.e1200b8e.kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Cc: kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org, Lee Schermerhorn <Lee.Schermerhorn-VXdhtT5mjnY@public.gmane.org>, Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hi

> Lee-san, this is an additonal one..
> Not-tested-yet, just by review.
> 
> Fixing page_lock() <-> zone->lock nesting of bad-behavior.
> 
> Before:
>       lock_page()(TestSetPageLocked())
>       spin_lock(zone->lock)
>       unlock_page()
>       spin_unlock(zone->lock)  
> After:
>       spin_lock(zone->lock)
>       spin_unlock(zone->lock)


Good catch!

> 
> Including nit-pick fix. (I'll ask Kosaki-san to merge this to his 5/5)
> 
> Hmm...
> 
> ---
>  mm/vmscan.c |   25 +++++--------------------
>  1 file changed, 5 insertions(+), 20 deletions(-)
> 
> Index: test-2.6.26-rc5-mm3/mm/vmscan.c
> ===================================================================
> --- test-2.6.26-rc5-mm3.orig/mm/vmscan.c
> +++ test-2.6.26-rc5-mm3/mm/vmscan.c
> @@ -1106,7 +1106,7 @@ static unsigned long shrink_inactive_lis
>  		if (nr_taken == 0)
>  			goto done;
>  
> -		spin_lock(&zone->lru_lock);
> +		spin_lock_irq(&zone->lru_lock);
>  		/*
>  		 * Put back any unfreeable pages.
>  		 */
> @@ -1136,9 +1136,8 @@ static unsigned long shrink_inactive_lis
>  			}
>  		}
>    	} while (nr_scanned < max_scan);
> -	spin_unlock(&zone->lru_lock);
> +	spin_unlock_irq(&zone->lru_lock);
>  done:
> -	local_irq_enable();
>  	pagevec_release(&pvec);
>  	return nr_reclaimed;
>  }

No.

shrink_inactive_list lock usage is 

	local_irq_disable()
	spin_lock(&zone->lru_lock);
	while(){
		if (!pagevec_add(&pvec, page)) {
			spin_unlock_irq(&zone->lru_lock);
			__pagevec_release(&pvec);
			spin_lock_irq(&zone->lru_lock);
		}
	}
	spin_unlock(&zone->lru_lock);
	local_irq_enable();

this keep below lock rule.
	- if zone->lru_lock is holded, interrupt is always disable disabled.




> @@ -2438,7 +2437,7 @@ static void show_page_path(struct page *
>   */
>  static void check_move_unevictable_page(struct page *page, struct zone *zone)
>  {
> -
> +retry:
>  	ClearPageUnevictable(page); /* for page_evictable() */
>  	if (page_evictable(page, NULL)) {
>  		enum lru_list l = LRU_INACTIVE_ANON + page_is_file_cache(page);
> @@ -2455,6 +2454,8 @@ static void check_move_unevictable_page(
>  		 */
>  		SetPageUnevictable(page);
>  		list_move(&page->lru, &zone->lru[LRU_UNEVICTABLE].list);
> +		if (page_evictable(page, NULL))
> +			goto retry;
>  	}
>  }

Right, Thanks.


>  
> @@ -2494,16 +2495,6 @@ void scan_mapping_unevictable_pages(stru
>  				next = page_index;
>  			next++;
>  
> -			if (TestSetPageLocked(page)) {
> -				/*
> -				 * OK, let's do it the hard way...
> -				 */
> -				if (zone)
> -					spin_unlock_irq(&zone->lru_lock);
> -				zone = NULL;
> -				lock_page(page);
> -			}
> -
>  			if (pagezone != zone) {
>  				if (zone)
>  					spin_unlock_irq(&zone->lru_lock);
> @@ -2514,8 +2505,6 @@ void scan_mapping_unevictable_pages(stru
>  			if (PageLRU(page) && PageUnevictable(page))
>  				check_move_unevictable_page(page, zone);
>  
> -			unlock_page(page);
> -
>  		}
>  		if (zone)
>  			spin_unlock_irq(&zone->lru_lock);

Right.


> @@ -2551,15 +2540,11 @@ void scan_zone_unevictable_pages(struct 
>  		for (scan = 0;  scan < batch_size; scan++) {
>  			struct page *page = lru_to_page(l_unevictable);
>  
> -			if (TestSetPageLocked(page))
> -				continue;
> -
>  			prefetchw_prev_lru_page(page, l_unevictable, flags);
>  
>  			if (likely(PageLRU(page) && PageUnevictable(page)))
>  				check_move_unevictable_page(page, zone);
>  
> -			unlock_page(page);
>  		}
>  		spin_unlock_irq(&zone->lru_lock);

Right.


--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

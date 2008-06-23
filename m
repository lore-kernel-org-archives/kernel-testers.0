From: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 2/2] hugetlb reservations: fix hugetlb MAP_PRIVATE reservations across vma splits
Date: Mon, 23 Jun 2008 09:00:48 +0100
Message-ID: <20080623080048.GJ21597@csn.ul.ie>
References: <1213989474-5586-1-git-send-email-apw@shadowen.org> <1213989474-5586-3-git-send-email-apw@shadowen.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1213989474-5586-3-git-send-email-apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andy Whitcroft <apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org>
Cc: Jon Tollefson <kniht-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, Nishanth Aravamudan <nacc-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>, Adam Litke <agl-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org

Typical. I spotted this after I pushed send.....

> <SNIP>

> @@ -266,14 +326,19 @@ static void decrement_hugepage_resv_vma(struct hstate *h,
>  		 * private mappings.
>  		 */
>  		if (is_vma_resv_set(vma, HPAGE_RESV_OWNER)) {
> -			unsigned long flags, reserve;
> +			unsigned long idx = vma_pagecache_offset(h,
> +							vma, address);
> +			struct resv_map *reservations = vma_resv_map(vma);
> +
>  			h->resv_huge_pages--;
> -			flags = (unsigned long)vma->vm_private_data &
> -							HPAGE_RESV_MASK;
> -			reserve = (unsigned long)vma->vm_private_data - 1;
> -			vma->vm_private_data = (void *)(reserve | flags);
> +
> +			/* Mark this page used in the map. */
> +			if (region_chg(&reservations->regions, idx, idx + 1) < 0)
> +				return -1;
> +			region_add(&reservations->regions, idx, idx + 1);
>  		}

decrement_hugepage_resv_vma() is called with hugetlb_lock held and region_chg
calls kmalloc(GFP_KERNEL).  Hence it's possible we would sleep with that
spinlock held which is a bit uncool. The allocation needs to happen outside
the lock. Right?

> <SNIP>

-- 
Mel Gorman

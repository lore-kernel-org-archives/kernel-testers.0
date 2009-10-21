From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [PATCH] SLUB: Don't drop __GFP_NOFAIL completely from allocate_slab()
 (was: Re: [Bug #14265] ifconfig: page allocation failure. order:5,ode:0x8020
 w/ e100)
Date: Wed, 21 Oct 2009 14:06:41 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0910211400140.20010@chino.kir.corp.google.com>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <COE24pZSBH.A.rP.2MTxKB@chimera> <20091021200442.GA2987@bizet.domek.prywatny>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1256159210; bh=NAujHq5jzlMVF2Os6Mp6KKZZg/w=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type;
	b=Jhw370pd8zGvaFWwOhuT8GDg8IUHTGQhfYJg2uGGAwru1K4BsN7gmgwn41LTpVzgO
	 seHufRS1Sl7PwSLSXRg7g==
In-Reply-To: <20091021200442.GA2987-nLtalAL5mPp2RxbNQum0x1nzlInOXLuq@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Reinette Chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Mohamed Abbas <mohamed.abbas-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>

On Wed, 21 Oct 2009, Karol Lewandowski wrote:

> commit d6849591e042bceb66f1b4513a1df6740d2ad762
> Author: Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date:   Wed Oct 21 21:01:20 2009 +0200
> 
>     SLUB: Don't drop __GFP_NOFAIL completely from allocate_slab()
>     
>     Commit ba52270d18fb17ce2cf176b35419dab1e43fe4a3 unconditionally
>     cleared __GFP_NOFAIL flag on all allocations.
>     

No, it clears __GFP_NOFAIL from the first allocation of oo_order(s->oo).  
If that fails (and it's easy to fail, it has __GFP_NORETRY), another 
allocation is attempted with oo_order(s->min), for which __GFP_NOFAIL 
would be preserved if that's the slab cache's allocflags.

>     Preserve this flag on second attempt to allocate page (with possibly
>     decreased order).
>     
>     This should help with bugs #14265, #14141 and similar.
>     
>     Signed-off-by: Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> 
> diff --git a/mm/slub.c b/mm/slub.c
> index b627675..ac5db65 100644
> --- a/mm/slub.c
> +++ b/mm/slub.c
> @@ -1084,7 +1084,7 @@ static struct page *allocate_slab(struct kmem_cache *s, gfp_t flags, int node)
>  {
>  	struct page *page;
>  	struct kmem_cache_order_objects oo = s->oo;
> -	gfp_t alloc_gfp;
> +	gfp_t alloc_gfp, nofail;
>  
>  	flags |= s->allocflags;
>  
> @@ -1092,6 +1092,7 @@ static struct page *allocate_slab(struct kmem_cache *s, gfp_t flags, int node)
>  	 * Let the initial higher-order allocation fail under memory pressure
>  	 * so we fall-back to the minimum order allocation.
>  	 */
> +	nofail = flags & __GFP_NOFAIL;
>  	alloc_gfp = (flags | __GFP_NOWARN | __GFP_NORETRY) & ~__GFP_NOFAIL;
>  
>  	page = alloc_slab_page(alloc_gfp, node, oo);
> @@ -1100,8 +1101,10 @@ static struct page *allocate_slab(struct kmem_cache *s, gfp_t flags, int node)
>  		/*
>  		 * Allocation may have failed due to fragmentation.
>  		 * Try a lower order alloc if possible
> +		 *
> +		 * Preserve __GFP_NOFAIL flag if previous allocation failed.
>  		 */
> -		page = alloc_slab_page(flags, node, oo);
> +		page = alloc_slab_page(flags | nofail, node, oo);
>  		if (!page)
>  			return NULL;
>  
> 

This does nothing.  You may have missed that the lower order allocation is 
passing 'flags' (which is a union of the gfp flags passed to 
allocate_slab() based on the allocation context and the cache's 
allocflags), and not alloc_gfp where __GFP_NOFAIL is masked.

Nack.

Note: slub isn't going to be a culprit in order 5 allocation failures 
since they have kmalloc passthrough to the page allocator.

From: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Wed, 10 Jun 2009 16:56:26 +0100
Message-ID: <20090610155626.GA7951@csn.ul.ie>
References: <4A2BBC30.2030300@lwfinger.net> <84144f020906070640rf5ab14nbf66d3ca7c97675f@mail.gmail.com> <4A2BCC6F.8090004@redhat.com> <84144f020906070732l31786156r5d9753a0cabfde79@mail.gmail.com> <20090608101739.GA15377@csn.ul.ie> <84144f020906080352k57f12ff9pbd696da5f332ac1a@mail.gmail.com> <20090608110303.GD15377@csn.ul.ie> <Pine.LNX.4.64.0906081657001.7036@melkki.cs.Helsinki.FI> <20090608141212.GE15070@csn.ul.ie> <1244531201.5024.3.camel@penberg-laptop>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1244531201.5024.3.camel@penberg-laptop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, npiggin-l3A5Bk7waGM@public.gmane.org

On Tue, Jun 09, 2009 at 10:06:41AM +0300, Pekka Enberg wrote:
> Hi Mel,
> 
> On Mon, 2009-06-08 at 15:12 +0100, Mel Gorman wrote:
> > > diff --git a/mm/slub.c b/mm/slub.c
> > > index 65ffda5..b5acf18 100644
> > > --- a/mm/slub.c
> > > +++ b/mm/slub.c
> > > @@ -1565,6 +1565,8 @@ new_slab:
> > >  		c->page = new;
> > >  		goto load_freelist;
> > >  	}
> > > +	printk(KERN_WARNING "SLUB: unable to satisfy allocation for cache %s (size=%d, node=%d, gfp=%x)\n",
> > > +		s->name, s->size, node, gfpflags);
> > 
> > size could be almost anything here for a casual reader. You are
> > outputting the size of the object plus its metadata so the name should
> > reflect that. I think it would be better to output objsize= and the
> > object size without the metadata overhead. What do you think?
> > 
> > In addition, include how many objects there are per-slab and include what
> > the order is being passed to the page allocator when allocating new slabs.
> > Would that be enough to determine if fallback-to-smaller orders occured?
> 
> So how about something like this then?
> 
> 			Pekka
> 
> diff --git a/mm/slub.c b/mm/slub.c
> index 65ffda5..a03dbe8 100644
> --- a/mm/slub.c
> +++ b/mm/slub.c
> @@ -1484,6 +1484,58 @@ static inline int node_match(struct kmem_cache_cpu *c, int node)
>  	return 1;
>  }
>  
> +static int count_free(struct page *page)
> +{
> +	return page->objects - page->inuse;
> +}
> +
> +static unsigned long count_partial(struct kmem_cache_node *n,
> +					int (*get_count)(struct page *))
> +{
> +	unsigned long flags;
> +	unsigned long x = 0;
> +	struct page *page;
> +
> +	spin_lock_irqsave(&n->list_lock, flags);
> +	list_for_each_entry(page, &n->partial, lru)
> +		x += get_count(page);
> +	spin_unlock_irqrestore(&n->list_lock, flags);
> +	return x;
> +}
> +
> +static noinline void
> +slab_out_of_memory(struct kmem_cache *s, gfp_t gfpflags, int nid)
> +{
> +	int node;
> +
> +	printk(KERN_WARNING
> +		"SLUB: Unable to allocate memory on node %d (gfp=%x)\n",
> +		nid, gfpflags);
> +	printk(KERN_WARNING "  cache: %s, object size: %d, buffer size: %d, "
> +		"default order: %d, min order: %d\n", s->name, s->objsize,
> +		s->size, oo_order(s->oo), oo_order(s->min));
> +

Much nicer. There is a clear division between the object size and the
size including the metadata. There is also now a good idea of what sort
of request it was, we know what cache it was so we can guess the size
passed to kmalloc() with reasonable accuracy.

> +	for_each_online_node(node) {
> +		struct kmem_cache_node *n = get_node(s, node);
> +		unsigned long nr_partials;
> +		unsigned long nr_slabs;
> +		unsigned long nr_objs;
> +		unsigned long nr_free;
> +
> +		if (!n)
> +			continue;
> +
> +		nr_partials = n->nr_partial;
> +		nr_slabs = atomic_long_read(&n->nr_slabs);
> +		nr_objs = atomic_long_read(&n->total_objects);
> +		nr_free = count_partial(n, count_free);
> +
> +		printk(KERN_WARNING
> +			"  node %d: partials: %ld, slabs: %ld, objs: %ld, free: %ld\n",
> +			node, nr_partials, nr_slabs, nr_objs, nr_free);
> +	}
> +}

That looks like it would generate easier-to-debug-with messages and to
not-expert-at-slub eye, it looks correct. Slap a changelog on it with an
example message and go with it.  It should make page allocation failures
messages that go through SLUB a lot easier to figure out.

Thanks

> +
>  /*
>   * Slow path. The lockless freelist is empty or we need to perform
>   * debugging duties.
> @@ -1565,6 +1617,7 @@ new_slab:
>  		c->page = new;
>  		goto load_freelist;
>  	}
> +	slab_out_of_memory(s, gfpflags, node);
>  	return NULL;
>  debug:
>  	if (!alloc_debug_processing(s, c->page, object, addr))
> @@ -3318,20 +3371,6 @@ void *__kmalloc_node_track_caller(size_t size, gfp_t gfpflags,
>  }
>  
>  #ifdef CONFIG_SLUB_DEBUG
> -static unsigned long count_partial(struct kmem_cache_node *n,
> -					int (*get_count)(struct page *))
> -{
> -	unsigned long flags;
> -	unsigned long x = 0;
> -	struct page *page;
> -
> -	spin_lock_irqsave(&n->list_lock, flags);
> -	list_for_each_entry(page, &n->partial, lru)
> -		x += get_count(page);
> -	spin_unlock_irqrestore(&n->list_lock, flags);
> -	return x;
> -}
> -
>  static int count_inuse(struct page *page)
>  {
>  	return page->inuse;
> @@ -3342,11 +3381,6 @@ static int count_total(struct page *page)
>  	return page->objects;
>  }
>  
> -static int count_free(struct page *page)
> -{
> -	return page->objects - page->inuse;
> -}
> -
>  static int validate_slab(struct kmem_cache *s, struct page *page,
>  						unsigned long *map)
>  {
> 
> 

-- 
Mel Gorman
Part-time Phd Student                          Linux Technology Center
University of Limerick                         IBM Dublin Software Lab

From: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Subject: Re: [PATCH] debugobjects: fix lockdep warning #2
Date: Fri, 29 Aug 2008 12:42:44 +0200 (CEST)
Message-ID: <alpine.LFD.1.10.0808291212100.3243@apollo.tec.linutronix.de>
References: <20080828153214.GA27653@localhost.localdomain>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080828153214.GA27653-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Daniel J Blueman <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Christoph Lameter <clameter-sJ/iWh9BUns@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Thu, 28 Aug 2008, Vegard Nossum wrote:
> On Thu, Aug 28, 2008 at 3:56 PM, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
> > could you resend the final patch please? It's a candidate for .27, if it
> > works out fine.
> 
> Here is the combined patch. I've tested it only briefly, and I am
> unsure of whether it still produces lockdep warnings for Daniel or
> not. I wish it would not be applied anywhere unless it was
> officially Reviewed-by: someone. In particular, I'm not quite
> steady with the irq-safe locking (Thomas might want to have a look).

The irq safe locking is the easy part :) Calling free_object w/o the
hash bucket lock held is fine as we removed it already from the bucket
and there is no other reference than the pointer we hold at that point.
 
>  
>  	printk(KERN_WARNING "ODEBUG: Out of memory. ODEBUG disabled\n");
>  
> +	/* XXX: Could probably be optimized by transplantation of more than
> +	 * one entry at a time. */
>  	for (i = 0; i < ODEBUG_HASH_SIZE; i++, db++) {
>  		spin_lock_irqsave(&db->lock, flags);
>  		hlist_for_each_entry_safe(obj, node, tmp, &db->list, node) {
>  			hlist_del(&obj->node);
> -			free_object(obj);
> +			hlist_add_head(&obj->node, &freelist);
>  		}
>  		spin_unlock_irqrestore(&db->lock, flags);
> +
> +		/* Now free them */
> +		hlist_for_each_entry_safe(obj, node, tmp, &freelist, node) {
> +			hlist_del(&obj->node);
> +			free_object(obj);
> +		}
>  	}
>  }

What you want is a helper function which moves the complete list from
one head to the other. I'll whip one up.

I'll push it through the tip tree.

Thanks,

	tglx

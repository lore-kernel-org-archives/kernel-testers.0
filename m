From: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Subject: Re: [PATCH] debugobjects: fix lockdep warning #2
Date: Fri, 29 Aug 2008 16:02:07 +0200 (CEST)
Message-ID: <alpine.LFD.1.10.0808291558470.3243@apollo.tec.linutronix.de>
References: <20080828153214.GA27653@localhost.localdomain> <20080828171706.6080accf.akpm@linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080828171706.6080accf.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, mingo-X9Un+BFzKDI@public.gmane.org, daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, clameter-sJ/iWh9BUns@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Thu, 28 Aug 2008, Andrew Morton wrote:
> > 
> > The lock is also promoted to irq-safe (suggested by Dan).
> 
> What was the reason for this other change?  I'm sure Dan is a fine chap,
> but we usually prefer a little more justification for changes ;)

I added the info already, when I applied it to the tip-tree.

> > +		/* Now free them */
> > +		hlist_for_each_entry_safe(obj, node, tmp, &freelist, node) {
> > +			hlist_del(&obj->node);
> > +			free_object(obj);
> 
> I suspect that we can avoid the hlist_del() here, perhaps with a little
> effort.
> 
> > +
> > +		/* Now free them */
> > +		hlist_for_each_entry_safe(obj, node, tmp, &freelist, node) {
> > +			hlist_del(&obj->node);
> > +			free_object(obj);
> > +		}
> > +
> 
> and the other one.
> 
> But I'm not sure that it's worth putting effort into - leaving dead
> objects strung onto a partially-live list is a little bit smelly IMO.

I really feel better, when we delete them instead of throwing them
away with pointers to each other.

Thanks,

	tglx

From: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c - bisected
Date: Fri, 26 Sep 2008 15:25:29 +1000
Message-ID: <200809261525.30258.rusty@rustcorp.com.au>
References: <alpine.LFD.1.10.0808251344250.3363@nehalem.linux-foundation.org> <200809251150.26760.rusty@rustcorp.com.au> <alpine.LFD.1.10.0809250836270.3265@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.1.10.0809250836270.3265-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Alan.Brunelle-VXdhtT5mjnY@public.gmane.org, travis-sJ/iWh9BUns@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, Jack Steiner <steiner-sJ/iWh9BUns@public.gmane.org>

On Friday 26 September 2008 01:42:13 Linus Torvalds wrote:
> On Thu, 25 Sep 2008, Rusty Russell wrote:
> >     This turns out to be awful in practice, mainly due to const. 
> > Consider:
> >
> > 	#ifdef CONFIG_CPUMASK_OFFSTACK
> > 	typedef unsigned long *cpumask_t;
> > 	#else
> > 	typedef unsigned long cpumask_t[1];
> > 	#endif
> >
> > 	cpumask_t returns_cpumask(void);
>
> No. That's already broken. You cannot return a cpumask_t, regardless of
> interface. We must not do it regardless of how we pass those things
> around, since it generates _yet_ another temporary on the stack for the
> return slot for any kind of structure.

No, for large NR_CPUS, cpumask_t is a pointer as shown.  And we have numerous 
basic functions which return a cpumask_t.  Yes, this is part of the problem.

> What _is_ relevant is how we allocate them when we need temporary CPU
> masks. And _that_ is where my suggestion comes in. For small NR_CPUS, we
> really do want to allocate them on the stack, because calling kmalloc for
> a 4- or 8-byte allocation is just _stupid_.

Right, but cpumask_t is used for far more than stack decls, thus the problems.

I can make a separate "cpumask_stack_t" and use your method tho.  I think that 
might even reduce churn and allow us to do this in parts.

> which has to be converted some way. And I think it needs to be converted
> in a way that does *not* force us to call kmalloc() for idiotically small
> values.

Yeah, got that.  But your suggestion to change cpumask_t turned out horribly 
ugly.

Cheers,
Rusty.

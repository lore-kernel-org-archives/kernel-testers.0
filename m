From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c -
 bisected
Date: Thu, 25 Sep 2008 08:42:13 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0809250836270.3265@nehalem.linux-foundation.org>
References: <alpine.LFD.1.10.0808251344250.3363@nehalem.linux-foundation.org> <86802c440808260136t3a33a9c8if53b6f70ab9df9e2@mail.gmail.com> <alpine.LFD.1.10.0808260939070.3363@nehalem.linux-foundation.org> <200809251150.26760.rusty@rustcorp.com.au>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200809251150.26760.rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
Cc: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Alan.Brunelle-VXdhtT5mjnY@public.gmane.org, travis-sJ/iWh9BUns@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, Jack Steiner <steiner-sJ/iWh9BUns@public.gmane.org>



On Thu, 25 Sep 2008, Rusty Russell wrote:
> 
>     This turns out to be awful in practice, mainly due to const.  Consider:
> 
> 	#ifdef CONFIG_CPUMASK_OFFSTACK
> 	typedef unsigned long *cpumask_t;
> 	#else
> 	typedef unsigned long cpumask_t[1];
> 	#endif
> 
> 	cpumask_t returns_cpumask(void);

No. That's already broken. You cannot return a cpumask_t, regardless of 
interface. We must not do it regardless of how we pass those things 
around, since it generates _yet_ another temporary on the stack for the 
return slot for any kind of structure.

So all cpumask functions should always return pointers and/or take 
pointers to be filled in. That's true *regardless* of how we actually are 
to then allocate them.

So forget returning cpumasks. It's irrelevant.

What _is_ relevant is how we allocate them when we need temporary CPU 
masks. And _that_ is where my suggestion comes in. For small NR_CPUS, we 
really do want to allocate them on the stack, because calling kmalloc for 
a 4- or 8-byte allocation is just _stupid_.

So all your arguments are invalid, because you're looking at the wrong 
thing. The thing that I was talking about is converting current code that 
has

   random_function(..)
   {
	cpumask_t mask;

	.. do something with mask ...
   }

which has to be converted some way. And I think it needs to be converted 
in a way that does *not* force us to call kmalloc() for idiotically small 
values.

			Linus

From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c -
	bisected
Date: Thu, 25 Sep 2008 10:55:19 +0200
Message-ID: <20080925085519.GA15771@elte.hu>
References: <alpine.LFD.1.10.0808251344250.3363@nehalem.linux-foundation.org> <86802c440808260136t3a33a9c8if53b6f70ab9df9e2@mail.gmail.com> <alpine.LFD.1.10.0808260939070.3363@nehalem.linux-foundation.org> <200809251150.26760.rusty@rustcorp.com.au>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200809251150.26760.rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Alan.Brunelle-VXdhtT5mjnY@public.gmane.org, travis-sJ/iWh9BUns@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, Jack Steiner <steiner-sJ/iWh9BUns@public.gmane.org>


* Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org> wrote:

> I can't see a neater way down this path, and I don't want to lose 
> const.
> 
> I can see three alternatives:
> 1) An ONSTACK_CPUMASK(name) macro which declares "struct cpumask name[1]" or
>    "struct cpumask *name".  Same idea as yours, without the typedef.
> 2) Use a normal struct for cpumask, make everyone use pointers, but have an
>    struct cpumask *alloc_stack_cpumask() which uses alloca() for small
>    NR_CPUS.
> 3) Same, but just use kmalloc everywhere.  Optimize important cases by hand.
> 
> Anyone see a better way?

since most of the important cpumasks in high-perf codepaths are already 
pre-constructed and embedded in some existing object (say task_struct), 
i think a variant of #3 is the best approach:

 - get rid of cpumask_t and use 'struct cpumask' everywhere.

 - do not expose normal kernel code to struct cpumask's definition, only
   declare the type via 'struct cpumask;' in sched.h - a'la 
   kmem_cache_t.

 - even hide the structure from sched.h - use an extra indirection for 
   struct cpumask *cpus_allowed in task_struct and be done with it.

 - have normal cpumask object alloc/free codepaths.

 - optimize any remaining important cases by hand, if needed. (the 
   scheduler mostly)

(wrt. #2, alloca() is a nightmare i think.)

	Ingo

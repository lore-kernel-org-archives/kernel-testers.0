From: Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c -	bisected
Date: Tue, 26 Aug 2008 12:11:46 -0700
Message-ID: <48B45572.1090904@sgi.com>
References: <alpine.LFD.1.10.0808251344250.3363@nehalem.linux-foundation.org> <alpine.LFD.1.10.0808251401590.3363@nehalem.linux-foundation.org> <20080826072220.GB31876@elte.hu> <20080826.004607.253712060.davem@davemloft.net> <20080826075355.GA7596@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080826075355.GA7596-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, Alan.Brunelle-VXdhtT5mjnY@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org

Ingo Molnar wrote:
> * David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org> wrote:
> 
>> From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
>> Date: Tue, 26 Aug 2008 09:22:20 +0200
>>
>>> And i guess the next generation of 4K CPUs support should just get away 
>>> from cpumask_t-on-kernel-stack model altogether, as the current model is 
>>> not maintainable. We tried the on-kernel-stack variant, and it really 
>>> does not work reliably. We can fix this in v2.6.28.
>> I recenetly did some work on sparc64 to use cpumask pointers as much 
>> as possible.
>>
>> The only case that didn't work was due to a limitation in arch 
>> interfaces for the new generic smp_call_function() code. It passes a 
>> cpumask_t instead of a pointer to one via 
>> arch_send_call_function_ipi().
>>
>> But other than that, the whole sparc64 SMP stuff uses cpumask_t 
>> pointers only.
> 
> nice!
> 
>> What it comes down to is that you have to do the "self cpu" and other 
>> tests in the cross-call dispatch routines themselves, instead of at 
>> the top-level working on cpumask_t objects.
>>
>> Otherwise you have to modify cpumask_t objects and thus pluck them 
>> onto the stack where they take up silly amounts of space.
> 
> What we did was this: we added MAXSMP which just revs up all the SMP 
> tunables to the maximum, so that we can see any problems early in 
> testing.
> 
> And we triggered problems, and we fixed a couple of regressions all 
> around stack footprint. But we didnt catch all of them - some were gcc 
> version dependent and configuration dependent. So i think it's safe to 
> say that the whole concept of allowing such a large cpumask_t to be on 
> the stack is fragile.

Iirc, it was the problem of basing percpu variables at zero that hit
problems with various gcc toolset versions.  I don't remember any
version problems with cpumask's on the stack, they all failed the
same way... :-)
> 
> Hence, i think the best way forward is to change the whole cpumask_t 
> concept and disallow explicit masks altogether. It's so easy to smack a 
> cpumask_t variable on the stack and nothing really warns about it, and 
> any function can become part of a nested call sequence.

This is a great idea!
> 
> So i think the dynamics of it has to be changed: we need a get/put API 
> and we need to make on-stack cpumask illegal on the build level (in 
> generic code at least). This has been Rusty's main argument early on i 
> think, and i now concur.
> 
> 	Ingo

Removing cpumask_t's from the stack is fairly straight forward.  The
problem of changing all functions to expect a cpumask pointer via a
global change is much more problematic.  And of course all those
functions that return a cpumask value would need to be addressed.

Thanks,
Mike

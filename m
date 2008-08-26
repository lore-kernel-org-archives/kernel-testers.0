From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c -
 bisected
Date: Tue, 26 Aug 2008 00:46:07 -0700 (PDT)
Message-ID: <20080826.004607.253712060.davem@davemloft.net>
References: <alpine.LFD.1.10.0808251344250.3363@nehalem.linux-foundation.org>
	<alpine.LFD.1.10.0808251401590.3363@nehalem.linux-foundation.org>
	<20080826072220.GB31876@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080826072220.GB31876-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: mingo-X9Un+BFzKDI@public.gmane.org
Cc: torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, Alan.Brunelle-VXdhtT5mjnY@public.gmane.org, travis-sJ/iWh9BUns@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org

From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Date: Tue, 26 Aug 2008 09:22:20 +0200

> And i guess the next generation of 4K CPUs support should just get away 
> from cpumask_t-on-kernel-stack model altogether, as the current model is 
> not maintainable. We tried the on-kernel-stack variant, and it really 
> does not work reliably. We can fix this in v2.6.28.

I recenetly did some work on sparc64 to use cpumask pointers
as much as possible.

The only case that didn't work was due to a limitation in
arch interfaces for the new generic smp_call_function() code.
It passes a cpumask_t instead of a pointer to one via
arch_send_call_function_ipi().

But other than that, the whole sparc64 SMP stuff uses cpumask_t
pointers only.

What it comes down to is that you have to do the "self cpu"
and other tests in the cross-call dispatch routines themselves,
instead of at the top-level working on cpumask_t objects.

Otherwise you have to modify cpumask_t objects and thus pluck
them onto the stack where they take up silly amounts of space.

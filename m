From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c -
 bisected
Date: Fri, 29 Aug 2008 13:04:55 -0700 (PDT)
Message-ID: <20080829.130455.54621315.davem@davemloft.net>
References: <20080826.134535.193703558.davem@davemloft.net>
	<48B7EEA2.7090300@sgi.com>
	<alpine.LFD.1.10.0808290909020.3300@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.1.10.0808290909020.3300-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org
Cc: jes-sJ/iWh9BUns@public.gmane.org, travis-sJ/iWh9BUns@public.gmane.org, mingo-X9Un+BFzKDI@public.gmane.org, Alan.Brunelle-VXdhtT5mjnY@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org

From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Date: Fri, 29 Aug 2008 09:14:44 -0700 (PDT)

> Well, it probably boots because it doesn't really seem to _change_ much of 
> anything.
> 
> Things like this:
> 
> 	-static inline void arch_send_call_function_ipi(cpumask_t mask)
> 	+static inline void arch_send_call_function_ipi(cpumask_t *mask)
> 	 {
> 	-       smp_ops.send_call_func_ipi(mask);
> 	+       smp_ops.send_call_func_ipi(*mask);
> 	 }
> 
> will still do that stack allocation at the time of the call. You'd have to 
> pass the thing all the way down as a pointer..

True, but we have to get there one step at a time.

BTW, sparc64 already wants a pointer here, so it's completely ready for
this:

void arch_send_call_function_ipi(cpumask_t mask)
{
	xcall_deliver((u64) &xcall_call_function, 0, 0, &mask);
}

From: Jes Sorensen <jes-sJ/iWh9BUns@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c - bisected
Date: Mon, 01 Sep 2008 13:53:44 +0200
Message-ID: <48BBD7C8.4070005@sgi.com>
References: <20080826072220.GB31876@elte.hu> <20080826.004607.253712060.davem@davemloft.net> <48B4542A.1050004@sgi.com> <20080826.134535.193703558.davem@davemloft.net> <48B7EEA2.7090300@sgi.com> <alpine.LFD.1.10.0808290909020.3300@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.1.10.0808290909020.3300-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, travis-sJ/iWh9BUns@public.gmane.org, mingo-X9Un+BFzKDI@public.gmane.org, Alan.Brunelle-VXdhtT5mjnY@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org

Linus Torvalds wrote:
> 
> On Fri, 29 Aug 2008, Jes Sorensen wrote:
>> I have only tested this on ia64, but it boots, so it's obviously
>> perfect<tm> :-)
> 
> Well, it probably boots because it doesn't really seem to _change_ much of 
> anything.

Hi Linus,

I realize that, but as I have been doing this work on ia64, I didn't
want to mess too much with the x86 code. The ia64 part of the patch does
change things :-)

If someone with more x86 knowledge would want to try and make that part
of the patch better, and more importantly test it, I'd be quite keen on
helping out.

Cheers,
Jes


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
> 
> 			Linus
> 

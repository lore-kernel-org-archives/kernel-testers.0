From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c -
	bisected
Date: Tue, 26 Aug 2008 09:22:20 +0200
Message-ID: <20080826072220.GB31876@elte.hu>
References: <alpine.LFD.1.10.0808231257310.3363@nehalem.linux-foundation.org> <alpine.LFD.1.10.0808231313170.3363@nehalem.linux-foundation.org> <48B29F7B.6080405@hp.com> <48B2A421.7080705@hp.com> <alpine.LFD.1.10.0808251019380.3363@nehalem.linux-foundation.org> <alpine.LFD.1.10.0808251106270.3363@nehalem.linux-foundation.org> <48B313E0.1000501@hp.com> <alpine.LFD.1.10.0808251326500.3363@nehalem.linux-foundation.org> <alpine.LFD.1.10.0808251344250.3363@nehalem.linux-foundation.org> <alpine.LFD.1.10.0808251401590.3363@nehalem.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.LFD.1.10.0808251401590.3363-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Alan D. Brunelle" <Alan.Brunelle-VXdhtT5mjnY@public.gmane.org>, Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Arjan van de Ven <arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>


* Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:

> On Mon, 25 Aug 2008, Linus Torvalds wrote:
> > 
> > checkstack.pl shows these things as the top problems:
> > 
> > 	0xffffffff80266234 smp_call_function_mask [vmlinux]:    2736
> > 	0xffffffff80234747 __build_sched_domains [vmlinux]:     2232
> > 	0xffffffff8023523f __build_sched_domains [vmlinux]:     2232
> > 
> > Anyway, the reason smp_call_function_mask and friends have such _huge_ 
> > stack usages for you is that they contain a 'cpumask_t' on the stack.
> 
> In fact, they contain multiple CPU-masks, each 4k-bits - 512 bytes - in 
> size. And they tend to call each other.
> 
> Quite frankly, I don't think we were really ready for 4k CPU's. I'm 
> going to commit this patch to make sure others don't do that many 
> CPU's by mistake. It marks MAXCPU's as being 'broken' so you cannot 
> select it, and also limits the number of CPU's that you _can_ select 
> to "just" 512.

yeah, that's OK i guess - distros can still enable 4K support if they 
wish to. Someone interested in improving the stack footprint situation 
should dust off the max-stack-footprint tracer so that we can catch 
these things in a more structured way.

And i guess the next generation of 4K CPUs support should just get away 
from cpumask_t-on-kernel-stack model altogether, as the current model is 
not maintainable. We tried the on-kernel-stack variant, and it really 
does not work reliably. We can fix this in v2.6.28.

	Ingo

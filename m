From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit
 a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Fri, 29 Aug 2008 20:24:52 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808292017440.5010@nehalem.linux-foundation.org>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>  <200808300031.16708.rjw@sisk.pl>  <86802c440808291624t2bd0229w2da36dfc6c794b18@mail.gmail.com>  <alpine.LFD.1.10.0808291704070.3300@nehalem.linux-foundation.org> 
 <86802c440808291711t32d3e76dsf804856b0a8f4939@mail.gmail.com>  <alpine.LFD.1.10.0808291733260.3300@nehalem.linux-foundation.org>  <alpine.LFD.1.10.0808291751480.3300@nehalem.linux-foundation.org>  <86802c440808291830t4547140dx9b12353649edd975@mail.gmail.com>
  <alpine.LFD.1.10.0808291919080.3300@nehalem.linux-foundation.org>  <alpine.LFD.1.10.0808291954410.3300@nehalem.linux-foundation.org> <86802c440808292007t3588edfnef95b723320ff023@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <86802c440808292007t3588edfnef95b723320ff023-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Fri, 29 Aug 2008, Yinghai Lu wrote:
> 
> we need to use insert_resource_split_to_fit instead...
> 
> otherwise __request_region will not be happy.

Are you really really sure?

Try just removing the IORESOURCE_BUSY. As mentioned, if we expect the PCI 
BAR's to work with the e820 resources, then BUSY really is simply not 
right any more. Not that I think it should matter either..

The ones that are added _early_ should be IORESOURCE_BUSY (ie the ones 
that cover RAM), but the others we now expect to nest with PCI BARs.

But since we add them after we have parsed the BAR's, I don't even see why 
the BUSY bit should even matter - we've already added the fixed BARs, and 
any newly allocated non-fixed ones shouldn't be allocated in e820 areas 
_regardless_ of whether the BUSY bit is set or not.

So pls explain why it matters?

		Linus

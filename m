From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit
 a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Fri, 29 Aug 2008 20:10:15 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808292006001.5010@nehalem.linux-foundation.org>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>  <86802c440808291413t4f31993fmba59a65aefd906ca@mail.gmail.com>  <200808300031.16708.rjw@sisk.pl>  <86802c440808291624t2bd0229w2da36dfc6c794b18@mail.gmail.com> 
 <alpine.LFD.1.10.0808291704070.3300@nehalem.linux-foundation.org>  <86802c440808291711t32d3e76dsf804856b0a8f4939@mail.gmail.com>  <alpine.LFD.1.10.0808291733260.3300@nehalem.linux-foundation.org>  <alpine.LFD.1.10.0808291751480.3300@nehalem.linux-foundation.org>
  <86802c440808291830t4547140dx9b12353649edd975@mail.gmail.com>  <alpine.LFD.1.10.0808291919080.3300@nehalem.linux-foundation.org> <86802c440808292000v767ce75fn80f665f2cf79ce3d@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <86802c440808292000v767ce75fn80f665f2cf79ce3d-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Fri, 29 Aug 2008, Yinghai Lu wrote:
>
> > Yeah, no, that's horrid. I'm happy it's reverted.
> 
> if update res->end according mmconfig end, before insert it forcibly,
> then could fix the chipset BAR problem too.

Except it's still a horrible patch that special-cases all the wrong things 
(ie random resources that we just happen to know that ACPI etc cares 
about).

There's no way to know in general if ACPI might care deeply where some 
random resource is (say, graphics memory) and it might be done with a BAR.

So that's why I think the approach stinks.

> BTW, insert_resource_expand_to_fit need to be replaced with
> insert_resource_split_to_fit....
> test stub reveal expand will make __request_region not working for
> some devices...because reserved_entries from e820 take
> IORESOUCE_BUSY...

Well, we should probably just remove the IORESOURCE_BUSY part.

Again, that comes from the fact that the e820 resources used to _override_ 
everything - they were inserted first, and nothing else was _ever_ allowed 
to allocate in that region. 

But if we're changing that, then the whole IORESOURCE_BUSY part doesn't 
make sense.

In fact, in general, IORESOURCE_BUSY doesn't much make sense any more in 
general, because it was actually more of an ISA-timeframe locking model 
saying "you can't touch this region". But if the whole point is that we 
now try to allow PCI device BAR's and the e820 maps to co-exist, then the 
whole - and only - reason for IORESOURCE_BUSY for them goes away..

			Linus

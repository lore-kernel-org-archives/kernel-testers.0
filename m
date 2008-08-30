From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit
 a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Fri, 29 Aug 2008 23:18:05 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808292312120.3290@nehalem.linux-foundation.org>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>  <alpine.LFD.1.10.0808291704070.3300@nehalem.linux-foundation.org>  <86802c440808291711t32d3e76dsf804856b0a8f4939@mail.gmail.com>  <alpine.LFD.1.10.0808291733260.3300@nehalem.linux-foundation.org>
  <alpine.LFD.1.10.0808291751480.3300@nehalem.linux-foundation.org>  <86802c440808291830t4547140dx9b12353649edd975@mail.gmail.com>  <alpine.LFD.1.10.0808291919080.3300@nehalem.linux-foundation.org>  <alpine.LFD.1.10.0808291954410.3300@nehalem.linux-foundation.org>
  <86802c440808292007t3588edfnef95b723320ff023@mail.gmail.com>  <alpine.LFD.1.10.0808292017440.5010@nehalem.linux-foundation.org> <86802c440808292141g6ffd1329p54e58ee04c26540a@mail.gmail.com>
 <alpine.LFD.1.10.0808292216310.3290@nehalem.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.1.10.0808292216310.3290-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Fri, 29 Aug 2008, Linus Torvalds wrote:
> 
> IORESOURCE_BUSY is really more of a "legacy bit". It has almost no bearing 
> on the actual allocations.

And just to clarify - I think that while you get that error for the 
qla2xxx driver, I suspect that your actual resource tree is all good, and 
that the PCI allocations were fine.

And then the problem you his is now that the driver literally thinks that 
some other driver already took that resource.

The patch I just sent is not actually the patch I think you should do: the 
proper patch is to just remove IORESOURCE_BUSY from the e820 resources, 
simply because they are _not_ indicative of a driver already holding on to 
the resource.

Of course, the sad part is that potentially IORESOURCE_BUSY might actually 
be a really good bit for exactly that - we've had tons of issues with 
hardware sensors literally having a kernel driver _and_ a system level 
driver (ie ACPI), and things get confused exactly because there are now 
two drivers trying to drive the same piece of hardware.

But basically, if you have BAR's and the e820 resource areas co-existing, 
then the e820 resources shouldn't be marked BUSY.

Anyway - to just re-cap - you might as well just ignore the patch I just 
sent out, and instead just avoid doing that BUSY bit to begin with in the 
"late e820" case. Simpler and more correct.

		Linus

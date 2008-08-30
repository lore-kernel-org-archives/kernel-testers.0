From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit
 a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sat, 30 Aug 2008 12:14:02 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808301150150.3290@nehalem.linux-foundation.org>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>  <200808292157.24179.rjw@sisk.pl>  <alpine.LFD.1.10.0808291434110.3300@nehalem.linux-foundation.org>  <200808300030.32905.rjw@sisk.pl>  <alpine.LFD.1.10.0808301012060.3290@nehalem.linux-foundation.org>
 <86802c440808301107n4561e815ldf53183c92a7bc93@mail.gmail.com> <alpine.LFD.1.10.0808301141590.3290@nehalem.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.1.10.0808301141590.3290-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Sat, 30 Aug 2008, Linus Torvalds wrote:
> 
> We simply shouldn't try to compare the BAR start with randomly chosen 
> things.

Btw, looking at that bogus BAR#3 some more: I don't actually think it's 
even an MCFG resource.

I think it's literally the resource that describes the HT window for the 
host bridge. So it's literally like the "root" resource - all external 
MMIO resources that go over HT have to be in that window.

IOW, I'm starting to think that it's not even broken. It is probably 
perfectly real. It's not a "PCI bridge" in the sense that it doesn't 
bridge one PCI bus to another, but it's a host bridge, and it bridges the 
CPU memory accesses to another bus. 

The fact that the MCFG area happens to be at the start of that window is 
probably just a random detail.

Does anybody know how to find chipset docs for AMD/ATI chipsets? I find 
CPU docs, and the GPU docs, but not the 790 chipset docs anywhere (yeah, 
it looks promising with a link that says "AMD 790FX Chipset 
Specifications", but the link just takes you to some trivial overview, not 
any actual specs.

Anybody?

			Linus

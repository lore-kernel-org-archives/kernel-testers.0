From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit
 a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Fri, 29 Aug 2008 17:45:18 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808291733260.3300@nehalem.linux-foundation.org>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>  <200808292157.24179.rjw@sisk.pl>  <86802c440808291413t4f31993fmba59a65aefd906ca@mail.gmail.com>  <200808300031.16708.rjw@sisk.pl>  <86802c440808291624t2bd0229w2da36dfc6c794b18@mail.gmail.com>
  <alpine.LFD.1.10.0808291704070.3300@nehalem.linux-foundation.org> <86802c440808291711t32d3e76dsf804856b0a8f4939@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <86802c440808291711t32d3e76dsf804856b0a8f4939-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Fri, 29 Aug 2008, Yinghai Lu wrote:
> 
> the BAR is from pci_read_bases..., so that chipset is broken...
> they are even supposed to to hide that BAR to os.

Ok, can we please

 - *do* get a quirk for known-broken chipsets (at a *PCI* level, this is 
   not an x86 issue)

 - *not* get any more random PCI work-arounds that go through the x86 tree 
   and aren't even looked at by the (very few) people who actually 
   understand the PCI resource handling?

IOW, for the first issue, just teach pci_mmcfg_check_hostbridge() about 
this broken bridge, and have it fix things up (including hiding the thing, 
but also just verifying that the dang thing even -works- etc).

For the second issue - please do realize that we have had much over a 
_decade_ of work on the PCI resource handling, and it's fragile. The thing 
I reverted really isn't something that Ingo should ever have committed in 
the first place. It's not something an x86 maintainer can even make sane 
decisions on.

Resource handling things _need_ to get ACK's from people like Ivan 
Kokshaysky or me. Or at least _several_ other people who actually really 
understand not just PCI resource handling, but have actually seen all the 
horrible crap it causes, and understand how fragile this stuff is. It's 
all different, and it's all about all the million of broken machines out 
there that screw things up.

			Linus

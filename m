From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit
 a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sat, 30 Aug 2008 20:00:00 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808301949100.3290@nehalem.linux-foundation.org>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>  <alpine.LFD.1.10.0808301141590.3290@nehalem.linux-foundation.org>  <86802c440808301210u6db1b4e7p4036bdc95db1a601@mail.gmail.com>  <alpine.LFD.1.10.0808301214310.3290@nehalem.linux-foundation.org>
  <86802c440808301314t525d1b75r9afcc73857cf5c79@mail.gmail.com>  <alpine.LFD.1.10.0808301539391.3290@nehalem.linux-foundation.org>  <86802c440808301550s627dfcb0h7ff8971c8248703a@mail.gmail.com>  <alpine.LFD.1.10.0808301615450.3290@nehalem.linux-foundation.org>
  <86802c440808301639j137ebef1r1ecadeebd351fc03@mail.gmail.com>  <86802c440808301727k3e86c816j323eca0fb5e3f4fc@mail.gmail.com> <86802c440808301750w6655bbek557e6a23b8036654@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <86802c440808301750w6655bbek557e6a23b8036654-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Ivan Kokshaysky <ink-biIs/Y0ymYJMZLIVYojuPNP0rXTJTi09@public.gmane.org>, Jordan Crouse <jordan.crouse-5C7GfCeVMHo@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Sat, 30 Aug 2008, Yinghai Lu wrote:
> >
> >                /* Don't touch classless devices or host bridges or ioapics.  */
> >                if (class == PCI_CLASS_NOT_DEFINED ||
> >                    class == PCI_CLASS_BRIDGE_HOST)
> >                        continue;
> >
> >
> > it skips the host bridge...
> 
> what's story for not touching host bridges?

Ahh. Exactly because of things like this. The hist bridge BAR's are often 
special.

That code comes from almost four years ago, the commit message was:

  Author: Maciej W. Rozycki <macro-8NJIiSa5LzA@public.gmane.org>
  Date:   Thu Dec 16 21:44:31 2004 -0800

    [PATCH] PCI: Don't touch BARs of host bridges
    
     BARs of host bridges often have special meaning and AFAIK are best left
    to be setup by the firmware or system-specific startup code and kept
    intact by the generic resource handler.  For example a couple of host
    bridges used for MIPS processors interpret BARs as target-mode decoders
    for accessing host memory by PCI masters (which is quite reasonable).
    For them it's desirable to keep their decoded address range overlapping
    with the host RAM for simplicity if nothing else (I can imagine running
    out of address space with lots of memory and 32-bit PCI with no DAC
    support in the participating devices).
    
     This is already the case with the i386 and ppc platform-specific PCI
    resource allocators.  Please consider the following change for the generic
    allocator.  Currently we have a pile of hacks implemented for host bridges
    to be left untouched and I'd be pleased to remove them.
    
    From: "Maciej W. Rozycki" <macro-8NJIiSa5LzA@public.gmane.org>
    Signed-off-by: Greg Kroah-Hartman <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>

and we've had other things where host bridges are special (ie iirc, if you 
turn off PCI_COMMAND_MEM from a host bridge, it stops access to real RAM 
from the CPU for some bridges - so you must never turn those things off or 
you get a dead system).

(But at least Intel host bridges will just ignore writes to the CMD 
register, I think - you cannot turn MEM off).

			Linus

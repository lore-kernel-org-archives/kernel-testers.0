From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit
 a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sat, 30 Aug 2008 21:12:50 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808302100490.12958@nehalem.linux-foundation.org>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>  <alpine.LFD.1.10.0808301214310.3290@nehalem.linux-foundation.org>  <86802c440808301314t525d1b75r9afcc73857cf5c79@mail.gmail.com>  <alpine.LFD.1.10.0808301539391.3290@nehalem.linux-foundation.org>
  <86802c440808301550s627dfcb0h7ff8971c8248703a@mail.gmail.com>  <alpine.LFD.1.10.0808301615450.3290@nehalem.linux-foundation.org>  <86802c440808301639j137ebef1r1ecadeebd351fc03@mail.gmail.com>  <86802c440808301727k3e86c816j323eca0fb5e3f4fc@mail.gmail.com>
  <86802c440808301750w6655bbek557e6a23b8036654@mail.gmail.com>  <alpine.LFD.1.10.0808301949100.3290@nehalem.linux-foundation.org> <86802c440808302053r46256f68mf356797a259ad164@mail.gmail.com>
 <alpine.LFD.1.10.0808302055040.12958@nehalem.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.1.10.0808302055040.12958-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Ivan Kokshaysky <ink-biIs/Y0ymYJMZLIVYojuPNP0rXTJTi09@public.gmane.org>, Jordan Crouse <jordan.crouse-5C7GfCeVMHo@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Sat, 30 Aug 2008, Linus Torvalds wrote:
> 
> Short recap:
> 
>  - we need to populate the resource map with as much possible information 
>    about the system as we can..
> 
>  - .. because when we assign _dynamic_ resources, we need to make sure 
>    that they don't clash with random system resources that we don't really 
>    otherwise have a lot of visibility into.
> 
> So the resource tree is not just about resources we control, it's also 
> about resources that others control(led) and we don't necessarily know a 
> lot about.

Btw, this is a problem that we seldom actually have on most desktops, 
because the BIOS will normally set up just about _all_ the resources, and 
we seldom have to worry about anything but just enumerating them (and the 
occasional buggy setup).

The problems with resource allocation mostly happen on laptops, and 
especially with cardbus controllers. Now, that's obviously going away 
(people mostly use USB for most things that Cardbus/PCMCIA was used for a 
few years ago), but it still exists and with docking stations etc it can 
actually be even worse (although that's mainly because access to docking 
stations is much more limited, I suspect).

So what used to happen _all_ the time was that cardbus worked fine on 99% 
of all machines, but then some machines would lock up when you inserted a 
card in them, or the card just wouldn't work. And the reason was that some 
stupid motherboard resource (like the ACPI sleeping registers or the LPC 
control regs) were not done as a normal BAR, so the kernel wouldn't know 
about them, and the BIOS didn't necessarily even list it because it never 
mattered with Windows (since Windows has a different algorithm for laying 
out the bus resources, and wouldn't hit the magic resource).

So this is why we populate the resources with everything we can _possibly_ 
try to find, including hardware-specific quirks (see things like 
quirk_ali7101_acpi or all the quirk_ich4_lpc_acpi things etc) for finding 
resources that aren't done by BAR's.

And the hardware quirks have generally worked pretty well. I'd love to add 
some quirk for the RD790 chipset, but I'd like to know what the rules are 
for it. I know we have some AMD contacts, I wonder if they could give docs 
(I don't personally do NDA's, but I can do "gentleman's agreements" where 
I just say I won't spread things further, as long as I can write code 
based on them. I know other kernel developers do similar things).

Jordan?

			Linus

From: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #15124] PCI host bridge windows ignored (works with pci=use_crs)
Date: Tue, 26 Jan 2010 10:21:29 -0800
Message-ID: <4B5F32A9.7090105@kernel.org>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera> <20100126071912.GA7543@jgarrett.org> <201001261348.59508.rjw@sisk.pl> <201001261032.37053.bjorn.helgaas@hp.com> <alpine.LFD.2.00.1001260955060.3574@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.1001260955060.3574-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Jeff Garrett <jeff-184d8XiO+QJg9hUCZPvPmw@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux PCI <linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Myron Stowe <myron.stowe-VXdhtT5mjnY@public.gmane.org>, Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On 01/26/2010 10:16 AM, Linus Torvalds wrote:
> 
> 
> On Tue, 26 Jan 2010, Bjorn Helgaas wrote:
>>
>> which IS big enough, and we know the bridge is in fact forwarding the
>> [mem 0xd0000000-0xdfffffff 64bit pref] region, because the Radeon works
>> when Jeff boots with "pci=use_crs".
> 
> I bet it's a subtractive decode thing. Sure, it could be just another 
> undocumented range register (does anybody have the datasheet for that 
> thing?) but Intel tends to often have subtractive decode.
> 
> That system in question has three PCI express root ports, but two of them 
> have IO and memory disabled according to the lspci info. So maybe it's as 
> simple as that "I/O Hub PCI Express Root Port 7" just catching anything 
> that nobody else does, and the single IOH host chip doing the same?
> 
>> I think we should remove intel_bus.c before .33.  It's breaking boxes
>> and we don't know how to fix it.  Even if we do find out how to fix it,
>> I think we should move toward using _CRS instead, because that's what
>> Windows uses and it's an easy way for the firmware to tell us about
>> platform quirks.
> 
> I suspect that for 33 it is indeed best to just revert. But somebody is 
> bound to have information on how the actual hardware works. Yinghai?

I have asked intel if there is any bit that could be enabled the routing.
there is no info about for their documentations.

Yinghai

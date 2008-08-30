From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit
 a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sat, 30 Aug 2008 12:31:02 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808301214310.3290@nehalem.linux-foundation.org>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>  <200808292157.24179.rjw@sisk.pl>  <alpine.LFD.1.10.0808291434110.3300@nehalem.linux-foundation.org>  <200808300030.32905.rjw@sisk.pl>  <alpine.LFD.1.10.0808301012060.3290@nehalem.linux-foundation.org>
  <86802c440808301107n4561e815ldf53183c92a7bc93@mail.gmail.com>  <alpine.LFD.1.10.0808301141590.3290@nehalem.linux-foundation.org> <86802c440808301210u6db1b4e7p4036bdc95db1a601@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <86802c440808301210u6db1b4e7p4036bdc95db1a601-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Sat, 30 Aug 2008, Yinghai Lu wrote:
> 
> do you agree to use quirk to make the BAR res to have correct end
> between pci_probe and pci_resource_survey?

In general I would agree, but now that I've looked at it a bit more, I 
actually don't think it's a bug in the chipset any more. See my previous 
email that crossed with yours.

I suspect that that northbridge resource is basically acting as a bridge 
resource. So 0xe0000000 - 0xffffffff is actually _correct_. And MCFG being 
in that window (and being first in it) is just a detail.

Look at the resource allocations on Rafael's machine: there are two 
different classes:

 - outside that BAR3 window:

   The "external gfx0 port A" decode (bridged by device 0000:02.0):

	d8000000-dfffffff : PCI Bus 0000:01
	  d8000000-dfffffff : 0000:01:00.0
	    d8000000-d8ffffff : vesafb

   and suspect the graphics port is special (considering that this is an 
   ATI chipset)

 - inside that BAR3 window: everything else (PCI express):

	e0000000-efffffff : PCI MMCONFIG 0
	fe6f4000-fe6f7fff : 0000:00:14.2
	  fe6f4000-fe6f7fff : ICH HD audio
	fe6fa000-fe6fafff : 0000:00:13.4
	  fe6fa000-fe6fafff : ohci_hcd
	fe6fb000-fe6fbfff : 0000:00:13.3
	  fe6fb000-fe6fbfff : ohci_hcd
	fe6fc000-fe6fcfff : 0000:00:13.2
	  fe6fc000-fe6fcfff : ohci_hcd
	fe6fd000-fe6fdfff : 0000:00:13.1
	  fe6fd000-fe6fdfff : ohci_hcd
	fe6fe000-fe6fefff : 0000:00:13.0
	  fe6fe000-fe6fefff : ohci_hcd
	fe6ff000-fe6ff0ff : 0000:00:13.5
	  fe6ff000-fe6ff0ff : ehci_hcd
	fe6ff800-fe6ffbff : 0000:00:12.0
	  fe6ff800-fe6ffbff : ahci
	fe700000-fe7fffff : PCI Bus 0000:01
	  fe7c0000-fe7dffff : 0000:01:00.0
	  fe7e0000-fe7effff : 0000:01:00.1
	  fe7f0000-fe7fffff : 0000:01:00.0
	fe800000-fe8fffff : PCI Bus 0000:02
	  fe8ffc00-fe8fffff : 0000:02:00.0
	    fe8ffc00-fe8fffff : ahci
	fe900000-fe9fffff : PCI Bus 0000:03
	  fe9c0000-fe9dffff : 0000:03:00.0
	  fe9fc000-fe9fffff : 0000:03:00.0
	    fe9fc000-fe9fffff : sky2
	fea00000-feafffff : PCI Bus 0000:04
	  feaffc00-feafffff : 0000:04:00.0
	    feaffc00-feafffff : ahci
	feb00000-febfffff : PCI Bus 0000:05
	  febff000-febfffff : 0000:05:08.0
	    febff000-febff7ff : ohci1394
	fec00000-fec00fff : IOAPIC 0
	fed00000-fed003ff : HPET 2
	fee00000-fee00fff : Local APIC
	fff00000-ffffffff : reserved

Hmm? 

(yeah, some of those resources are _really_ special, and are inside the 
CPU itself, eg the APIC and possibly HPET, and never necessarily even make 
it to the host bridge at all because they get decoded early).

			Linus

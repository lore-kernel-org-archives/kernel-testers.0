From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #15124] PCI host bridge windows ignored (works with
 pci=use_crs)
Date: Wed, 27 Jan 2010 12:59:05 -0800
Message-ID: <20100127125905.17db320f@jbarnes-piketon>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera>
	<201001270945.17113.bjorn.helgaas@hp.com>
	<20100127085337.6ff06f6e@jbarnes-piketon>
	<201001271345.54454.bjorn.helgaas@hp.com>
	<alpine.LFD.2.00.1001271247450.3570@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.1001271247450.3570-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>, Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Jeff Garrett <jeff-184d8XiO+QJg9hUCZPvPmw@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux PCI <linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Myron Stowe <myron.stowe-VXdhtT5mjnY@public.gmane.org>, Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Wed, 27 Jan 2010 12:50:12 -0800 (PST)
Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:

> 
> 
> On Wed, 27 Jan 2010, Bjorn Helgaas wrote:
> > 
> > Without intel_bus.c, we essentially assume config 1 all the time.
> > If we keep intel_bus.c and this patch for .33, things should work
> > for configs 1 and 4.  Adding support for config 4 is good.
> 
> Quite frankly, is there any major downside to just disabling/removing 
> intel_bus.c for 2.6.33? If we're not planning on having it in the long run 
> anyway - or even if we are, but we can't be really happy about the state 
> of it as it would be in 2.6.33, not using it at all seems to be the 
> smaller headache.
> 
> The machines that it helps are also the machines where you can fix things 
> up with 'use_csr', no? And they are pretty rare, and they didn't use to 
> work without that use_csr in 2.6.32 either, so it's not even a regression.
> 
> Am I missing something?

No that's the plan.  intel_bus.c was a good effort, but it's just too
different from what Windows does, and it'll always be behind.  We'll
disable it for 2.6.33 and try again to move to _CRS in 2.6.34 (but
fixing the problem with large numbers of _CRS resources this time).

-- 
Jesse Barnes, Intel Open Source Technology Center

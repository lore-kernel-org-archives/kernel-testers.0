From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #15124] PCI host bridge windows ignored (works with
 pci=use_crs)
Date: Thu, 28 Jan 2010 08:24:32 -0800
Message-ID: <20100128082432.05a97ebc@jbarnes-piketon>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera>
	<201001261348.59508.rjw@sisk.pl>
	<201001261032.37053.bjorn.helgaas@hp.com>
	<201001261902.13911.rjw@sisk.pl>
	<20100126101752.78196900@jbarnes-piketon>
	<4B5F735B.2040308@kernel.org>
	<alpine.LFD.2.00.1001271748300.3570@localhost.localdomain>
	<20100127192409.79af96db@jbarnes-piketon>
	<20100128040226.GB8964@jgarrett.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100128040226.GB8964-184d8XiO+QJg9hUCZPvPmw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jeff Garrett <jeff-184d8XiO+QJg9hUCZPvPmw@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux PCI <linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Myron Stowe <myron.stowe-VXdhtT5mjnY@public.gmane.org>, Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Wed, 27 Jan 2010 22:02:26 -0600
jeff-184d8XiO+QJg9hUCZPvPmw@public.gmane.org (Jeff Garrett) wrote:

> On Wed, Jan 27, 2010 at 07:24:09PM -0800, Jesse Barnes wrote:
> > On Wed, 27 Jan 2010 17:50:17 -0800 (PST)
> > Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
> > > On Tue, 26 Jan 2010, Yinghai Lu wrote:
> > > > 
> > > > [PATCH] x86/pci: don't use ioh resource if only have one ioh
> > > 
> > > Please, no.
> > > 
> > > This patch is too ugly to live.
> > > 
> > > And it's totally unacceptable to probe every single possible PCI device 
> > > for something like this.
> > > 
> > > If we don't know enough about the hardware workings of those Intel bridges 
> > > to know when they are active and how they decode things, then please let's 
> > > just disable intel_bus.c entirely.
> > > 
> > > There's no excuse for hacky tests like this.
> > 
> > Ok, we'll just kill it entirely then.  I'll send a patch tomorrow
> > unless Yinghai beats me to it.
> 
> What about something like this (works for me, without pci=use_crs)?
> 
> ---
>     Remove intel_bus.c Intel-specific PCI/IOH logic
>     
>     Signed-off-by: Jeff Garrett <jeff-184d8XiO+QJg9hUCZPvPmw@public.gmane.org>

Yeah, looks good.  I'll push to Linus today.

Thanks,
Jesse

-- 
Jesse Barnes, Intel Open Source Technology Center

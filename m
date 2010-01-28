From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15124] PCI host bridge windows ignored (works 
 =?iso-8859-1?q?with=09pci=3Duse=5Fcrs?=)
Date: Thu, 28 Jan 2010 11:45:10 +0100
Message-ID: <201001281145.10611.rjw@sisk.pl>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera> <1264652762.24020.5.camel@dc7800.home> <4B61266F.1060600@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4B61266F.1060600-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Jeff Garrett <jeff-184d8XiO+QJg9hUCZPvPmw@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux PCI <linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Myron Stowe <myron.stowe-VXdhtT5mjnY@public.gmane.org>, Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Thursday 28 January 2010, Yinghai Lu wrote:
> On 01/27/2010 08:26 PM, Bjorn Helgaas wrote:
> > On Wed, 2010-01-27 at 15:34 -0800, Yinghai Lu wrote:
> >> On 01/27/2010 01:03 PM, Bjorn Helgaas wrote:
> >>> On Wednesday 27 January 2010 01:50:12 pm Linus Torvalds wrote:
> >>>>
> >>>> On Wed, 27 Jan 2010, Bjorn Helgaas wrote:
> >>>>>
> >>>>> Without intel_bus.c, we essentially assume config 1 all the time.
> >>>>> If we keep intel_bus.c and this patch for .33, things should work
> >>>>> for configs 1 and 4.  Adding support for config 4 is good.
> >>>>
> >>>> Quite frankly, is there any major downside to just disabling/removing 
> >>>> intel_bus.c for 2.6.33? If we're not planning on having it in the long run 
> >>>> anyway - or even if we are, but we can't be really happy about the state 
> >>>> of it as it would be in 2.6.33, not using it at all seems to be the 
> >>>> smaller headache.
> >>>>
> >>>> The machines that it helps are also the machines where you can fix things 
> >>>> up with 'use_csr', no? And they are pretty rare, and they didn't use to 
> >>>> work without that use_csr in 2.6.32 either, so it's not even a regression.
> >>>>
> >>>> Am I missing something?
> >>>
> >>> Only that when we added intel_bus.c, Yinghai reported that the reason
> >>> was because a machine had a broken _CRS, so "pci=use_crs" wouldn't help.
> >>>
> >>> At the time, Windows hadn't been brought up on that box.  My
> >>> speculation is that by now, they've done that bringup and probably
> >>> fixed the _CRS issue, so it might work now.
> >>>
> >>> If that's the case, we could drop intel_bus.c from .33 and just use
> >>> "pci=use_crs" on those boxes until we can figure out how to turn it
> >>> on automatically.
> >>
> >> BIOS fixed that problem already. but
> >> 1. how to turn that pci=use_crs for that box automatically ?
> >> how about our other kind of boxes?
> > 
> > Yes, we need a way to turn on "pci=use_crs" automatically.  My first
> > thought is to turn it on for all BIOSes with dates of 2010 or later, and
> > in addition, have a whitelist of the pre-2010 machines that require it.
> > 
> >> 2. how about when apci is disabled?
> > 
> > When ACPI is disabled, I think we just have to accept that we lose some
> > functionality.  I don't see the need for alternate ways to accomplish
> > everything that ACPI does.  It's becoming less and less useful to
> > disable ACPI; I think it's only interesting as a debugging tool, and
> > even then it's a sledgehammer.
> 
> some systems when acpi is enabled could have interrupt storm. 
> and have to disable acpi.

Blacklist them?

Rafael

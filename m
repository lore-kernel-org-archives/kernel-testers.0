From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #15124] PCI host bridge windows ignored (works with
 pci=use_crs)
Date: Tue, 26 Jan 2010 10:21:22 -0800 (PST)
Message-ID: <alpine.LFD.2.00.1001261016380.3574@localhost.localdomain>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera> <201001261348.59508.rjw@sisk.pl> <201001261032.37053.bjorn.helgaas@hp.com> <201001261902.13911.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201001261902.13911.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>, Jeff Garrett <jeff-184d8XiO+QJg9hUCZPvPmw@public.gmane.org>, Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux PCI <linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Myron Stowe <myron.stowe-VXdhtT5mjnY@public.gmane.org>, Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>



On Tue, 26 Jan 2010, Rafael J. Wysocki wrote:
> 
> Perhaps it would be sufficient to make pci=use_crs the default and leave the
> option to use intel_bus.c for whoever needs that?

Well, 'use_crs' broke other machines. See:

	http://lkml.org/lkml/2009/6/23/715

but maybe that is all fixed..

		Linus

From: jeff-184d8XiO+QJg9hUCZPvPmw@public.gmane.org (Jeff Garrett)
Subject: Re: [Bug #15124] PCI host bridge windows ignored (works with
 pci=use_crs)
Date: Wed, 27 Jan 2010 22:01:48 -0600
Message-ID: <20100128040148.GA8964@jgarrett.org>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera>
 <201001261348.59508.rjw@sisk.pl>
 <201001261032.37053.bjorn.helgaas@hp.com>
 <201001261902.13911.rjw@sisk.pl>
 <20100126101752.78196900@jbarnes-piketon>
 <4B5F735B.2040308@kernel.org>
 <20100127173550.14737320@jbarnes-piketon>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20100127173550.14737320@jbarnes-piketon>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux PCI <linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Myron Stowe <myron.stowe-VXdhtT5mjnY@public.gmane.org>, Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Wed, Jan 27, 2010 at 05:35:50PM -0800, Jesse Barnes wrote:
> On Tue, 26 Jan 2010 14:57:31 -0800
> Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
> 
> > On 01/26/2010 10:17 AM, Jesse Barnes wrote:
> > 
> > > 
> > > For 2.6.33 I'd like a minimal fix though, can you disable it for all
> > > but the multi-IOH case perhaps?
> > > 
> > please check,
> > 
> > [PATCH] x86/pci: don't use ioh resource if only have one ioh
> > 
> > some system could use reosurce out of IOH resources when only one ioh is there.
> > 
> > could be BIOS have wrong IOH resources and not enable them.
> > 
> > Signed-off-by: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
> 
> I applied this one to my for-linus branch.  Jeff can you confirm it
> works for you?  I'd like to push it to Linus tomorrow.
> 
> Thanks,

FWIW, works...

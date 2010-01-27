From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #15124] PCI host bridge windows ignored (works with
 pci=use_crs)
Date: Wed, 27 Jan 2010 08:53:37 -0800
Message-ID: <20100127085337.6ff06f6e@jbarnes-piketon>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera>
	<20100126101752.78196900@jbarnes-piketon>
	<4B5F735B.2040308@kernel.org>
	<201001270945.17113.bjorn.helgaas@hp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <201001270945.17113.bjorn.helgaas@hp.com>
Sender: linux-pci-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Bjorn Helgaas <bjorn.helgaas@hp.com>
Cc: Yinghai Lu <yinghai@kernel.org>, Jeff Garrett <jeff@jgarrett.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Linux PCI <linux-pci@vger.kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, Myron Stowe <myron.stowe@hp.com>, Matthew Garrett <mjg59@srcf.ucam.org>, Ingo Molnar <mingo@elte.hu>

On Wed, 27 Jan 2010 09:45:15 -0700
Bjorn Helgaas <bjorn.helgaas@hp.com> wrote:

> On Tuesday 26 January 2010 03:57:31 pm Yinghai Lu wrote:
> > [PATCH] x86/pci: don't use ioh resource if only have one ioh
> > 
> > some system could use reosurce out of IOH resources when only one ioh is there.
> > 
> > could be BIOS have wrong IOH resources and not enable them.
> 
> The subtractive decode theory makes sense and would explain what's
> happening, but I don't like this patch.
> 
> If we assume that this really is a subtractive decode issue, this
> patch approaches it the wrong way.  We need to know whether a
> particular host bridge is configured for subtractive decode.  This
> patch tests whether we have more than one host bridge, which is quite
> a different question.
> 
> Imagine these system configurations:
> 
>   1) a single host bridge with subtractive decode
>   2) a single host bridge with only positive decode
>   3) multiple host bridges with subtractive decode enabled on one
>   4) multiple host bridges with only positive decode
> 
> This patch will break if we encounter configs 2 or 3.  In config 2,
> this patch assumes the bridge performs subtractive decode, so we
> think the bridge forwards more address space than it actually does.
> If we try to use that address space, the device will never see the
> accesses.  In config 3, this patch assumes there's no subtractive
> decode, so we would see Jeff's problem all over again.

Right, but OTOH:
  - multiple IOH has already been tested with the intel_bus.c code
  - we want to move to using _CRS data in these cases instead

So do you have any objection to applying this patch for 2.6.33 and then
moving away from intel_bus.c in .34 (assuming we can get _CRS working
well on the same machines where intel_bus.c was needed)?

-- 
Jesse Barnes, Intel Open Source Technology Center

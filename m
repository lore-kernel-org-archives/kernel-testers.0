From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #15124] PCI host bridge windows ignored (works with
 pci=use_crs)
Date: Tue, 26 Jan 2010 10:17:52 -0800
Message-ID: <20100126101752.78196900@jbarnes-piketon>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera>
	<201001261348.59508.rjw@sisk.pl>
	<201001261032.37053.bjorn.helgaas@hp.com>
	<201001261902.13911.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <201001261902.13911.rjw@sisk.pl>
Sender: linux-pci-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Bjorn Helgaas <bjorn.helgaas@hp.com>, Jeff Garrett <jeff@jgarrett.org>, Yinghai Lu <yinghai@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Linux PCI <linux-pci@vger.kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, Myron Stowe <myron.stowe@hp.com>, Matthew Garrett <mjg59@srcf.ucam.org>, Ingo Molnar <mingo@elte.hu>

On Tue, 26 Jan 2010 19:02:13 +0100
"Rafael J. Wysocki" <rjw@sisk.pl> wrote:
> > I'm quite concerned about this for .33 because I don't think Jeff's
> > configuration (Dell desktop with Intel x58 and large graphics device)
> > is unusual.
> > 
> > The benefit of intel_bus.c is on machines with multiple IOHs, where we
> > need to figure out which address ranges go to which IOHs so we can
> > program downstream devices correctly.  But even there, _CRS should give
> > us the information we need, so "pci=use_crs" should make these machines
> > work.
> > 
> > I think we should remove intel_bus.c before .33.  It's breaking boxes
> > and we don't know how to fix it.  Even if we do find out how to fix it,
> > I think we should move toward using _CRS instead, because that's what
> > Windows uses and it's an easy way for the firmware to tell us about
> > platform quirks.
> 
> Perhaps it would be sufficient to make pci=use_crs the default and leave the
> option to use intel_bus.c for whoever needs that?

We can't make use_crs the default w/o some more _CRS handling fixes
(some firmwares have large lists we need to handle).

We can disable intel_bus.c though.  Yinghai, I'm inclined against the
intel_bus.c approach at this point.  It seems unlikely we'll ever keep
it up to date with new bridges, since its approach differs so much from
how things are done in the Windows world, where the firmware provides
a list of resources.  We'll always be playing catch up, and will
probably be behind the firmware most of the time since the docs with
the necessary info likely won't be public most of the time.

For 2.6.33 I'd like a minimal fix though, can you disable it for all
but the multi-IOH case perhaps?

-- 
Jesse Barnes, Intel Open Source Technology Center

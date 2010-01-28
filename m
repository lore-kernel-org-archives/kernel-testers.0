From: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Bug #15124] PCI host bridge windows ignored (works with
 pci=use_crs)
Date: Wed, 27 Jan 2010 17:50:17 -0800 (PST)
Message-ID: <alpine.LFD.2.00.1001271748300.3570@localhost.localdomain>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera> <201001261348.59508.rjw@sisk.pl> <201001261032.37053.bjorn.helgaas@hp.com> <201001261902.13911.rjw@sisk.pl> <20100126101752.78196900@jbarnes-piketon> <4B5F735B.2040308@kernel.org>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755983Ab0A1Bvt@vger.kernel.org>
In-Reply-To: <4B5F735B.2040308@kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yinghai@kernel.org>
Cc: Jesse Barnes <jbarnes@virtuousgeek.org>, Jeff Garrett <jeff@jgarrett.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Bjorn Helgaas <bjorn.helgaas@hp.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Linux PCI <linux-pci@vger.kernel.org>, Myron Stowe <myron.stowe@hp.com>, Matthew Garrett <mjg59@srcf.ucam.org>, Ingo Molnar <mingo@elte.hu>



On Tue, 26 Jan 2010, Yinghai Lu wrote:
> 
> [PATCH] x86/pci: don't use ioh resource if only have one ioh

Please, no.

This patch is too ugly to live.

And it's totally unacceptable to probe every single possible PCI device 
for something like this.

If we don't know enough about the hardware workings of those Intel bridges 
to know when they are active and how they decode things, then please let's 
just disable intel_bus.c entirely.

There's no excuse for hacky tests like this.

			Linus

From: Bjorn Helgaas <bjorn.helgaas@hp.com>
Subject: Re: [Bug #15124] PCI host bridge windows ignored (works =?iso-8859-1?q?with=09pci=3Duse=5Fcrs?=)
Date: Thu, 28 Jan 2010 09:09:44 -0700
Message-ID: <201001280909.46043.bjorn.helgaas@hp.com>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera> <1264652762.24020.5.camel@dc7800.home> <4B61266F.1060600@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <4B61266F.1060600@kernel.org>
Content-Disposition: inline
Sender: linux-pci-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Yinghai Lu <yinghai@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Jesse Barnes <jbarnes@virtuousgeek.org>, Jeff Garrett <jeff@jgarrett.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Linux PCI <linux-pci@vger.kernel.org>, Myron Stowe <myron.stowe@hp.com>, Matthew Garrett <mjg59@srcf.ucam.org>, Ingo Molnar <mingo@elte.hu>

On Wednesday 27 January 2010 10:53:51 pm Yinghai Lu wrote:
> On 01/27/2010 08:26 PM, Bjorn Helgaas wrote:
> > On Wed, 2010-01-27 at 15:34 -0800, Yinghai Lu wrote:

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

We should fix that problem rather than just covering it up by
disabling ACPI.  Can you provide any details?

I think it's crazy to add code to work around Problem B that only
occurs because we disabled ACPI to work around Problem A.  We should
just fix Problem A instead.

Bjorn

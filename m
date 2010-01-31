From: Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>
Subject: Re: [Bug #15124] PCI host bridge windows ignored (works with
	pci=use_crs)
Date: Sun, 31 Jan 2010 02:45:08 +0000
Message-ID: <20100131024508.GA9334@srcf.ucam.org>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera> <201001271345.54454.bjorn.helgaas@hp.com> <alpine.LFD.2.00.1001271247450.3570@localhost.localdomain> <201001271403.41955.bjorn.helgaas@hp.com> <4B60CD99.7020305@kernel.org> <1264652762.24020.5.camel@dc7800.home>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1264652762.24020.5.camel-s4l7/+/UzmD/9pzu0YdTqQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Cc: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Jeff Garrett <jeff-184d8XiO+QJg9hUCZPvPmw@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux PCI <linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Myron Stowe <myron.stowe-VXdhtT5mjnY@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Wed, Jan 27, 2010 at 09:26:02PM -0700, Bjorn Helgaas wrote:

> When ACPI is disabled, I think we just have to accept that we lose some
> functionality.  I don't see the need for alternate ways to accomplish
> everything that ACPI does.  It's becoming less and less useful to
> disable ACPI; I think it's only interesting as a debugging tool, and
> even then it's a sledgehammer.

I'd agree with this. The days where it was plausibly practical to boot 
non-ACPI operating systems on hardware are clearly gone, and people who 
are actually disabling ACPI in the field seem to be doing so in order to 
avoid other bugs - and we're failing to fix those bugs as a result.

-- 
Matthew Garrett | mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org

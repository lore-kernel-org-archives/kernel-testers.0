From: Olivier Galibert <galibert-e+AXbWqSrlAAvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH -v2] x86/pci: print ioh resources only
Date: Thu, 28 Jan 2010 20:30:27 +0100
Message-ID: <20100128193027.GA13741@dspnet.fr.eu.org>
References: <201001261902.13911.rjw@sisk.pl> <20100126101752.78196900@jbarnes-piketon> <4B5F735B.2040308@kernel.org> <alpine.LFD.2.00.1001271748300.3570@localhost.localdomain> <20100127192409.79af96db@jbarnes-piketon> <20100128040226.GB8964@jgarrett.org> <20100128082432.05a97ebc@jbarnes-piketon> <4B61D7C4.1050405@kernel.org> <alpine.LFD.2.00.1001281052510.22433@localhost.localdomain> <4B61E116.6050208@kernel.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <4B61E116.6050208-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Jeff Garrett <jeff-184d8XiO+QJg9hUCZPvPmw@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux PCI <linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Myron Stowe <myron.stowe-VXdhtT5mjnY@public.gmane.org>, Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Thu, Jan 28, 2010 at 11:10:14AM -0800, Yinghai Lu wrote:
> 
> don't use them for peer pci root bus resource yet.
> so could cross check _CRS results
> 
> -v2: dont put info struct in stack according to Linus.
>      because that is kbytes big

No kfree?

  OG.

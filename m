From: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Subject: Re: pnp changes -> suspend oops [Was: 2.6.26-rc5-mm2]
Date: Thu, 12 Jun 2008 15:22:43 -0600
Message-ID: <200806121522.44199.bjorn.helgaas@hp.com>
References: <20080609223145.5c9a2878.akpm@linux-foundation.org> <200806111303.39267.bjorn.helgaas@hp.com> <485190AC.3060107@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <485190AC.3060107-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jiri Slaby <jirislaby-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Thursday 12 June 2008 03:10:04 pm Jiri Slaby wrote:
> On 06/11/2008 09:03 PM, Bjorn Helgaas wrote:
> > On Wednesday 11 June 2008 12:08:53 pm Jiri Slaby wrote:
> >> On 06/10/2008 07:31 AM, Andrew Morton wrote:
> >>> ftp://ftp.kernel.org/pub/linux/kernel/people/akpm/patches/2.6/2.6.26-rc5/2.6.26-rc5-mm2/
> >> I face problems after some of the pnp changes. If this is not known, I may 
> >> bisect it, it's 100% reproducible. I have no real logs, It panics prior to 
> >> network is woken up to see something on netconsole, I just captured a function 
> >> name and an offset of place where it oopses.
> >>
> >> pnpacpi_encode_resources, ACPI_RESOURCE_TYPE_DMA case, pnp_get_resource(dev, 
> >> IORESOURCE_DMA, dma) returns NULL, which is dereferenced at pnpacpi_encode_dma 
> >> at p->flags.
> >>
> >> It happens on resume after mem > /sys/power/state.
> > 
> > Thanks for the report, I hadn't heard about this.
> > 
> > We used to always have a resource from the static table to encode
> > (assuming the table was big enough), even if that resource was
> > disabled or unassigned.  But now we don't keep those around, so
> > we can end up with null pointers like you're seeing.
> > 
> > Before you go to all the trouble of bisecting it, can you turn on
> > CONFIG_PNP_DEBUG and try the following debug patch?  I think this
> > will prevent the oops, but it's just papering over the real problem,
> > so please capture the complete dmesg log.
> 
> ACPI: PCI interrupt for device 0000:00:02.0 disabled
> serial 00:07: disabled
> serial 00:06: disabled
> ACPI handle has no context!
> ACPI: PCI interrupt for device 0000:00:1d.7 disabled
> ...
> serial 00:06:   no dma resource to encode!
> serial 00:06: activated
> serial 00:07:   no dma resource to encode!
> serial 00:07: activated
> ACPI: PCI Interrupt 0000:00:02.0[A] -> GSI 16 (level, low) -> IRQ 16

Interesting.  I wonder why a serial device would have a DMA resource.
We encode resources by following a template from _CRS, so evidently
that template had a DMA resource.  Or something deeper is wrong.

Can you send me the rest of that dmesg log?

I take it that with the debug patch, your system is functional
after resume?

Bjorn
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

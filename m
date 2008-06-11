From: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Subject: Re: pnp changes -> suspend oops [Was: 2.6.26-rc5-mm2]
Date: Wed, 11 Jun 2008 13:03:38 -0600
Message-ID: <200806111303.39267.bjorn.helgaas@hp.com>
References: <20080609223145.5c9a2878.akpm@linux-foundation.org> <485014B5.7080305@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <485014B5.7080305-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jiri Slaby <jirislaby-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Wednesday 11 June 2008 12:08:53 pm Jiri Slaby wrote:
> On 06/10/2008 07:31 AM, Andrew Morton wrote:
> > ftp://ftp.kernel.org/pub/linux/kernel/people/akpm/patches/2.6/2.6.26-rc5/2.6.26-rc5-mm2/
> 
> I face problems after some of the pnp changes. If this is not known, I may 
> bisect it, it's 100% reproducible. I have no real logs, It panics prior to 
> network is woken up to see something on netconsole, I just captured a function 
> name and an offset of place where it oopses.
> 
> pnpacpi_encode_resources, ACPI_RESOURCE_TYPE_DMA case, pnp_get_resource(dev, 
> IORESOURCE_DMA, dma) returns NULL, which is dereferenced at pnpacpi_encode_dma 
> at p->flags.
> 
> It happens on resume after mem > /sys/power/state.

Thanks for the report, I hadn't heard about this.

We used to always have a resource from the static table to encode
(assuming the table was big enough), even if that resource was
disabled or unassigned.  But now we don't keep those around, so
we can end up with null pointers like you're seeing.

Before you go to all the trouble of bisecting it, can you turn on
CONFIG_PNP_DEBUG and try the following debug patch?  I think this
will prevent the oops, but it's just papering over the real problem,
so please capture the complete dmesg log.

Bjorn


Index: work10/drivers/pnp/pnpacpi/rsparser.c
===================================================================
--- work10.orig/drivers/pnp/pnpacpi/rsparser.c	2008-06-11 12:46:28.000000000 -0600
+++ work10/drivers/pnp/pnpacpi/rsparser.c	2008-06-11 12:59:43.000000000 -0600
@@ -749,6 +749,11 @@ static void pnpacpi_encode_irq(struct pn
 	struct acpi_resource_irq *irq = &resource->data.irq;
 	int triggering, polarity, shareable;
 
+	if (!p) {
+		dev_err(&dev->dev, "  no irq resource to encode!\n");
+		return;
+	}
+
 	decode_irq_flags(dev, p->flags, &triggering, &polarity, &shareable);
 	irq->triggering = triggering;
 	irq->polarity = polarity;
@@ -771,6 +776,11 @@ static void pnpacpi_encode_ext_irq(struc
 	struct acpi_resource_extended_irq *extended_irq = &resource->data.extended_irq;
 	int triggering, polarity, shareable;
 
+	if (!p) {
+		dev_err(&dev->dev, "  no extended irq resource to encode!\n");
+		return;
+	}
+
 	decode_irq_flags(dev, p->flags, &triggering, &polarity, &shareable);
 	extended_irq->producer_consumer = ACPI_CONSUMER;
 	extended_irq->triggering = triggering;
@@ -791,6 +801,11 @@ static void pnpacpi_encode_dma(struct pn
 {
 	struct acpi_resource_dma *dma = &resource->data.dma;
 
+	if (!p) {
+		dev_err(&dev->dev, "  no dma resource to encode!\n");
+		return;
+	}
+
 	/* Note: pnp_assign_dma will copy pnp_dma->flags into p->flags */
 	switch (p->flags & IORESOURCE_DMA_SPEED_MASK) {
 	case IORESOURCE_DMA_TYPEA:
@@ -832,6 +847,11 @@ static void pnpacpi_encode_io(struct pnp
 {
 	struct acpi_resource_io *io = &resource->data.io;
 
+	if (!p) {
+		dev_err(&dev->dev, "  no io resource to encode!\n");
+		return;
+	}
+
 	/* Note: pnp_assign_port will copy pnp_port->flags into p->flags */
 	io->io_decode = (p->flags & IORESOURCE_IO_16BIT_ADDR) ?
 	    ACPI_DECODE_16 : ACPI_DECODE_10;
@@ -851,6 +871,11 @@ static void pnpacpi_encode_fixed_io(stru
 {
 	struct acpi_resource_fixed_io *fixed_io = &resource->data.fixed_io;
 
+	if (!p) {
+		dev_err(&dev->dev, "  no fixed io resource to encode!\n");
+		return;
+	}
+
 	fixed_io->address = p->start;
 	fixed_io->address_length = p->end - p->start + 1;
 
@@ -864,6 +889,11 @@ static void pnpacpi_encode_mem24(struct 
 {
 	struct acpi_resource_memory24 *memory24 = &resource->data.memory24;
 
+	if (!p) {
+		dev_err(&dev->dev, "  no mem24 resource to encode!\n");
+		return;
+	}
+
 	/* Note: pnp_assign_mem will copy pnp_mem->flags into p->flags */
 	memory24->write_protect =
 	    (p->flags & IORESOURCE_MEM_WRITEABLE) ?
@@ -884,6 +914,11 @@ static void pnpacpi_encode_mem32(struct 
 {
 	struct acpi_resource_memory32 *memory32 = &resource->data.memory32;
 
+	if (!p) {
+		dev_err(&dev->dev, "  no mem32 resource to encode!\n");
+		return;
+	}
+
 	memory32->write_protect =
 	    (p->flags & IORESOURCE_MEM_WRITEABLE) ?
 	    ACPI_READ_WRITE_MEMORY : ACPI_READ_ONLY_MEMORY;
@@ -903,6 +938,11 @@ static void pnpacpi_encode_fixed_mem32(s
 {
 	struct acpi_resource_fixed_memory32 *fixed_memory32 = &resource->data.fixed_memory32;
 
+	if (!p) {
+		dev_err(&dev->dev, "  no fixed_mem32 resource to encode!\n");
+		return;
+	}
+
 	fixed_memory32->write_protect =
 	    (p->flags & IORESOURCE_MEM_WRITEABLE) ?
 	    ACPI_READ_WRITE_MEMORY : ACPI_READ_ONLY_MEMORY;
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

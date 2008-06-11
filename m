From: Jiri Slaby <jirislaby-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: pnp changes -> suspend oops [Was: 2.6.26-rc5-mm2]
Date: Wed, 11 Jun 2008 20:08:53 +0200
Message-ID: <485014B5.7080305@gmail.com>
References: <20080609223145.5c9a2878.akpm@linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :x-enigmail-version:content-type:content-transfer-encoding;
        bh=AJy0lM0QcSpQ5280o7W61tEgyrDCVbFqq3oxUW5ioNw=;
        b=dMiOIj6FR5qyt7bSLBwLTsoWVnLx2J7vRxD2K5HEFR4aQItO9c/R66xXbB9iGxzmkD
         0U7GcaN2rOGiqxt8I0GMDIhcje1gout4ywE/ebyg7ImjatzY4+QZ13XsNPvqd7O4H802
         U6Otd4Gc9c8o92KY0Fs2K4fgrHAwO8wIC8V8U=
In-Reply-To: <20080609223145.5c9a2878.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>

On 06/10/2008 07:31 AM, Andrew Morton wrote:
> ftp://ftp.kernel.org/pub/linux/kernel/people/akpm/patches/2.6/2.6.26-rc5/2.6.26-rc5-mm2/

Hi,

I face problems after some of the pnp changes. If this is not known, I may 
bisect it, it's 100% reproducible. I have no real logs, It panics prior to 
network is woken up to see something on netconsole, I just captured a function 
name and an offset of place where it oopses.

pnpacpi_encode_resources, ACPI_RESOURCE_TYPE_DMA case, pnp_get_resource(dev, 
IORESOURCE_DMA, dma) returns NULL, which is dereferenced at pnpacpi_encode_dma 
at p->flags.

It happens on resume after mem > /sys/power/state.
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

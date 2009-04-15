From: Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.30-rc1: ioatdma: DMA-API: device driver frees DMA memory with 
	wrong function
Date: Wed, 15 Apr 2009 10:27:48 -0700
Message-ID: <e9c3a7c20904151027xdf617fbh64fcb5618e195a71@mail.gmail.com>
References: <a4423d670904090536j71be609csf2c32be3ed9cfe1e@mail.gmail.com>
	 <a4423d670904150539w1a4fe05ake75ce2aea4538eab@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=CAErbDZNNCW+5j4BcMoOUoOsKp921Sj8KHZMSe87Nlc=;
        b=WDATrAhlZDHhc0I2jkeULaaauVstGa/c/cJtRgBMxAJbtOdXiHYm1YwqwzM0G5HICS
         ZDi7qPv4hl1dJLf9XL8TijqACM4x6+zHvSRv4Na8le+LfVH1iZU2lXAacUjCsaXai/CS
         wdpfU5kUzqoo5zTLtRgyAqtTwl71FcQwO3x+E=
In-Reply-To: <a4423d670904150539w1a4fe05ake75ce2aea4538eab-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, maciej.sosnowski-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org

On Wed, Apr 15, 2009 at 5:39 AM, Alexander Beregalov
<a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> 2009/4/9 Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
>> ioatdma 0000:00:08.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
>> ioatdma 0000:00:08.0: setting latency timer to 64
>> ioatdma 0000:00:08.0: Intel(R) I/OAT DMA Engine found, 4 channels,
>> device version 0x12, driver version 3.64
>> =A0alloc irq_desc for 33 on cpu 0 node 0
>> =A0alloc kstat_irqs on cpu 0 node 0
>> ioatdma 0000:00:08.0: irq 33 for MSI/MSI-X
>> ------------[ cut here ]------------
>> WARNING: at lib/dma-debug.c:565 check_unmap+0x2f6/0x6a0()
>> Hardware name: PowerEdge 1950
>> ioatdma 0000:00:08.0: DMA-API: device driver frees DMA memory with
>> wrong function [device address=3D0x000000007f76f800] [size=3D2000 by=
tes]
>> [map
>> ped as single] [unmapped as page]
>
> The problem still persists.

Thanks for the report Alexander.  Maciej and I are looking into a fix.

Regards,
Dan

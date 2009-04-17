From: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
Subject: Re: 2.6.30-rc1: ioatdma: DMA-API: device driver frees DMA memory
 with 	wrong function
Date: Fri, 17 Apr 2009 11:38:09 +0900
Message-ID: <20090417113814J.fujita.tomonori@lab.ntt.co.jp>
References: <a4423d670904090536j71be609csf2c32be3ed9cfe1e@mail.gmail.com>
	<a4423d670904150539w1a4fe05ake75ce2aea4538eab@mail.gmail.com>
	<e9c3a7c20904151027xdf617fbh64fcb5618e195a71@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <e9c3a7c20904151027xdf617fbh64fcb5618e195a71-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="iso-8859-1"
To: dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org
Cc: a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, maciej.sosnowski-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org

On Wed, 15 Apr 2009 10:27:48 -0700
Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org> wrote:

> On Wed, Apr 15, 2009 at 5:39 AM, Alexander Beregalov
> <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> > 2009/4/9 Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
> >> ioatdma 0000:00:08.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
> >> ioatdma 0000:00:08.0: setting latency timer to 64
> >> ioatdma 0000:00:08.0: Intel(R) I/OAT DMA Engine found, 4 channels,
> >> device version 0x12, driver version 3.64
> >> =A0alloc irq_desc for 33 on cpu 0 node 0
> >> =A0alloc kstat_irqs on cpu 0 node 0
> >> ioatdma 0000:00:08.0: irq 33 for MSI/MSI-X
> >> ------------[ cut here ]------------
> >> WARNING: at lib/dma-debug.c:565 check_unmap+0x2f6/0x6a0()
> >> Hardware name: PowerEdge 1950
> >> ioatdma 0000:00:08.0: DMA-API: device driver frees DMA memory with
> >> wrong function [device address=3D0x000000007f76f800] [size=3D2000 =
bytes]
> >> [map
> >> ped as single] [unmapped as page]
> >
> > The problem still persists.
>=20
> Thanks for the report Alexander.  Maciej and I are looking into a fix=
=2E

Looks like the driver uses pci_unmap_page() to unmap the region
previously mapped by dma_map_single(), right?

It's not the proper usage of DMA API but it doesn't cause any
problems. This is not a urgent issue though it's better to fix it.

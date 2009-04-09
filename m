From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: 2.6.30-rc1: ioatdma: DMA-API: device driver frees DMA memory with 
	wrong function
Date: Thu, 9 Apr 2009 16:36:38 +0400
Message-ID: <a4423d670904090536j71be609csf2c32be3ed9cfe1e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type:content-transfer-encoding;
        bh=VCvl3Fxly8TguevHm0ydwOrhjH0lgRI6hV72Zv+x7zI=;
        b=gmJNVGav445dBWagI95S+n+krkWraJrdBBKmAhbwewg8Jv1OUYsTDj+ZZ9RY1aBAhk
         Wy7Qm9Aoce5NV8o+y5o++5EIoPQoXlfJ7pGehRpMAM18gOUIwsKU9hVOzGxrv2vmP9Fg
         UWyDTDUsO4qFSqnyPKK6wEalA1ttD6Hl41CHw=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, maciej.sosnowski-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org

ioatdma 0000:00:08.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
ioatdma 0000:00:08.0: setting latency timer to 64
ioatdma 0000:00:08.0: Intel(R) I/OAT DMA Engine found, 4 channels,
device version 0x12, driver version 3.64
  alloc irq_desc for 33 on cpu 0 node 0
  alloc kstat_irqs on cpu 0 node 0
ioatdma 0000:00:08.0: irq 33 for MSI/MSI-X
------------[ cut here ]------------
WARNING: at lib/dma-debug.c:565 check_unmap+0x2f6/0x6a0()
Hardware name: PowerEdge 1950
ioatdma 0000:00:08.0: DMA-API: device driver frees DMA memory with
wrong function [device address=0x000000007f76f800] [size=2000 bytes]
[map
ped as single] [unmapped as page]
Modules linked in:
Pid: 1, comm: swapper Not tainted 2.6.30-rc1-00089-gf4efdd6-dirty #96
Call Trace:
 <IRQ>  [<ffffffff8024f9e8>] warn_slowpath+0xe8/0x160
 [<ffffffff8028064e>] ? save_trace+0x4e/0xe0
 [<ffffffff80280747>] ? add_lock_to_list+0x67/0x110
 [<ffffffff80282801>] ? check_irq_usage+0xb1/0x110
 [<ffffffff804ea272>] ? check_unmap+0x122/0x6a0
 [<ffffffff8027fbc1>] ? put_lock_stats+0x21/0x60
 [<ffffffff804ea272>] ? check_unmap+0x122/0x6a0
 [<ffffffff806db2d9>] ? _spin_lock_irqsave+0x89/0xb0
 [<ffffffff804ea272>] ? check_unmap+0x122/0x6a0
 [<ffffffff804ea446>] check_unmap+0x2f6/0x6a0
 [<ffffffff804eab1e>] debug_dma_unmap_page+0x5e/0x80
 [<ffffffff8061c446>] ioat_dma_unmap+0xd6/0x160
 [<ffffffff8061c7a2>] ioat_dma_memcpy_cleanup+0x2d2/0x3f0
 [<ffffffff802560e4>] ? tasklet_action+0x84/0x160
 [<ffffffff8061c8e0>] ioat_dma_cleanup_tasklet+0x20/0x50
 [<ffffffff80283430>] ? trace_hardirqs_on+0x20/0x40
 [<ffffffff80256115>] tasklet_action+0xb5/0x160
 [<ffffffff802567dc>] __do_softirq+0x9c/0x150
 [<ffffffff806db92f>] ? _spin_unlock+0x3f/0x80
 [<ffffffff8020cbfc>] call_softirq+0x1c/0x30
 [<ffffffff8020f30d>] do_softirq+0x8d/0xe0
 [<ffffffff80256465>] irq_exit+0xc5/0xe0
 [<ffffffff8020e77d>] do_IRQ+0x9d/0x120
 [<ffffffff8020c413>] ret_from_intr+0x0/0xf
 <EOI>  [<ffffffff806d8591>] ? schedule_timeout+0x1/0x220
 [<ffffffff806d74a9>] ? wait_for_common+0x129/0x1c0
 [<ffffffff802460a0>] ? default_wake_function+0x0/0x40
 [<ffffffff806d7641>] ? wait_for_completion_timeout+0x21/0x40
 [<ffffffff8061d58a>] ? ioat_dma_probe+0x80a/0xdf0
 [<ffffffff806d73d2>] ? wait_for_common+0x52/0x1c0
 [<ffffffff806d53b5>] ? ioat_probe+0x175/0x280
 [<ffffffff804f3fe5>] ? local_pci_probe+0x25/0x40
 [<ffffffff804f43e0>] ? pci_device_probe+0xa0/0xd0
 [<ffffffff8057737c>] ? driver_probe_device+0xdc/0x2f0
 [<ffffffff80577643>] ? __driver_attach+0xb3/0xc0
 [<ffffffff80577590>] ? __driver_attach+0x0/0xc0
 [<ffffffff805767bb>] ? bus_for_each_dev+0x7b/0xc0
 [<ffffffff8057704f>] ? driver_attach+0x2f/0x50
 [<ffffffff80575d85>] ? bus_add_driver+0x175/0x2c0
 [<ffffffff80905ea0>] ? ioat_init_module+0x0/0x50
 [<ffffffff80577a5f>] ? driver_register+0x8f/0x190
 [<ffffffff80905ea0>] ? ioat_init_module+0x0/0x50
 [<ffffffff804f4889>] ? __pci_register_driver+0x79/0x110
 [<ffffffff806175f9>] ? cpuidle_register_governor+0xe9/0x100
 [<ffffffff80905ea0>] ? ioat_init_module+0x0/0x50
 [<ffffffff80905ecc>] ? ioat_init_module+0x2c/0x50
 [<ffffffff8020907b>] ? do_one_initcall+0x4b/0x1a0
 [<ffffffff80330000>] ? __mb_cache_entry_forget+0x20/0xa0
 [<ffffffff808db88b>] ? kernel_init+0x1ae/0x250
 [<ffffffff8020cafa>] ? child_rip+0xa/0x20
 [<ffffffff8020c4c0>] ? restore_args+0x0/0x30
 [<ffffffff808db6dd>] ? kernel_init+0x0/0x250
 [<ffffffff8020caf0>] ? child_rip+0x0/0x20
---[ end trace 66cfcd7e86ff08dc ]---
Mapped at:
 [<ffffffff804e9f05>] debug_dma_map_page+0x95/0x190
 [<ffffffff8061d4e7>] ioat_dma_probe+0x767/0xdf0
 [<ffffffff806d53b5>] ioat_probe+0x175/0x280
 [<ffffffff804f3fe5>] local_pci_probe+0x25/0x40
 [<ffffffff804f43e0>] pci_device_probe+0xa0/0xd0
ioatdma 0000:00:08.0: DCA is disabled in BIOS

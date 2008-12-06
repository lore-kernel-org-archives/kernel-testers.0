From: "Fabio Comolli" <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12155] Regression in 2.6.28-rc and 2.6.27-stable - hibernate related
Date: Sat, 6 Dec 2008 21:08:32 +0100
Message-ID: <b637ec0b0812061208i9520bd0tfd404f1a9c8a95ba@mail.gmail.com>
References: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera>
	 <bfPM5B8Tx2B.A.MQH.zoxNJB@chimera>
	 <b637ec0b0812040050g58f3e28dxba5bca8c77bb5a94@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=dBL7xM3Nn+LS2lNVVY5WtcNnwwh8CWb9oDtaYp/fyZA=;
        b=Hsor/JkDcf94GBmcxms759S5pChwh2Z0D7qRiPK+6VeOx4Wzhs9YcZhbN6euuV/ZQq
         xB3rpPq6aURnUeK57/MSg0D3Z6ySEp5FoGPiEV7+xaFDTbwc5yDpibzxG8f2KxBivgCX
         PX+A55ubPc4U2wT73Hu0gnKu/hNfE1Bk38jho=
In-Reply-To: <b637ec0b0812040050g58f3e28dxba5bca8c77bb5a94-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hi Rafael.

On Thu, Dec 4, 2008 at 9:50 AM, Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> Hi.
>
> I'll try -rc7-git probably tonight and 2.6.27.8 when -stable team releases it.
>

2.6.28-rc7 survived 7 suspend/resume cycles and then showed the bug.
This time I modified my config to use the timed printk's. This is the
output:

[ 8831.905901] Syncing filesystems ... done.
[ 8831.906707] Freezing user space processes ... (elapsed 0.00 seconds) done.
[ 8831.907860] Freezing remaining freezable tasks ... (elapsed 0.00
seconds) done.
[ 8831.909257] PM: Shrinking memory... done (0 pages freed)
[ 8831.975535] PM: Freed 0 kbytes in 0.06 seconds (0.00 MB/s)
[ 8831.975558] Suspending console(s) (use no_console_suspend to debug)
[ 8831.976131] sd 0:0:0:0: [sda] Synchronizing SCSI cache
[ 8832.041534] pciehp 0000:00:1c.0:pcie02: pciehp_suspend ENTRY
[ 8832.041755] ACPI handle has no context!
[ 8832.041765] tifm_7xx1 0000:06:06.3: PCI INT A disabled
[ 8832.041773] ACPI handle has no context!
[ 8832.056238] ACPI handle has no context!
[ 8832.072271] eth1: Going into suspend...
[ 8832.078493] ipw2200 0000:06:05.0: PCI INT A disabled
[ 8832.078502] ACPI handle has no context!
[ 8832.092042] [fglrx] Power down the ASIC .
[ 8832.144044] fglrx_pci 0000:01:00.0: PCI INT A disabled
[ 8832.144155] ata2: port disabled. ignoring.
[ 8832.144211] ata_piix 0000:00:1f.1: PCI INT A disabled
[ 8832.144606] Intel ICH 0000:00:1e.2: PCI INT A disabled
[ 8832.144743] ehci_hcd 0000:00:1d.7: PCI INT A disabled
[ 8832.144783] uhci_hcd 0000:00:1d.3: PCI INT D disabled
[ 8832.144822] uhci_hcd 0000:00:1d.2: PCI INT C disabled
[ 8832.144860] uhci_hcd 0000:00:1d.1: PCI INT B disabled
[ 8832.144899] uhci_hcd 0000:00:1d.0: PCI INT A disabled
[ 8832.144903] pciehp 0000:00:1c.0:pcie02: pciehp_suspend ENTRY
[ 8832.145347] ACPI: Preparing to enter system sleep state S4
[ 8832.147058] PM: Creating hibernation image:
[ 8832.148005] PM: Need to copy 169684 pages
[ 8832.148005] Intel machine check architecture supported.
[ 8832.148005] Intel machine check reporting enabled on CPU#0.
[ 9073.757209] Force enabled HPET at resume
[ 9073.757323] ACPI: Waking up from system sleep state S4
[ 9073.757352] ACPI: EC: non-query interrupt received, switching to
interrupt mode
[ 9073.757352] pcieport-driver 0000:00:01.0: setting latency timer to 64
[ 9073.757352] pcieport-driver 0000:00:1c.0: setting latency timer to 64
[ 9073.757352] pciehp 0000:00:1c.0:pcie02: pciehp_resume ENTRY
[ 9073.757352] uhci_hcd 0000:00:1d.0: PCI INT A -> GSI 23 (level, low) -> IRQ 23
[ 9073.757352] uhci_hcd 0000:00:1d.0: setting latency timer to 64
[ 9073.757352] uhci_hcd 0000:00:1d.1: PCI INT B -> GSI 19 (level, low) -> IRQ 19
[ 9073.757352] uhci_hcd 0000:00:1d.1: setting latency timer to 64
[ 9073.757352] uhci_hcd 0000:00:1d.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
[ 9073.757352] uhci_hcd 0000:00:1d.2: setting latency timer to 64
[ 9073.757352] uhci_hcd 0000:00:1d.3: PCI INT D -> GSI 16 (level, low) -> IRQ 16
[ 9073.757352] uhci_hcd 0000:00:1d.3: setting latency timer to 64
[ 9073.757352] ehci_hcd 0000:00:1d.7: PCI INT A -> GSI 23 (level, low) -> IRQ 23
[ 9073.757352] ehci_hcd 0000:00:1d.7: setting latency timer to 64
[ 9073.757352] pci 0000:00:1e.0: setting latency timer to 64
[ 9073.757352] Intel ICH 0000:00:1e.2: PCI INT A -> GSI 17 (level,
low) -> IRQ 17
[ 9073.757352] Intel ICH 0000:00:1e.2: setting latency timer to 64
[ 9073.757352] ata_piix 0000:00:1f.1: restoring config space at offset
0x1 (was 0x2880001, writing 0x2880005)
[ 9073.757352] ata_piix 0000:00:1f.1: PCI INT A -> GSI 18 (level, low) -> IRQ 18
[ 9073.757352] ata_piix 0000:00:1f.1: setting latency timer to 64
[ 9073.757352] ata2: port disabled. ignoring.
[ 9073.757352] fglrx_pci 0000:01:00.0: power state changed by ACPI to D0
[ 9073.757352] fglrx_pci 0000:01:00.0: PCI INT A -> GSI 16 (level,
low) -> IRQ 16
[ 9073.757352] fglrx_pci 0000:01:00.0: setting latency timer to 64
[ 9073.757352] [fglrx] Power up the ASIC
[ 9073.757352] eth1: Coming out of suspend...
[ 9073.757352] ipw2200 0000:06:05.0: enabling device (0000 -> 0002)
[ 9073.757352] ipw2200 0000:06:05.0: PCI INT A -> GSI 20 (level, low) -> IRQ 20
[ 9073.757352] ipw2200 0000:06:05.0: restoring config space at offset
0xf (was 0x18030100, writing 0x1803010b)
[ 9073.757352] ipw2200 0000:06:05.0: restoring config space at offset
0x4 (was 0x0, writing 0xc8206000)
[ 9073.757352] ipw2200 0000:06:05.0: restoring config space at offset
0x3 (was 0x0, writing 0x8008)
[ 9073.757352] ipw2200 0000:06:05.0: restoring config space at offset
0x1 (was 0x2900002, writing 0x2900116)
[ 9073.757352] ata1.01: ACPI cmd ef/03:0c:00:00:00:b0 filtered out
[ 9073.757352] ata1.01: ACPI cmd ef/03:22:00:00:00:b0 filtered out
[ 9073.757352] ata1.00: ACPI cmd ef/03:0c:00:00:00:a0 filtered out
[ 9073.757352] ata1.00: ACPI cmd ef/03:45:00:00:00:a0 filtered out
[ 9073.757352] ata1.00: configured for UDMA/100
[ 9073.757352] ata1.01: configured for MWDMA2
[ 9073.757352] sd 0:0:0:0: [sda] 156301488 512-byte hardware sectors:
(80.0 GB/74.5 GiB)
[ 9073.757352] sd 0:0:0:0: [sda] Write Protect is off
[ 9073.757352] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[ 9073.757352] sd 0:0:0:0: [sda] Write cache: enabled, read cache:
enabled, doesn't support DPO or FUA
[ 9073.757352] sd 0:0:0:0: [sda] 156301488 512-byte hardware sectors:
(80.0 GB/74.5 GiB)
[ 9073.757352] sd 0:0:0:0: [sda] Write Protect is off
[ 9073.757352] sd 0:0:0:0: [sda] Mode Sense: 00 3a 00 00
[ 9073.757352] sd 0:0:0:0: [sda] Write cache: enabled, read cache:
enabled, doesn't support DPO or FUA
[ 9073.757352] firewire_ohci 0000:06:06.2: restoring config space at
offset 0xf (was 0x4020300, writing 0x402030b)
[ 9073.757352] firewire_ohci 0000:06:06.2: restoring config space at
offset 0x5 (was 0x0, writing 0xc8200000)
[ 9073.757352] firewire_ohci 0000:06:06.2: restoring config space at
offset 0x4 (was 0x0, writing 0xc8208000)
[ 9073.757352] firewire_ohci 0000:06:06.2: restoring config space at
offset 0x3 (was 0x800000, writing 0x808008)
[ 9073.757352] firewire_ohci 0000:06:06.2: restoring config space at
offset 0x1 (was 0x2100000, writing 0x2100116)
[ 9073.757352] tifm_7xx1 0000:06:06.3: restoring config space at
offset 0xf (was 0x40701ff, writing 0x407010a)
[ 9073.757352] tifm_7xx1 0000:06:06.3: restoring config space at
offset 0x4 (was 0x0, writing 0xc8204000)
[ 9073.757352] tifm_7xx1 0000:06:06.3: restoring config space at
offset 0x3 (was 0x800000, writing 0x808008)
[ 9073.757352] tifm_7xx1 0000:06:06.3: restoring config space at
offset 0x1 (was 0x2100000, writing 0x2100106)
[ 9073.757352] tifm_7xx1 0000:06:06.3: PCI INT A -> GSI 22 (level,
low) -> IRQ 22
[ 9073.757352] pciehp 0000:00:1c.0:pcie02: pciehp_resume ENTRY
[ 9073.757352] sd 0:0:0:0: [sda] Starting disk
[ 9073.757352] Restarting tasks ... done.

Unfortunately I can see nothing wrong in this log, it's basically
identical to the good resume case.

The hang lasted 3min 57sec, just for the record.

Regards,
Fabio

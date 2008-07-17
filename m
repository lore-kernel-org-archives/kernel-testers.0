From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: Re: [regression][x86_64] 2.6.26-02962-g4515889, kernel panic on
	boot.
Date: Thu, 17 Jul 2008 20:03:26 +0200
Message-ID: <1216317806.6341.15.camel@zwerg>
References: <1216291089.6158.13.camel@zwerg>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="=-NTs34dI4kH0e9CrZr7Xq"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1216291089.6158.13.camel@zwerg>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, jeremy-TSDbQ3PG+2Y@public.gmane.org, gcosta <gcosta-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>


--=-NTs34dI4kH0e9CrZr7Xq
Content-Type: text/plain
Content-Transfer-Encoding: 7bit

last working kernel 1ecd27657b735128a728ebf0c31fce5e1456718a
x86: unify crashkernel reservation for 32 and 64 bit

kernel i can compile but not working
55f262391a2365d657a00ed68edd1a51bca66af5
x86: rename setup_32.c to setup.c

it will freeze with message:
Kernel alive
Kernel really alive
PANIC: early exception 0e rip 10:ffffffff803178b2 error 2 cr2
ffffffffff300000

i assume this bug was introduced by this patch set between this two
patches (may be not bat i need some where to begin)... it seems to have
a lot of dependencies, so i can't compile or bisect it.

wary last git kernel will freeze with :
[    5.904697] EXT3-fs: mounted filesystem with ordered data mode.
[    5.904749] VFS: Mounted root (ext3 filesystem) readonly.
[    5.904807] Freeing unused kernel memory: 312k freed
[    5.904983] Write protecting the kernel read-only data: 3968k
[    5.987836] Kernel panic - not syncing: No init found.  Try passing
 init= option to kernel.

Am Donnerstag, den 17.07.2008, 12:38 +0200 schrieb Alexey Fisher:
> Because of some other bugs, still can't really bisect it. So i need your
> help.
> 
> with latest kernel i will get:
> [    5.904697] EXT3-fs: mounted filesystem with ordered data mode.
> [    5.904749] VFS: Mounted root (ext3 filesystem) readonly.
> [    5.904807] Freeing unused kernel memory: 312k freed
> [    5.904983] Write protecting the kernel read-only data: 3968k
> [    5.987836] Kernel panic - not syncing: No init found.  Try passing
> init= option to kernel.
> 
> same configuration as other kernels... bug history looks like this:
> latest bad git 2.6.26-03414-g33af79d
> 
> a lot of can't compile -> may be this bug was introduced here
> 
> 1.last good 3de352bbd86f890dd0c5e1c09a6a1b0b29e0f8ce
> 
> 2.b4df32f4aeef8794d0135fc8dc250acb44cfee60 -> can't boot, kernel panic
> on the realy begin -> is this bug began here ?
> 
> 3.22cac1670786108ccd4caa0656c39fa4ba69fa7d -> can't boot without panic
> -> or the beginig of this bug here :
> 
> [    6.371469] kjournald starting.  Commit interval 5 seconds
> [    6.380455] EXT3-fs: mounted filesystem with ordered data mode.
> [    6.380455] VFS: Mounted root (ext3 filesystem) readonly.
> [    6.380455] debug: unmapping init memory
> ffffffff806be000..ffffffff80767000
> [   30.573683] CPA self-test:
> [   30.573902]  4k 4496 large 1011 gb 0 x
> 1534[ffff880000000000-ffff88003fe00000] miss 0
> [   30.586086]  4k 178576 large 671 gb 0 x
> 91470[ffff880000000000-ffff88003ffff000] miss 0
> [   30.595042]  4k 178576 large 671 gb 0 x
> 91470[ffff880000000000-ffff88003ffff000] miss 0
> [   30.595108] ok.
> here will just freeze.
> 
> --
> To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html

--=-NTs34dI4kH0e9CrZr7Xq
Content-Disposition: attachment; filename="really last dmesg"
Content-Type: text/plain; name="really last dmesg"; charset=UTF-8
Content-Transfer-Encoding: 7bit

[    0.000000] Linux version 2.6.26-slub-03414-g33af79d (lex@zwerg) (gcc version 4.2.3 (Ubuntu 4.2.3-2ubuntu7)) #3 SMP PREEMPT Thu Jul 17 09:42:34 CEST 2008
[    0.000000] Command line: root=/dev/sda1 netconsole=4444-Q0ErXNX1RuadgVD4HxTyLQ@public.gmane.org/eth0,6666-Q0ErXNX1Ruaz7rwvhxkYog@public.gmane.org/00:02:b3:35:5f:01 ro
[    0.000000] BIOS-provided physical RAM map:
[    0.000000]  BIOS-e820: 0000000000000000 - 000000000009fc00 (usable)
[    0.000000]  BIOS-e820: 000000000009fc00 - 00000000000a0000 (reserved)
[    0.000000]  BIOS-e820: 00000000000e4000 - 0000000000100000 (reserved)
[    0.000000]  BIOS-e820: 0000000000100000 - 000000007f790000 (usable)
[    0.000000]  BIOS-e820: 000000007f790000 - 000000007f79e000 (ACPI data)
[    0.000000]  BIOS-e820: 000000007f79e000 - 000000007f7e0000 (ACPI NVS)
[    0.000000]  BIOS-e820: 000000007f7e0000 - 000000007f800000 (reserved)
[    0.000000]  BIOS-e820: 00000000ffb80000 - 0000000100000000 (reserved)
[    0.000000] KERNEL supported cpus:
[    0.000000]   Intel GenuineIntel
[    0.000000]   AMD AuthenticAMD
[    0.000000]   Centaur CentaurHauls
[    0.000000] last_pfn = 0x7f790 max_arch_pfn = 0x3ffffffff
[    0.000000] x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106
[    0.000000] init_memory_mapping
[    0.000000] last_map_addr: 7f790000 end: 7f790000
[    0.000000] DMI 2.4 present.
[    0.000000] ACPI: RSDP 000FA5D0, 0024 (r2 ACPIAM)
[    0.000000] ACPI: XSDT 7F790100, 0054 (r1 NEC              6000701 MSFT       97)
[    0.000000] ACPI: FACP 7F790290, 00F4 (r3 A_M_I_ OEMFACP   6000701 MSFT       97)
[    0.000000] ACPI: DSDT 7F790590, 4BD8 (r1  A0281 A0281081       81 INTL 20060113)
[    0.000000] ACPI: FACS 7F79E000, 0040
[    0.000000] ACPI: APIC 7F790390, 0080 (r1 A_M_I_ OEMAPIC   6000701 MSFT       97)
[    0.000000] ACPI: SLIC 7F790410, 0176 (r1 NEC              6000701 MSFT       97)
[    0.000000] ACPI: OEMB 7F79E040, 006B (r1 A_M_I_ AMI_OEM   6000701 MSFT       97)
[    0.000000] ACPI: HPET 7F795170, 0038 (r1 A_M_I_ OEMHPET   6000701 MSFT       97)
[    0.000000] ACPI: MCFG 7F7951B0, 003C (r1 A_M_I_ OEMMCFG   6000701 MSFT       97)
[    0.000000] (5 early reservations) ==> bootmem
[    0.000000]   #0 [0000000000 - 0000001000]   BIOS data page ==> [0000000000 - 0000001000]
[    0.000000]   #1 [0000006000 - 0000008000]       TRAMPOLINE ==> [0000006000 - 0000008000]
[    0.000000]   #2 [0000200000 - 0000708954]    TEXT DATA BSS ==> [0000200000 - 0000708954]
[    0.000000]   #3 [000009fc00 - 0000100000]    BIOS reserved ==> [000009fc00 - 0000100000]
[    0.000000]   #4 [0000008000 - 000000a000]          PGTABLE ==> [0000008000 - 000000a000]
[    0.000000] found SMP MP-table at [ffff8800000ff780] 000ff780
[    0.000000] Zone PFN ranges:
[    0.000000]   DMA      0x00000000 -> 0x00001000
[    0.000000]   DMA32    0x00001000 -> 0x00100000
[    0.000000]   Normal   0x00100000 -> 0x00100000
[    0.000000] Movable zone start PFN for each node
[    0.000000] early_node_map[2] active PFN ranges
[    0.000000]     0: 0x00000000 -> 0x0000009f
[    0.000000]     0: 0x00000100 -> 0x0007f790
[    0.000000] ACPI: PM-Timer IO Port: 0x808
[    0.000000] ACPI: LAPIC (acpi_id[0x01] lapic_id[0x00] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x02] lapic_id[0x01] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x03] lapic_id[0x82] disabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x04] lapic_id[0x83] disabled)
[    0.000000] ACPI: IOAPIC (id[0x02] address[0xfec00000] gsi_base[0])
[    0.000000] IOAPIC[0]: apic_id 2, version 0, address 0xfec00000, GSI 0-23
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.000000] Setting APIC routing to flat
[    0.000000] ACPI: HPET id: 0x8086a201 base: 0xfed00000
[    0.000000] Using ACPI (MADT) for SMP configuration information
[    0.000000] SMP: Allowing 2 CPUs, 0 hotplug CPUs
[    0.000000] PM: Registered nosave memory: 000000000009f000 - 00000000000a0000
[    0.000000] PM: Registered nosave memory: 00000000000a0000 - 00000000000e4000
[    0.000000] PM: Registered nosave memory: 00000000000e4000 - 0000000000100000
[    0.000000] Allocating PCI resources starting at 80000000 (gap: 7f800000:80380000)
[    0.000000] PERCPU: Allocating 48388 bytes of per cpu data
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 513501
[    0.000000] Kernel command line: root=/dev/sda1 netconsole=4444-Q0ErXNX1RuadgVD4HxTyLQ@public.gmane.org/eth0,6666-Q0ErXNX1Ruaz7rwvhxkYog@public.gmane.org/00:02:b3:35:5f:01 ro
[    0.000000] Initializing CPU#0
[    0.000000] Preemptible RCU implementation.
[    0.000000] PID hash table entries: 4096 (order: 12, 32768 bytes)
[    0.000000] TSC calibrated against PM_TIMER
[    0.000000] Detected 3200.311 MHz processor.
[    0.001999] Console: colour VGA+ 80x25
[    0.001999] console [tty0] enabled
[    0.001999] Dentry cache hash table entries: 262144 (order: 9, 2097152 bytes)
[    0.001999] Inode-cache hash table entries: 131072 (order: 8, 1048576 bytes)
[    0.001999] Checking aperture...
[    0.001999] No AGP bridge found
[    0.001999] Memory: 2050596k/2088512k available (2948k kernel code, 37168k reserved, 1300k data, 312k init)
[    0.001999] SLUB: Genslabs=12, HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
[    0.001999] Calibrating delay loop (skipped), value calculated using timer frequency.. <6>6400.62 BogoMIPS (lpj=3200311)
[    0.001999] Security Framework initialized
[    0.001999] Root Plug module initialized, vendor_id = 0557, product id = 2008
[    0.001999] Mount-cache hash table entries: 256
[    0.001999] CPU: Trace cache: 12K uops, L1 D cache: 16K
[    0.001999] CPU: L2 cache: 2048K
[    0.001999] CPU: Physical Processor ID: 0
[    0.001999] CPU: Processor Core ID: 0
[    0.001999] CPU0: Thermal monitoring enabled (TM1)
[    0.001999] ACPI: Core revision 20080609
[    0.022996] CPU0:               Intel(R) Pentium(R) D CPU 3.20GHz stepping 04
[    0.023090] Using local APIC timer interrupts.
[    0.024996] Detected 12.501 MHz APIC timer.
[    0.024996] Booting processor 1/1 ip 6000
[    0.034994] Initializing CPU#1
[    0.095119] Calibrating delay using timer specific routine.. <6>6400.67 BogoMIPS (lpj=3200338)
[    0.095130] CPU: Trace cache: 12K uops, L1 D cache: 16K
[    0.095132] CPU: L2 cache: 2048K
[    0.095135] CPU: Physical Processor ID: 0
[    0.095136] CPU: Processor Core ID: 0
[    0.095148] CPU1: Thermal monitoring enabled (TM1)
[    0.095631] x86 PAT enabled: cpu 1, old 0x7040600070406, new 0x7010600070106
[    0.095985] CPU1:               Intel(R) Pentium(R) D CPU 3.20GHz stepping 04
[    0.096398] checking TSC synchronization [CPU#0 -> CPU#1]: passed.
[    0.097985] Brought up 2 CPUs
[    0.097985] Total of 2 processors activated (12801.29 BogoMIPS).
[    0.097985] net_namespace: 1176 bytes
[    0.098125] NET: Registered protocol family 16
[    0.098720] No dock devices found.
[    0.098770] ACPI: bus type pci registered
[    0.098874] PCI: Found Intel Corporation 945G/GZ/P/PL Express Memory Controller Hub with MMCONFIG support.
[    0.102633] PCI: Using MMCONFIG at e0000000 - efffffff
[    0.102675] PCI: Using configuration type 1 for base access
[    0.115442] ACPI: Interpreter enabled
[    0.115486] ACPI: (supports S0 S1 S3 S4 S5)
[    0.115653] ACPI: Using IOAPIC for interrupt routing
[    0.124854] ACPI: PCI Root Bridge [PCI0] (0000:00)
[    0.125173] pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
[    0.125217] pci 0000:00:1b.0: PME# disabled
[    0.125305] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
[    0.125349] pci 0000:00:1c.0: PME# disabled
[    0.125436] pci 0000:00:1c.1: PME# supported from D0 D3hot D3cold
[    0.125484] pci 0000:00:1c.1: PME# disabled
[    0.125802] pci 0000:00:1d.7: PME# supported from D0 D3hot D3cold
[    0.125847] pci 0000:00:1d.7: PME# disabled
[    0.126000] pci 0000:00:1f.0: quirk: region 0800-087f claimed by ICH6 ACPI/GPIO/TCO
[    0.126056] pci 0000:00:1f.0: quirk: region 0480-04bf claimed by ICH6 GPIO
[    0.126211] pci 0000:00:1f.2: PME# supported from D3hot
[    0.126253] pci 0000:00:1f.2: PME# disabled
[    0.126563] pci 0000:02:00.0: PME# supported from D0 D3hot D3cold
[    0.126611] pci 0000:02:00.0: PME# disabled
[    0.126905] pci 0000:00:1e.0: transparent bridge
[    0.132122] ACPI: PCI Interrupt Link [LNKA] (IRQs 3 4 5 7 10 *11 12 14 15)
[    0.132535] ACPI: PCI Interrupt Link [LNKB] (IRQs 3 4 5 7 *10 11 12 14 15)
[    0.132952] ACPI: PCI Interrupt Link [LNKC] (IRQs 3 4 5 7 10 11 12 *14 15)
[    0.133357] ACPI: PCI Interrupt Link [LNKD] (IRQs 3 4 *5 7 10 11 12 14 15)
[    0.133768] ACPI: PCI Interrupt Link [LNKE] (IRQs 3 4 5 7 10 11 12 14 *15)
[    0.134173] ACPI: PCI Interrupt Link [LNKF] (IRQs 3 4 5 7 10 11 12 14 15) *0, disabled.
[    0.134640] ACPI: PCI Interrupt Link [LNKG] (IRQs 3 4 5 7 10 11 12 14 15) *0, disabled.
[    0.135107] ACPI: PCI Interrupt Link [LNKH] (IRQs 3 4 5 7 10 11 12 14 15) *0, disabled.
[    0.135831] ACPI Warning (tbutils-0217): Incorrect checksum in table [OEMB] - 70, should be 6F [20080609]
[    0.136061] ACPI: WMI: Mapper loaded
[    0.136104] Linux Plug and Play Support v0.97 (c) Adam Belay
[    0.136216] pnp: PnP ACPI init
[    0.136267] ACPI: bus type pnp registered
[    0.141033] pnp: PnP ACPI: found 15 devices
[    0.141073] ACPI: ACPI bus type pnp unregistered
[    0.141470] SCSI subsystem initialized
[    0.141918] usbcore: registered new interface driver usbfs
[    0.142082] usbcore: registered new interface driver hub
[    0.142232] usbcore: registered new device driver usb
[    0.142849] PCI: Using ACPI for IRQ routing
[    0.149481] DMAR:parse DMAR table failure.
[    0.149542] PCI-GART: No AMD northbridge found.
[    0.149592] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0
[    0.149720] hpet0: 3 64-bit timers, 14318180 Hz
[    0.163333] system 00:01: iomem range 0xfed13000-0xfed19fff has been reserved
[    0.163393] system 00:06: ioport range 0x290-0x297 has been reserved
[    0.163448] system 00:07: ioport range 0x4d0-0x4d1 has been reserved
[    0.163491] system 00:07: ioport range 0x800-0x87f has been reserved
[    0.163533] system 00:07: ioport range 0x400-0x41f has been reserved
[    0.163575] system 00:07: ioport range 0x480-0x4bf has been reserved
[    0.163596] system 00:07: iomem range 0xfed1c000-0xfed1ffff has been reserved
[    0.163596] system 00:07: iomem range 0xfed20000-0xfed8ffff has been reserved
[    0.163649] system 00:07: iomem range 0xffb00000-0xffbfffff could not be reserved
[    0.163703] system 00:07: iomem range 0xfff00000-0xffffffff could not be reserved
[    0.163763] system 00:0a: iomem range 0xfec00000-0xfec00fff has been reserved
[    0.163807] system 00:0a: iomem range 0xfee00000-0xfee00fff has been reserved
[    0.163857] system 00:0c: iomem range 0xe0000000-0xefffffff could not be reserved
[    0.164476] system 00:0d: iomem range 0xe0000000-0xefffffff could not be reserved
[    0.164538] system 00:0e: iomem range 0x0-0x9ffff could not be reserved
[    0.164582] system 00:0e: iomem range 0xc0000-0xdffff has been reserved
[    0.164628] system 00:0e: iomem range 0xe0000-0xfffff could not be reserved
[    0.164676] system 00:0e: iomem range 0x100000-0x7f7fffff could not be reserved
[    0.165708] pci 0000:00:1c.0: PCI bridge, secondary bus 0000:03
[    0.165752] pci 0000:00:1c.0:   IO window: 0xe000-0xefff
[    0.165796] pci 0000:00:1c.0:   MEM window: disabled
[    0.165838] pci 0000:00:1c.0:   PREFETCH window: disabled
[    0.165885] pci 0000:00:1c.1: PCI bridge, secondary bus 0000:02
[    0.165929] pci 0000:00:1c.1:   IO window: 0xd000-0xdfff
[    0.165972] pci 0000:00:1c.1:   MEM window: 0xcff00000-0xcfffffff
[    0.166017] pci 0000:00:1c.1:   PREFETCH window: disabled
[    0.166063] pci 0000:00:1e.0: PCI bridge, secondary bus 0000:01
[    0.166108] pci 0000:00:1e.0:   IO window: 0xc000-0xcfff
[    0.166151] pci 0000:00:1e.0:   MEM window: disabled
[    4.451511] scsi1 : ata_piix
[    4.453919] ata1: PATA max UDMA/100 cmd 0xa000 ctl 0x9800 bmdma 0x8800 irq 18
[    4.453967] ata2: PATA max UDMA/100 cmd 0x9400 ctl 0x9000 bmdma 0x8808 irq 18
[    4.608079] ata1.00: ATAPI: HP      DVD Writer 840b, FF66, max UDMA/33
[    4.613986] ata1.00: configured for UDMA/33
[    4.775449] isa bounce pool size: 16 pages
[    4.777216] scsi 0:0:0:0: CD-ROM            HP       DVD Writer 840b  FF66 PQ: 0 ANSI: 5
[    4.782529] sr0: scsi3-mmc drive: 48x/48x writer dvd-ram cd/rw xa/form2 cdda tray
[    4.782593] Uniform CD-ROM driver Revision: 3.20
[    4.783044] sr 0:0:0:0: Attached scsi generic sg0 type 5
[    4.783193] ata_piix 0000:00:1f.2: PCI INT B -> GSI 17 (level, low) -> IRQ 17
[    4.783248] ata_piix 0000:00:1f.2: MAP [ P0 P2 P1 P3 ]
[    4.783555] scsi2 : ata_piix
[    4.783807] scsi3 : ata_piix
[    4.784005] ata3: SATA max UDMA/133 cmd 0xb800 ctl 0xb400 bmdma 0xa400 irq 17
[    4.784057] ata4: SATA max UDMA/133 cmd 0xb000 ctl 0xa800 bmdma 0xa408 irq 17
[    4.937848] ata3.00: ATA-6: ST380817AS, 3.42, max UDMA/133
[    4.937901] ata3.00: 156301488 sectors, multi 16: LBA48 NCQ (not used)
[    4.943851] ata3.00: configured for UDMA/133
[    5.105434] scsi 2:0:0:0: Direct-Access     ATA      ST380817AS       3.42 PQ: 0 ANSI: 5
[    5.105790] sd 2:0:0:0: [sda] 156301488 512-byte hardware sectors (80026 MB)
[    5.105858] sd 2:0:0:0: [sda] Write Protect is off
[    5.105938] sd 2:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    5.106055] sd 2:0:0:0: [sda] 156301488 512-byte hardware sectors (80026 MB)
[    5.106119] sd 2:0:0:0: [sda] Write Protect is off
[    5.106198] sd 2:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    5.106256]  sda: sda1 sda4 < sda5 sda6 >
[    5.149305] sd 2:0:0:0: [sda] Attached SCSI disk
[    5.149505] sd 2:0:0:0: Attached scsi generic sg1 type 0
[    5.149752] ehci_hcd 0000:00:1d.7: PCI INT A -> GSI 20 (level, low) -> IRQ 20
[    5.149825] ehci_hcd 0000:00:1d.7: EHCI Host Controller
[    5.149959] ehci_hcd 0000:00:1d.7: new USB bus registered, assigned bus number 1
[    5.153914] ehci_hcd 0000:00:1d.7: debug port 1
[    5.153972] ehci_hcd 0000:00:1d.7: irq 20, io mem 0xcfeffc00
[    5.163521] ehci_hcd 0000:00:1d.7: USB 2.0 started, EHCI 1.00, driver 10 Dec 2004
[    5.163716] usb usb1: configuration #1 chosen from 1 choice
[    5.163844] hub 1-0:1.0: USB hub found
[    5.163897] hub 1-0:1.0: 8 ports detected
[    5.264855] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002
[    5.264900] usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    5.264954] usb usb1: Product: EHCI Host Controller
[    5.264994] usb usb1: Manufacturer: Linux 2.6.26-slub-03414-g33af79d ehci_hcd
[    5.265038] usb usb1: SerialNumber: 0000:00:1d.7
[    5.265182] USB Universal Host Controller Interface driver v3.0
[    5.265251] uhci_hcd 0000:00:1d.0: PCI INT A -> GSI 20 (level, low) -> IRQ 20
[    5.265305] uhci_hcd 0000:00:1d.0: UHCI Host Controller
[    5.265434] uhci_hcd 0000:00:1d.0: new USB bus registered, assigned bus number 2
[    5.265511] uhci_hcd 0000:00:1d.0: irq 20, io base 0x00007400
[    5.265709] usb usb2: configuration #1 chosen from 1 choice
[    5.265847] hub 2-0:1.0: USB hub found
[    5.265914] hub 2-0:1.0: 2 ports detected
[    5.366809] usb usb2: New USB device found, idVendor=1d6b, idProduct=0001
[    5.366855] usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    5.366908] usb usb2: Product: UHCI Host Controller
[    5.366948] usb usb2: Manufacturer: Linux 2.6.26-slub-03414-g33af79d uhci_hcd
[    5.366992] usb usb2: SerialNumber: 0000:00:1d.0
[    5.367050] uhci_hcd 0000:00:1d.1: PCI INT B -> GSI 17 (level, low) -> IRQ 17
[    5.367102] uhci_hcd 0000:00:1d.1: UHCI Host Controller
[    5.367238] uhci_hcd 0000:00:1d.1: new USB bus registered, assigned bus number 3
[    5.367313] uhci_hcd 0000:00:1d.1: irq 17, io base 0x00007800
[    5.367491] usb usb3: configuration #1 chosen from 1 choice
[    5.367637] hub 3-0:1.0: USB hub found
[    5.367690] hub 3-0:1.0: 2 ports detected
[    5.468792] usb usb3: New USB device found, idVendor=1d6b, idProduct=0001
[    5.468838] usb usb3: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    5.468891] usb usb3: Product: UHCI Host Controller
[    5.468932] usb usb3: Manufacturer: Linux 2.6.26-slub-03414-g33af79d uhci_hcd
[    5.468976] usb usb3: SerialNumber: 0000:00:1d.1
[    5.469057] uhci_hcd 0000:00:1d.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
[    5.469110] uhci_hcd 0000:00:1d.2: UHCI Host Controller
[    5.469238] uhci_hcd 0000:00:1d.2: new USB bus registered, assigned bus number 4
[    5.469314] uhci_hcd 0000:00:1d.2: irq 18, io base 0x00008000
[    5.469495] usb usb4: configuration #1 chosen from 1 choice
[    5.469637] hub 4-0:1.0: USB hub found
[    5.469689] hub 4-0:1.0: 2 ports detected
[    5.570792] usb usb4: New USB device found, idVendor=1d6b, idProduct=0001
[    5.570844] usb usb4: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    5.570904] usb usb4: Product: UHCI Host Controller
[    5.570944] usb usb4: Manufacturer: Linux 2.6.26-slub-03414-g33af79d uhci_hcd
[    5.570988] usb usb4: SerialNumber: 0000:00:1d.2
[    5.571048] uhci_hcd 0000:00:1d.3: PCI INT D -> GSI 19 (level, low) -> IRQ 19
[    5.571101] uhci_hcd 0000:00:1d.3: UHCI Host Controller
[    5.571238] uhci_hcd 0000:00:1d.3: new USB bus registered, assigned bus number 5
[    5.571320] uhci_hcd 0000:00:1d.3: irq 19, io base 0x00008400
[    5.571500] usb usb5: configuration #1 chosen from 1 choice
[    5.571645] hub 5-0:1.0: USB hub found
[    5.571698] hub 5-0:1.0: 2 ports detected
[    5.672814] usb usb5: New USB device found, idVendor=1d6b, idProduct=0001
[    5.672860] usb usb5: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    5.672913] usb usb5: Product: UHCI Host Controller
[    5.672954] usb usb5: Manufacturer: Linux 2.6.26-slub-03414-g33af79d uhci_hcd
[    5.672998] usb usb5: SerialNumber: 0000:00:1d.3
[    5.674508] usb 3-2: new low speed USB device using uhci_hcd and address 2
[    5.838528] usb 3-2: configuration #1 chosen from 1 choice
[    5.841822] usb 3-2: New USB device found, idVendor=046d, idProduct=c00e
[    5.841868] usb 3-2: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[    5.841912] usb 3-2: Product: USB-PS/2 Optical Mouse
[    5.841953] usb 3-2: Manufacturer: Logitech
[    5.842083] usbcore: registered new interface driver libusual
[    5.842318] PNP: PS/2 Controller [PNP0303:PS2K] at 0x60,0x64 irq 1
[    5.842363] PNP: PS/2 appears to have AUX port disabled, if this is incorrect please boot with i8042.nopnp
[    5.843598] serio: i8042 KBD port at 0x60,0x64 irq 1
[    5.843851] mice: PS/2 mouse device common for all mice
[    5.843983] i2c /dev entries driver
[    5.844213] i801_smbus 0000:00:1f.3: PCI INT B -> GSI 17 (level, low) -> IRQ 17
[    5.861145] input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input2
[    5.871310] w83627ehf: Found W83627EHG chip at 0x290
[    5.871582] w83627ehf w83627ehf.656: VID pins in output mode, CPU VID not available
[    5.871879] md: raid1 personality registered for level 1
[    5.871928] cpuidle: using governor ladder
[    5.871973] cpuidle: using governor menu
[    5.872111] Advanced Linux Sound Architecture Driver Version 1.0.17.
[    5.872160] ALSA device list:
[    5.872201]   No soundcards found.
[    5.872682] TCP cubic registered
[    5.872951] md: Autodetecting RAID arrays.
[    5.872995] md: Scanned 0 and added 0 devices.
[    5.873035] md: autorun ...
[    5.873082] md: ... autorun DONE.
[    5.904644] kjournald starting.  Commit interval 5 seconds
[    5.904697] EXT3-fs: mounted filesystem with ordered data mode.
[    5.904749] VFS: Mounted root (ext3 filesystem) readonly.
[    5.904807] Freeing unused kernel memory: 312k freed
[    5.904983] Write protecting the kernel read-only data: 3968k
[    5.987836] Kernel panic - not syncing: No init found.  Try passing init= option to kernel.

--=-NTs34dI4kH0e9CrZr7Xq--

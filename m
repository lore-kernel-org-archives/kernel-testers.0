From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: [saa7133] resource map sanity check conflict
Date: Sat, 18 Oct 2008 16:34:07 +0200
Message-ID: <1224340447.5325.4.camel@zwerg>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="=-iOuDwzffFelfD4FkoMTO"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, mingo-X9Un+BFzKDI@public.gmane.org


--=-iOuDwzffFelfD4FkoMTO
Content-Type: text/plain
Content-Transfer-Encoding: 7bit

i get this message after your patch: "IO resources, x86: ioremap sanity
check to catch mapping requests exceeding"

so may be saa7133 not clean ;) dmesg is attached.

resource map sanity check conflict: 0xcfeff800 0xcff007ff 0xcfe00000
0xcfefffff PCI Bus 0000:01
------------[ cut here ]------------
WARNING: at arch/x86/mm/ioremap.c:226 __ioremap_caller+0x2f5/0x33c()
Modules linked in: saa7134(+) ir_common hid snd_hda_intel compat_ioctl32
videodev v4l1_compat v4l2_common videobuf_dma_sg videobuf_core tveeprom
snd_pcm_oss snd_mixer_oss evdev snd_pcm snd_timer snd_page_alloc
Pid: 2345, comm: modprobe Not tainted 2.6.27-slub-04260-g6b2ada8 #9
Call Trace:
 [<ffffffff80238459>] warn_on_slowpath+0x51/0x7e
 [<ffffffff8051d3ba>] printk+0x4e/0x5c
 [<ffffffff80490880>] pci_conf1_read+0xb1/0xdc
 [<ffffffff8023e135>] iomem_map_sanity_check+0x94/0x9b
 [<ffffffff80222a52>] __ioremap_caller+0x2f5/0x33c
 [<ffffffffa00d8f0c>] saa7134_initdev+0x32c/0x9b5 [saa7134]
 [<ffffffff8037e3c9>] pci_device_probe+0xba/0xff
 [<ffffffff803f3835>] driver_probe_device+0x81/0x171
 [<ffffffff803f3992>] __driver_attach+0x6d/0x6f
 [<ffffffffa00d0174>] saa7134_init+0x0/0x51 [saa7134]
 [<ffffffff803f3925>] __driver_attach+0x0/0x6f
 [<ffffffff803f3143>] bus_for_each_dev+0x56/0x7e
 [<ffffffffa00d0174>] saa7134_init+0x0/0x51 [saa7134]
 [<ffffffff803f2b01>] bus_add_driver+0x1bb/0x22c
 [<ffffffffa00d0174>] saa7134_init+0x0/0x51 [saa7134]
 [<ffffffff803f3b0b>] driver_register+0x69/0x145
 [<ffffffffa00d0174>] saa7134_init+0x0/0x51 [saa7134]
 [<ffffffff8037e66f>] __pci_register_driver+0x5d/0x9e
 [<ffffffffa00d0174>] saa7134_init+0x0/0x51 [saa7134]
 [<ffffffff8020902d>] _stext+0x2d/0x13a
 [<ffffffff8025d857>] sys_init_module+0x8f/0x1bc
 [<ffffffff8020b49b>] system_call_fastpath+0x16/0x1b
---[ end trace 75a06d55961ab649 ]---

--=-iOuDwzffFelfD4FkoMTO
Content-Disposition: attachment; filename="dmesg"
Content-Type: text/plain; name="dmesg"; charset="UTF-8"
Content-Transfer-Encoding: 7bit

BIOS EBDA/lowmem at: 0009fc00/0009fc00
Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Linux version 2.6.27-slub-04260-g6b2ada8 (lex@zwerg) (gcc version 4.3.2 (Ubuntu 4.3.2-1ubuntu10) ) #9 SMP Sat Oct 18 11:27:00 CEST 2008
Command line: root=/dev/sda6 ro
KERNEL supported cpus:
  Intel GenuineIntel
  AMD AuthenticAMD
  Centaur CentaurHauls
BIOS-provided physical RAM map:
 BIOS-e820: 0000000000000000 - 000000000009fc00 (usable)
 BIOS-e820: 000000000009fc00 - 00000000000a0000 (reserved)
 BIOS-e820: 00000000000e4000 - 0000000000100000 (reserved)
 BIOS-e820: 0000000000100000 - 000000007f790000 (usable)
 BIOS-e820: 000000007f790000 - 000000007f79e000 (ACPI data)
 BIOS-e820: 000000007f79e000 - 000000007f7e0000 (ACPI NVS)
 BIOS-e820: 000000007f7e0000 - 000000007f800000 (reserved)
 BIOS-e820: 00000000ffb80000 - 0000000100000000 (reserved)
DMI 2.4 present.
AMI BIOS detected: BIOS may corrupt low RAM, working it around.
last_pfn = 0x7f790 max_arch_pfn = 0x3ffffffff
x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106
Scanning 0 areas for low memory corruption
modified physical RAM map:
 modified: 0000000000000000 - 0000000000010000 (reserved)
 modified: 0000000000010000 - 000000000009fc00 (usable)
 modified: 000000000009fc00 - 00000000000a0000 (reserved)
 modified: 00000000000e4000 - 0000000000100000 (reserved)
 modified: 0000000000100000 - 000000007f790000 (usable)
 modified: 000000007f790000 - 000000007f79e000 (ACPI data)
 modified: 000000007f79e000 - 000000007f7e0000 (ACPI NVS)
 modified: 000000007f7e0000 - 000000007f800000 (reserved)
 modified: 00000000ffb80000 - 0000000100000000 (reserved)
init_memory_mapping
 0000000000 - 007f600000 page 2M
 007f600000 - 007f790000 page 4k
kernel direct mapping tables up to 7f790000 @ 10000-14000
last_map_addr: 7f790000 end: 7f790000
ACPI: RSDP 000FA5D0, 0014 (r0 ACPIAM)
ACPI: RSDT 7F790000, 0040 (r1 NEC              6000701 MSFT       97)
ACPI: FACP 7F790200, 0081 (r1 A_M_I_ OEMFACP   6000701 MSFT       97)
ACPI: DSDT 7F790590, 4BD8 (r1  A0281 A0281081       81 INTL 20060113)
ACPI: FACS 7F79E000, 0040
ACPI: APIC 7F790390, 0080 (r1 A_M_I_ OEMAPIC   6000701 MSFT       97)
ACPI: SLIC 7F790410, 0176 (r1 NEC              6000701 MSFT       97)
ACPI: OEMB 7F79E040, 006B (r1 A_M_I_ AMI_OEM   6000701 MSFT       97)
ACPI: HPET 7F795170, 0038 (r1 A_M_I_ OEMHPET   6000701 MSFT       97)
ACPI: MCFG 7F7951B0, 003C (r1 A_M_I_ OEMMCFG   6000701 MSFT       97)
ACPI: ASF! 7F7951EC, 0099 (r32 LEGEND I865PASF        1 INTL 20060113)
ACPI: Local APIC address 0xfee00000
No NUMA configuration found
Faking a node at 0000000000000000-000000007f790000
Bootmem setup node 0 0000000000000000-000000007f790000
  NODE_DATA [0000000000012000 - 0000000000015fff]
  bootmap [0000000000016000 -  0000000000025ef7] pages 10
(5 early reservations) ==> bootmem [0000000000 - 007f790000]
  #0 [0000000000 - 0000001000]   BIOS data page ==> [0000000000 - 0000001000]
  #1 [0000006000 - 0000008000]       TRAMPOLINE ==> [0000006000 - 0000008000]
  #2 [0000200000 - 00007a02f4]    TEXT DATA BSS ==> [0000200000 - 00007a02f4]
  #3 [000009fc00 - 0000100000]    BIOS reserved ==> [000009fc00 - 0000100000]
  #4 [0000010000 - 0000012000]          PGTABLE ==> [0000010000 - 0000012000]
found SMP MP-table at [ffff8800000ff780] 000ff780
 [ffffe20000000000-ffffe20001ffffff] PMD -> [ffff880001200000-ffff8800031fffff] on node 0
Zone PFN ranges:
  DMA      0x00000010 -> 0x00001000
  DMA32    0x00001000 -> 0x00100000
  Normal   0x00100000 -> 0x00100000
Movable zone start PFN for each node
early_node_map[2] active PFN ranges
    0: 0x00000010 -> 0x0000009f
    0: 0x00000100 -> 0x0007f790
On node 0 totalpages: 522015
  DMA zone: 2376 pages, LIFO batch:0
  DMA32 zone: 509937 pages, LIFO batch:31
ACPI: PM-Timer IO Port: 0x808
ACPI: Local APIC address 0xfee00000
ACPI: LAPIC (acpi_id[0x01] lapic_id[0x00] enabled)
ACPI: LAPIC (acpi_id[0x02] lapic_id[0x01] enabled)
ACPI: LAPIC (acpi_id[0x03] lapic_id[0x82] disabled)
ACPI: LAPIC (acpi_id[0x04] lapic_id[0x83] disabled)
ACPI: IOAPIC (id[0x02] address[0xfec00000] gsi_base[0])
IOAPIC[0]: apic_id 2, version 0, address 0xfec00000, GSI 0-23
ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
ACPI: IRQ0 used by override.
ACPI: IRQ2 used by override.
ACPI: IRQ9 used by override.
ACPI: HPET id: 0x8086a201 base: 0xfed00000
Using ACPI (MADT) for SMP configuration information
SMP: Allowing 2 CPUs, 0 hotplug CPUs
PM: Registered nosave memory: 000000000009f000 - 00000000000a0000
PM: Registered nosave memory: 00000000000a0000 - 00000000000e4000
PM: Registered nosave memory: 00000000000e4000 - 0000000000100000
Allocating PCI resources starting at 80000000 (gap: 7f800000:80380000)
PERCPU: Allocating 46624 bytes of per cpu data
per cpu data for cpu0 on node0 at 0000000001010000
per cpu data for cpu1 on node0 at 000000000101c000
NR_CPUS: 2, nr_cpu_ids: 2, nr_node_ids 1
Built 1 zonelists in Node order, mobility grouping on.  Total pages: 512313
Policy zone: DMA32
Kernel command line: root=/dev/sda6 ro
Initializing CPU#0
PID hash table entries: 4096 (order: 12, 32768 bytes)
Fast TSC calibration using PIT
Detected 3200.645 MHz processor.
Console: colour VGA+ 80x25
console [tty0] enabled
Scanning for low memory corruption every 60 seconds
Checking aperture...
No AGP bridge found
Memory: 2049276k/2088512k available (3227k kernel code, 38784k reserved, 1522k data, 464k init)
SLUB: Genslabs=13, HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
hpet clockevent registered
Calibrating delay loop (skipped), value calculated using timer frequency.. 6401.29 BogoMIPS (lpj=3200645)
Security Framework initialized
SELinux:  Disabled at boot.
Dentry cache hash table entries: 262144 (order: 9, 2097152 bytes)
Inode-cache hash table entries: 131072 (order: 8, 1048576 bytes)
Mount-cache hash table entries: 256
Initializing cgroup subsys ns
Initializing cgroup subsys cpuacct
Initializing cgroup subsys memory
CPU: Trace cache: 12K uops, L1 D cache: 16K
CPU: L2 cache: 2048K
CPU 0/0 -> Node 0
CPU: Physical Processor ID: 0
CPU: Processor Core ID: 0
CPU0: Thermal monitoring enabled (TM1)
ACPI: Core revision 20080609
Setting APIC routing to flat
..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
CPU0: Intel(R) Pentium(R) D CPU 3.20GHz stepping 04
APIC timer calibration result 12502549
Detected 12.502 MHz APIC timer.
Booting processor 1/1 ip 6000
Initializing CPU#1
Calibrating delay using timer specific routine.. 6401.18 BogoMIPS (lpj=3200591)
CPU: Trace cache: 12K uops, L1 D cache: 16K
CPU: L2 cache: 2048K
CPU 1/1 -> Node 0
CPU: Physical Processor ID: 0
CPU: Processor Core ID: 0
CPU1: Thermal monitoring enabled (TM1)
x86 PAT enabled: cpu 1, old 0x7040600070406, new 0x7010600070106
CPU1: Intel(R) Pentium(R) D CPU 3.20GHz stepping 04
checking TSC synchronization [CPU#0 -> CPU#1]: passed.
Brought up 2 CPUs
Total of 2 processors activated (12802.47 BogoMIPS).
CPU0 attaching sched-domain:
 domain 0: span 0-1 level MC
  groups: 0 1
  domain 1: span 0-1 level NODE
   groups: 0-1
CPU1 attaching sched-domain:
 domain 0: span 0-1 level MC
  groups: 1 0
  domain 1: span 0-1 level NODE
   groups: 0-1
net_namespace: 1568 bytes
Time:  9:35:08  Date: 10/18/08
NET: Registered protocol family 16
No dock devices found.
ACPI: bus type pci registered
PCI: Found Intel Corporation 945G/GZ/P/PL Express Memory Controller Hub with MMCONFIG support.
PCI: Using MMCONFIG at e0000000 - efffffff
PCI: Using configuration type 1 for base access
ACPI: EC: Look up EC in DSDT
ACPI: Interpreter enabled
ACPI: (supports S0 S1 S3 S4 S5)
ACPI: Using IOAPIC for interrupt routing
ACPI: PCI Root Bridge [PCI0] (0000:00)
PCI: 0000:00:02.0 reg 10 32bit mmio: [cfd00000, cfd7ffff]
PCI: 0000:00:02.0 reg 14 io port: [7000, 7007]
PCI: 0000:00:02.0 reg 18 32bit mmio: [d0000000, dfffffff]
PCI: 0000:00:02.0 reg 1c 32bit mmio: [cfd80000, cfdbffff]
PCI: 0000:00:1b.0 reg 10 64bit mmio: [cfdf8000, cfdfbfff]
pci 0000:00:1b.0: PME# supported from D0 D3hot D3cold
pci 0000:00:1b.0: PME# disabled
pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
pci 0000:00:1c.0: PME# disabled
pci 0000:00:1c.1: PME# supported from D0 D3hot D3cold
pci 0000:00:1c.1: PME# disabled
PCI: 0000:00:1d.0 reg 20 io port: [7400, 741f]
PCI: 0000:00:1d.1 reg 20 io port: [7800, 781f]
PCI: 0000:00:1d.2 reg 20 io port: [8000, 801f]
PCI: 0000:00:1d.3 reg 20 io port: [8400, 841f]
PCI: 0000:00:1d.7 reg 10 32bit mmio: [cfdffc00, cfdfffff]
pci 0000:00:1d.7: PME# supported from D0 D3hot D3cold
pci 0000:00:1d.7: PME# disabled
pci 0000:00:1f.0: quirk: region 0800-087f claimed by ICH6 ACPI/GPIO/TCO
pci 0000:00:1f.0: quirk: region 0480-04bf claimed by ICH6 GPIO
PCI: 0000:00:1f.1 reg 10 io port: [a000, a007]
PCI: 0000:00:1f.1 reg 14 io port: [9800, 9803]
PCI: 0000:00:1f.1 reg 18 io port: [9400, 9407]
PCI: 0000:00:1f.1 reg 1c io port: [9000, 9003]
PCI: 0000:00:1f.1 reg 20 io port: [8800, 880f]
PCI: 0000:00:1f.2 reg 10 io port: [b800, b807]
PCI: 0000:00:1f.2 reg 14 io port: [b400, b403]
PCI: 0000:00:1f.2 reg 18 io port: [b000, b007]
PCI: 0000:00:1f.2 reg 1c io port: [a800, a803]
PCI: 0000:00:1f.2 reg 20 io port: [a400, a40f]
pci 0000:00:1f.2: PME# supported from D3hot
pci 0000:00:1f.2: PME# disabled
PCI: 0000:00:1f.3 reg 20 io port: [400, 41f]
PCI: bridge 0000:00:1c.0 io port: [e000, efff]
PCI: 0000:02:00.0 reg 10 32bit mmio: [cffe0000, cfffffff]
PCI: 0000:02:00.0 reg 18 io port: [d800, d81f]
pci 0000:02:00.0: PME# supported from D0 D3hot D3cold
pci 0000:02:00.0: PME# disabled
Pre-1.1 PCIe device detected, disable ASPM for 0000:00:1c.1. It can be enabled forcedly with 'pcie_aspm=force'
PCI: bridge 0000:00:1c.1 io port: [d000, dfff]
PCI: bridge 0000:00:1c.1 32bit mmio: [cff00000, cfffffff]
PCI: 0000:01:0a.0 reg 10 32bit mmio: [cfeff800, cfefffff]
pci 0000:01:0a.0: supports D1
pci 0000:01:0a.0: supports D2
pci 0000:00:1e.0: transparent bridge
PCI: bridge 0000:00:1e.0 io port: [c000, cfff]
PCI: bridge 0000:00:1e.0 32bit mmio: [cfe00000, cfefffff]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.P0P3._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.P0P4._PRT]
ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.P0P5._PRT]
ACPI: PCI Interrupt Link [LNKA] (IRQs 3 4 5 7 10 *11 12 14 15)
ACPI: PCI Interrupt Link [LNKB] (IRQs 3 4 5 7 *10 11 12 14 15)
ACPI: PCI Interrupt Link [LNKC] (IRQs 3 4 5 7 10 11 12 *14 15)
ACPI: PCI Interrupt Link [LNKD] (IRQs 3 4 *5 7 10 11 12 14 15)
ACPI: PCI Interrupt Link [LNKE] (IRQs 3 4 5 7 10 11 12 14 *15)
ACPI: PCI Interrupt Link [LNKF] (IRQs 3 4 5 7 10 11 12 14 15) *0, disabled.
ACPI: PCI Interrupt Link [LNKG] (IRQs *3 4 5 7 10 11 12 14 15)
ACPI: PCI Interrupt Link [LNKH] (IRQs 3 4 5 7 10 11 12 14 15) *0, disabled.
ACPI Warning (tbutils-0217): Incorrect checksum in table [OEMB] - 70, should be 6F [20080609]
ACPI: WMI: Mapper loaded
Linux Plug and Play Support v0.97 (c) Adam Belay
SCSI subsystem initialized
libata version 3.00 loaded.
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
PCI: Using ACPI for IRQ routing
PCI-GART: No AMD northbridge found.
hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0
hpet0: 3 comparators, 64-bit 14.318180 MHz counter
pnp: PnP ACPI init
ACPI: bus type pnp registered
pnp: PnP ACPI: found 15 devices
ACPI: ACPI bus type pnp unregistered
system 00:01: iomem range 0xfed13000-0xfed19fff has been reserved
system 00:06: ioport range 0x290-0x297 has been reserved
system 00:07: ioport range 0x4d0-0x4d1 has been reserved
system 00:07: ioport range 0x800-0x87f has been reserved
system 00:07: ioport range 0x400-0x41f has been reserved
system 00:07: ioport range 0x480-0x4bf has been reserved
system 00:07: iomem range 0xfed1c000-0xfed1ffff has been reserved
system 00:07: iomem range 0xfed20000-0xfed8ffff has been reserved
system 00:07: iomem range 0xffb00000-0xffbfffff could not be reserved
system 00:07: iomem range 0xfff00000-0xffffffff could not be reserved
system 00:0a: iomem range 0xfec00000-0xfec00fff has been reserved
system 00:0a: iomem range 0xfee00000-0xfee00fff has been reserved
system 00:0c: iomem range 0xe0000000-0xefffffff has been reserved
system 00:0d: iomem range 0xe0000000-0xefffffff has been reserved
system 00:0e: iomem range 0x0-0x9ffff could not be reserved
system 00:0e: iomem range 0xc0000-0xdffff has been reserved
system 00:0e: iomem range 0xe0000-0xfffff could not be reserved
system 00:0e: iomem range 0x100000-0x7f7fffff could not be reserved
pci 0000:00:1c.0: PCI bridge, secondary bus 0000:03
pci 0000:00:1c.0:   IO window: 0xe000-0xefff
pci 0000:00:1c.0:   MEM window: disabled
pci 0000:00:1c.0:   PREFETCH window: disabled
pci 0000:00:1c.1: PCI bridge, secondary bus 0000:02
pci 0000:00:1c.1:   IO window: 0xd000-0xdfff
pci 0000:00:1c.1:   MEM window: 0xcff00000-0xcfffffff
pci 0000:00:1c.1:   PREFETCH window: disabled
pci 0000:00:1e.0: PCI bridge, secondary bus 0000:01
pci 0000:00:1e.0:   IO window: 0xc000-0xcfff
pci 0000:00:1e.0:   MEM window: 0xcfe00000-0xcfefffff
pci 0000:00:1e.0:   PREFETCH window: disabled
pci 0000:00:1c.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
pci 0000:00:1c.0: setting latency timer to 64
pci 0000:00:1c.1: PCI INT B -> GSI 17 (level, low) -> IRQ 17
pci 0000:00:1c.1: setting latency timer to 64
pci 0000:00:1e.0: setting latency timer to 64
bus: 00 index 0 io port: [0, ffff]
bus: 00 index 1 mmio: [0, ffffffffffffffff]
bus: 03 index 0 io port: [e000, efff]
bus: 03 index 1 mmio: [0, 0]
bus: 03 index 2 mmio: [0, 0]
bus: 03 index 3 mmio: [0, 0]
bus: 02 index 0 io port: [d000, dfff]
bus: 02 index 1 mmio: [cff00000, cfffffff]
bus: 02 index 2 mmio: [0, 0]
bus: 02 index 3 mmio: [0, 0]
bus: 01 index 0 io port: [c000, cfff]
bus: 01 index 1 mmio: [cfe00000, cfefffff]
bus: 01 index 2 mmio: [0, 0]
bus: 01 index 3 io port: [0, ffff]
bus: 01 index 4 mmio: [0, ffffffffffffffff]
NET: Registered protocol family 2
IP route cache hash table entries: 65536 (order: 7, 524288 bytes)
TCP established hash table entries: 262144 (order: 10, 4194304 bytes)
TCP bind hash table entries: 65536 (order: 8, 1048576 bytes)
TCP: Hash tables configured (established 262144 bind 65536)
TCP reno registered
NET: Registered protocol family 1
audit: initializing netlink socket (disabled)
type=2000 audit(1224322508.197:1): initialized
HugeTLB registered 2 MB page size, pre-allocated 0 pages
VFS: Disk quotas dquot_6.5.1
Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
msgmni has been set to 4002
alg: No test for stdrng (krng)
io scheduler noop registered
io scheduler cfq registered (default)
pci 0000:00:02.0: Boot video device
pcieport-driver 0000:00:1c.0: setting latency timer to 64
pcieport-driver 0000:00:1c.0: found MSI capability
pci_express 0000:00:1c.0:pcie00: allocate port service
pci_express 0000:00:1c.0:pcie02: allocate port service
pci_express 0000:00:1c.0:pcie03: allocate port service
pcieport-driver 0000:00:1c.1: setting latency timer to 64
pcieport-driver 0000:00:1c.1: found MSI capability
pci_express 0000:00:1c.1:pcie00: allocate port service
pci_express 0000:00:1c.1:pcie03: allocate port service
input: Power Button (FF) as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input0
ACPI: Power Button (FF) [PWRF]
input: Power Button (CM) as /devices/LNXSYSTM:00/device:00/PNP0C0C:00/input/input1
ACPI: Power Button (CM) [PWRB]
ACPI: SSDT 7F79E0B0, 0208 (r1    AMI   CPU1PM        1 INTL 20060113)
processor ACPI0007:00: registered as cooling_device0
ACPI: Processor [CPU1] (supports 8 throttling states)
ACPI: SSDT 7F79E2C0, 013A (r1    AMI   CPU2PM        1 INTL 20060113)
processor ACPI0007:01: registered as cooling_device1
ACPI: Processor [CPU2] (supports 8 throttling states)
Real Time Clock Driver v1.12ac
Linux agpgart interface v0.103
agpgart-intel 0000:00:00.0: Intel 945G Chipset
agpgart-intel 0000:00:00.0: detected 7932K stolen memory
agpgart-intel 0000:00:00.0: AGP aperture is 256M @ 0xd0000000
[drm] Initialized drm 1.1.0 20060810
pci 0000:00:02.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
pci 0000:00:02.0: setting latency timer to 64
[drm] Initialized i915 1.6.0 20060119 on minor 0
Serial: 8250/16550 driver4 ports, IRQ sharing disabled
serial8250: ttyS2 at I/O 0x3e8 (irq = 4) is a 16550A
00:0b: ttyS2 at I/O 0x3e8 (irq = 4) is a 16550A
brd: module loaded
loop: module loaded
e1000e: Intel(R) PRO/1000 Network Driver - 0.3.3.3-k6
e1000e: Copyright (c) 1999-2008 Intel Corporation.
e1000e 0000:02:00.0: PCI INT A -> GSI 17 (level, low) -> IRQ 17
e1000e 0000:02:00.0: setting latency timer to 64
e1000e 0000:02:00.0: Warning: detected DSPD enabled in EEPROM
0000:02:00.0: eth0: (PCI Express:2.5GB/s:Width x1) 00:13:d4:63:0f:9e
0000:02:00.0: eth0: Intel(R) PRO/1000 Network Connection
0000:02:00.0: eth0: MAC: 2, PHY: 2, PBA No: ffffff-0ff
console [netcon0] enabled
netconsole: network logging started
Driver 'sd' needs updating - please use bus_type methods
Driver 'sr' needs updating - please use bus_type methods
ata_piix 0000:00:1f.1: version 2.12
ata_piix 0000:00:1f.1: PCI INT A -> GSI 18 (level, low) -> IRQ 18
ata_piix 0000:00:1f.1: setting latency timer to 64
scsi0 : ata_piix
scsi1 : ata_piix
ata1: PATA max UDMA/100 cmd 0xa000 ctl 0x9800 bmdma 0x8800 irq 18
ata2: PATA max UDMA/100 cmd 0x9400 ctl 0x9000 bmdma 0x8808 irq 18
Switched to high resolution mode on CPU 1
Switched to high resolution mode on CPU 0
ata1.00: ATAPI: HP      DVD Writer 840b, FF66, max UDMA/33
ata1.00: configured for UDMA/33
isa bounce pool size: 16 pages
scsi 0:0:0:0: CD-ROM            HP       DVD Writer 840b  FF66 PQ: 0 ANSI: 5
sr0: scsi3-mmc drive: 48x/48x writer dvd-ram cd/rw xa/form2 cdda tray
Uniform CD-ROM driver Revision: 3.20
sr 0:0:0:0: Attached scsi CD-ROM sr0
sr 0:0:0:0: Attached scsi generic sg0 type 5
ata_piix 0000:00:1f.2: PCI INT B -> GSI 17 (level, low) -> IRQ 17
ata_piix 0000:00:1f.2: MAP [ P0 P2 P1 P3 ]
ata_piix 0000:00:1f.2: setting latency timer to 64
scsi2 : ata_piix
scsi3 : ata_piix
ata3: SATA max UDMA/133 cmd 0xb800 ctl 0xb400 bmdma 0xa400 irq 17
ata4: SATA max UDMA/133 cmd 0xb000 ctl 0xa800 bmdma 0xa408 irq 17
ata3.00: ATA-6: ST380817AS, 3.42, max UDMA/133
ata3.00: 156301488 sectors, multi 16: LBA48 NCQ (not used)
ata3.00: configured for UDMA/133
scsi 2:0:0:0: Direct-Access     ATA      ST380817AS       3.42 PQ: 0 ANSI: 5
sd 2:0:0:0: [sda] 156301488 512-byte hardware sectors: (80.0GB/74.5GiB)
sd 2:0:0:0: [sda] Write Protect is off
sd 2:0:0:0: [sda] Mode Sense: 00 3a 00 00
sd 2:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
sd 2:0:0:0: [sda] 156301488 512-byte hardware sectors: (80.0GB/74.5GiB)
sd 2:0:0:0: [sda] Write Protect is off
sd 2:0:0:0: [sda] Mode Sense: 00 3a 00 00
sd 2:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
 sda: sda1 sda2 < sda5 sda6 sda7 sda8 >
sd 2:0:0:0: [sda] Attached SCSI disk
sd 2:0:0:0: Attached scsi generic sg1 type 0
ehci_hcd 0000:00:1d.7: PCI INT A -> GSI 20 (level, low) -> IRQ 20
ehci_hcd 0000:00:1d.7: setting latency timer to 64
ehci_hcd 0000:00:1d.7: EHCI Host Controller
ehci_hcd 0000:00:1d.7: new USB bus registered, assigned bus number 1
ehci_hcd 0000:00:1d.7: debug port 1
ehci_hcd 0000:00:1d.7: cache line size of 128 is not supported
ehci_hcd 0000:00:1d.7: irq 20, io mem 0xcfdffc00
ehci_hcd 0000:00:1d.7: USB 2.0 started, EHCI 1.00, driver 10 Dec 2004
usb usb1: configuration #1 chosen from 1 choice
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 8 ports detected
usb usb1: New USB device found, idVendor=1d6b, idProduct=0002
usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb1: Product: EHCI Host Controller
usb usb1: Manufacturer: Linux 2.6.27-slub-04260-g6b2ada8 ehci_hcd
usb usb1: SerialNumber: 0000:00:1d.7
USB Universal Host Controller Interface driver v3.0
uhci_hcd 0000:00:1d.0: PCI INT A -> GSI 20 (level, low) -> IRQ 20
uhci_hcd 0000:00:1d.0: setting latency timer to 64
uhci_hcd 0000:00:1d.0: UHCI Host Controller
uhci_hcd 0000:00:1d.0: new USB bus registered, assigned bus number 2
uhci_hcd 0000:00:1d.0: irq 20, io base 0x00007400
usb usb2: configuration #1 chosen from 1 choice
hub 2-0:1.0: USB hub found
hub 2-0:1.0: 2 ports detected
usb 1-2: new high speed USB device using ehci_hcd and address 2
usb usb2: New USB device found, idVendor=1d6b, idProduct=0001
usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb2: Product: UHCI Host Controller
usb usb2: Manufacturer: Linux 2.6.27-slub-04260-g6b2ada8 uhci_hcd
usb usb2: SerialNumber: 0000:00:1d.0
uhci_hcd 0000:00:1d.1: PCI INT B -> GSI 17 (level, low) -> IRQ 17
uhci_hcd 0000:00:1d.1: setting latency timer to 64
uhci_hcd 0000:00:1d.1: UHCI Host Controller
uhci_hcd 0000:00:1d.1: new USB bus registered, assigned bus number 3
uhci_hcd 0000:00:1d.1: irq 17, io base 0x00007800
usb usb3: configuration #1 chosen from 1 choice
hub 3-0:1.0: USB hub found
hub 3-0:1.0: 2 ports detected
usb 1-2: configuration #1 chosen from 1 choice
usb 1-2: New USB device found, idVendor=0dda, idProduct=2005
usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
usb 1-2: Product: Hama Card Reader
usb 1-2: Manufacturer: Hama Card Reader
usb 1-2: SerialNumber: ABCD12345683
usb usb3: New USB device found, idVendor=1d6b, idProduct=0001
usb usb3: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb3: Product: UHCI Host Controller
usb usb3: Manufacturer: Linux 2.6.27-slub-04260-g6b2ada8 uhci_hcd
usb usb3: SerialNumber: 0000:00:1d.1
uhci_hcd 0000:00:1d.2: PCI INT C -> GSI 18 (level, low) -> IRQ 18
uhci_hcd 0000:00:1d.2: setting latency timer to 64
uhci_hcd 0000:00:1d.2: UHCI Host Controller
uhci_hcd 0000:00:1d.2: new USB bus registered, assigned bus number 4
uhci_hcd 0000:00:1d.2: irq 18, io base 0x00008000
usb usb4: configuration #1 chosen from 1 choice
hub 4-0:1.0: USB hub found
hub 4-0:1.0: 2 ports detected
usb usb4: New USB device found, idVendor=1d6b, idProduct=0001
usb usb4: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb4: Product: UHCI Host Controller
usb usb4: Manufacturer: Linux 2.6.27-slub-04260-g6b2ada8 uhci_hcd
usb usb4: SerialNumber: 0000:00:1d.2
uhci_hcd 0000:00:1d.3: PCI INT D -> GSI 19 (level, low) -> IRQ 19
uhci_hcd 0000:00:1d.3: setting latency timer to 64
uhci_hcd 0000:00:1d.3: UHCI Host Controller
uhci_hcd 0000:00:1d.3: new USB bus registered, assigned bus number 5
uhci_hcd 0000:00:1d.3: irq 19, io base 0x00008400
usb usb5: configuration #1 chosen from 1 choice
hub 5-0:1.0: USB hub found
hub 5-0:1.0: 2 ports detected
usb 3-2: new low speed USB device using uhci_hcd and address 2
usb usb5: New USB device found, idVendor=1d6b, idProduct=0001
usb usb5: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb5: Product: UHCI Host Controller
usb usb5: Manufacturer: Linux 2.6.27-slub-04260-g6b2ada8 uhci_hcd
usb usb5: SerialNumber: 0000:00:1d.3
usb 3-2: configuration #1 chosen from 1 choice
usb 3-2: New USB device found, idVendor=046d, idProduct=c00e
usb 3-2: New USB device strings: Mfr=1, Product=2, SerialNumber=0
usb 3-2: Product: USB-PS/2 Optical Mouse
usb 3-2: Manufacturer: Logitech
usbcore: registered new interface driver libusual
PNP: PS/2 Controller [PNP0303:PS2K] at 0x60,0x64 irq 1
PNP: PS/2 appears to have AUX port disabled, if this is incorrect please boot with i8042.nopnp
serio: i8042 KBD port at 0x60,0x64 irq 1
mice: PS/2 mouse device common for all mice
i2c /dev entries driver
i801_smbus 0000:00:1f.3: PCI INT B -> GSI 17 (level, low) -> IRQ 17
input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input2
w83627ehf: Found W83627EHG chip at 0x290
w83627ehf w83627ehf.656: VID pins in output mode, CPU VID not available
md: raid1 personality registered for level 1
cpuidle: using governor ladder
cpuidle: using governor menu
Advanced Linux Sound Architecture Driver Version 1.0.18rc3.
ALSA device list:
  No soundcards found.
TCP cubic registered
PM: Resume from partition /dev/sda7
PM: Checking hibernation image.
PM: Resume from disk failed.
registered taskstats version 1
  Magic number: 12:359:576
tty ptyb8: hash matches
md: Waiting for all devices to be available before autodetect
md: If you don't use raid, use raid=noautodetect
md: Autodetecting RAID arrays.
md: Scanned 0 and added 0 devices.
md: autorun ...
md: ... autorun DONE.
kjournald starting.  Commit interval 5 seconds
EXT3-fs: mounted filesystem with ordered data mode.
VFS: Mounted root (ext3 filesystem) readonly.
Freeing unused kernel memory: 464k freed
Write protecting the kernel read-only data: 4348k
Linux video capture interface: v2.00
HDA Intel 0000:00:1b.0: PCI INT A -> GSI 19 (level, low) -> IRQ 19
HDA Intel 0000:00:1b.0: setting latency timer to 64
hda_codec: Unknown model for ALC883, trying auto-probe from BIOS...
saa7130/34: v4l2 driver version 0.2.14 loaded
saa7134 0000:01:0a.0: PCI INT A -> GSI 22 (level, low) -> IRQ 22
saa7133[0]: found at 0000:01:0a.0, rev: 208, irq: 22, latency: 64, mmio: 0xcfeff800
saa7133[0]: subsystem: 1043:4845, board: ASUS TV-FM 7135 [card=53,autodetected]
resource map sanity check conflict: 0xcfeff800 0xcff007ff 0xcfe00000 0xcfefffff PCI Bus 0000:01
------------[ cut here ]------------
WARNING: at arch/x86/mm/ioremap.c:226 __ioremap_caller+0x2f5/0x33c()
Modules linked in: saa7134(+) ir_common hid snd_hda_intel compat_ioctl32 videodev v4l1_compat v4l2_common videobuf_dma_sg videobuf_core tveeprom snd_pcm_oss snd_mixer_oss evdev snd_pcm snd_timer snd_page_alloc
Pid: 2345, comm: modprobe Not tainted 2.6.27-slub-04260-g6b2ada8 #9
Call Trace:
 [<ffffffff80238459>] warn_on_slowpath+0x51/0x7e
 [<ffffffff8051d3ba>] printk+0x4e/0x5c
 [<ffffffff80490880>] pci_conf1_read+0xb1/0xdc
 [<ffffffff8023e135>] iomem_map_sanity_check+0x94/0x9b
 [<ffffffff80222a52>] __ioremap_caller+0x2f5/0x33c
 [<ffffffffa00d8f0c>] saa7134_initdev+0x32c/0x9b5 [saa7134]
 [<ffffffff8037e3c9>] pci_device_probe+0xba/0xff
 [<ffffffff803f3835>] driver_probe_device+0x81/0x171
 [<ffffffff803f3992>] __driver_attach+0x6d/0x6f
 [<ffffffffa00d0174>] saa7134_init+0x0/0x51 [saa7134]
 [<ffffffff803f3925>] __driver_attach+0x0/0x6f
 [<ffffffff803f3143>] bus_for_each_dev+0x56/0x7e
 [<ffffffffa00d0174>] saa7134_init+0x0/0x51 [saa7134]
 [<ffffffff803f2b01>] bus_add_driver+0x1bb/0x22c
 [<ffffffffa00d0174>] saa7134_init+0x0/0x51 [saa7134]
 [<ffffffff803f3b0b>] driver_register+0x69/0x145
 [<ffffffffa00d0174>] saa7134_init+0x0/0x51 [saa7134]
 [<ffffffff8037e66f>] __pci_register_driver+0x5d/0x9e
 [<ffffffffa00d0174>] saa7134_init+0x0/0x51 [saa7134]
 [<ffffffff8020902d>] _stext+0x2d/0x13a
 [<ffffffff8025d857>] sys_init_module+0x8f/0x1bc
 [<ffffffff8020b49b>] system_call_fastpath+0x16/0x1b
---[ end trace 75a06d55961ab649 ]---
saa7133[0]: board init: gpio is 0
usbcore: registered new interface driver hiddev
input: Logitech USB-PS/2 Optical Mouse as /devices/pci0000:00/0000:00:1d.1/usb3/3-2/3-2:1.0/input/input3
generic-usb 0003:046D:C00E.0001: input: USB HID v1.10 Mouse [Logitech USB-PS/2 Optical Mouse] on usb-0000:00:1d.1-2/input0
usbcore: registered new interface driver usbhid
usbhid: v2.6:USB HID core driver
saa7133[0]: i2c eeprom 00: 43 10 45 48 54 20 1c 00 43 43 a9 1c 55 d2 b2 92
saa7133[0]: i2c eeprom 10: 00 ff e2 0f ff 20 ff ff ff ff ff ff ff ff ff ff
saa7133[0]: i2c eeprom 20: 01 40 01 02 03 01 01 03 08 ff 00 88 ff ff ff ff
saa7133[0]: i2c eeprom 30: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
saa7133[0]: i2c eeprom 40: ff 22 00 c2 96 ff 02 30 15 ff ff ff ff ff ff ff
saa7133[0]: i2c eeprom 50: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
saa7133[0]: i2c eeprom 60: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
saa7133[0]: i2c eeprom 70: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
saa7133[0]: i2c eeprom 80: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
saa7133[0]: i2c eeprom 90: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
saa7133[0]: i2c eeprom a0: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
saa7133[0]: i2c eeprom b0: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
saa7133[0]: i2c eeprom c0: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
saa7133[0]: i2c eeprom d0: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
saa7133[0]: i2c eeprom e0: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
saa7133[0]: i2c eeprom f0: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
NET: Registered protocol family 10
lo: Disabled Privacy Extensions
tuner' 1-004b: chip found @ 0x96 (saa7133[0])
saa7133[0]: P7131 analog only, using entry of ASUSTeK P7131 Analog
tda829x 1-004b: setting tuner address to 61
tda829x 1-004b: type set to tda8290+75a
saa7133[0]: registered device video0 [v4l2]
saa7133[0]: registered device vbi1
saa7133[0]: registered device radio2
saa7134 ALSA driver for DMA sound loaded
saa7133[0]/alsa: saa7133[0] at 0xcfeff800 irq 22 registered as card -2
fuse init (API version 7.9)
Adding 979924k swap on /dev/sda7.  Priority:-1 extents:1 across:979924k
EXT3 FS on sda6, internal journal
kjournald starting.  Commit interval 5 seconds
EXT3 FS on sda1, internal journal
EXT3-fs: mounted filesystem with ordered data mode.
kjournald starting.  Commit interval 5 seconds
EXT3 FS on sda8, internal journal
EXT3-fs: mounted filesystem with ordered data mode.
ip_tables: (C) 2000-2006 Netfilter Core Team
ADDRCONF(NETDEV_UP): eth0: link is not ready
Bridge firewalling registered
br0: Dropping NETIF_F_UFO since no NETIF_F_HW_CSUM feature.
device eth0 entered promiscuous mode
0000:02:00.0: eth0: Link is Up 100 Mbps Full Duplex, Flow Control: RX/TX
0000:02:00.0: eth0: 10/100 speed: disabling TSO
ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
br0: port 1(eth0) entering learning state
br0: no IPv6 routers present
br0: topology change detected, propagating
br0: port 1(eth0) entering forwarding state
NET: Registered protocol family 17
eth0: no IPv6 routers present
warning: `avahi-daemon' uses 32-bit capabilities (legacy support in use)
vnet0: Dropping NETIF_F_UFO since no NETIF_F_HW_CSUM feature.
vnet0: starting userspace STP failed, starting kernel STP

--=-iOuDwzffFelfD4FkoMTO--

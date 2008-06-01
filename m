From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: BUG: sleeping function called from invalid context at
	mm/slab.c:3052
Date: Sun, 01 Jun 2008 11:47:03 +0200
Message-ID: <1212313623.5186.8.camel@zwerg>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="=-mJzkJ9JkChdf/2ca1v0C"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org


--=-mJzkJ9JkChdf/2ca1v0C
Content-Type: text/plain
Content-Transfer-Encoding: 7bit

I get this after suspend on my PC (2.6.26-rc4-00103-g1beee8d). I do not
thing there is any reason to bisect it, supend on my PC began to work
only with 2.6.26-rc3:


[  433.110546] BUG: sleeping function called from invalid context at
mm/slab.c:3052
[  433.110550] in_atomic():1, irqs_disabled():0
[  433.110554] 5 locks held by pm-suspend/4783:
[  433.110556]  #0:  (&buffer->mutex){--..}, at: [<c01ac0b0>]
sysfs_write_file+0x24/0xe1
[  433.110572]  #1:  (pm_mutex){--..}, at: [<c0147288>] enter_state
+0x15c/0x170
[  433.110579]  #2:  (cpu_add_remove_lock){--..}, at: [<c0143138>]
disable_nonboot_cpus+0x8/0xc0
[  433.110585]  #3:  (&cpu_hotplug.lock){--..}, at: [<c014308d>]
cpu_hotplug_begin+0x17/0x3e
[  433.110590]  #4:  (smp_alt){--..}, at: [<c0106d9c>]
alternatives_smp_switch+0x14b/0x161
[  433.110598] Pid: 4783, comm: pm-suspend Not tainted
2.6.26-rc4-testing-00103-g1beee8d #35
[  433.110602]  [<c0173715>] kmem_cache_alloc+0x26/0xf2
[  433.110645]  [<c016b443>] __get_vm_area_node+0x8b/0x194
[  433.110652]  [<c016b443>] __get_vm_area_node+0x8b/0x194
[  433.110657]  [<c013ef6c>] __lock_acquire+0xbfc/0xc18
[  433.110662]  [<c016b5c8>] get_vm_area_caller+0x3b/0x40
[  433.110667]  [<c03392c2>] text_poke+0xa8/0x153
[  433.110673]  [<c016ba7d>] vmap+0x1f/0x41
[  433.110677]  [<c03392c2>] text_poke+0xa8/0x153
[  433.110682]  [<c010141c>] sys_execve+0x38/0x4a
[  433.110686]  [<c013c0d6>] get_lock_stats+0x13/0x34
[  433.110691]  [<c0106b93>] alternatives_smp_unlock+0x40/0x4d
[  433.110696]  [<c0106d6a>] alternatives_smp_switch+0x119/0x161
[  433.110700]  [<c033c071>] _etext+0x0/0xf
[  433.110705]  [<c010e9f0>] __cpu_die+0x31/0x63
[  433.110712]  [<c03280fd>] _cpu_down+0x141/0x1ef
[  433.110718]  [<c0143177>] disable_nonboot_cpus+0x47/0xc0
[  433.110723]  [<c014705b>] suspend_devices_and_enter+0x92/0x13f
[  433.110727]  [<c0147243>] enter_state+0x117/0x170
[  433.110732]  [<c014732a>] state_store+0x8e/0xa4
[  433.110736]  [<c014729c>] state_store+0x0/0xa4
[  433.110741]  [<c01e5ef7>] kobj_attr_store+0x18/0x1c
[  433.110746]  [<c01ac140>] sysfs_write_file+0xb4/0xe1
[  433.110751]  [<c01ac08c>] sysfs_write_file+0x0/0xe1
[  433.110755]  [<c01767dd>] vfs_write+0x83/0xf6
[  433.110760]  [<c0176d01>] sys_write+0x3c/0x63
[  433.110765]  [<c0102ddf>] sysenter_past_esp+0x78/0xd1
[  433.110771]  =======================
[  433.141990] CPU0 attaching NULL sched-domain.
[  433.143290] CPU1 is down


Some time this PC won't wake up if it suspended (S3)  with firefox
started. This time i wonted to find why, so may bit this is the reason.

--=-mJzkJ9JkChdf/2ca1v0C
Content-Disposition: attachment; filename=dmesg
Content-Type: text/plain; name=dmesg; charset=UTF-8
Content-Transfer-Encoding: 7bit

[    0.000000] Linux version 2.6.26-rc4-testing-00103-g1beee8d (lex@zwerg) (gcc version 4.2.3 (Ubuntu 4.2.3-2ubuntu7)) #35 SMP PREEMPT Sun Jun 1 11:16:46 CEST 2008
[    0.000000] BIOS-provided physical RAM map:
[    0.000000]  BIOS-e820: 0000000000000000 - 000000000009fc00 (usable)
[    0.000000]  BIOS-e820: 000000000009fc00 - 00000000000a0000 (reserved)
[    0.000000]  BIOS-e820: 00000000000e4000 - 0000000000100000 (reserved)
[    0.000000]  BIOS-e820: 0000000000100000 - 000000007f790000 (usable)
[    0.000000]  BIOS-e820: 000000007f790000 - 000000007f79e000 (ACPI data)
[    0.000000]  BIOS-e820: 000000007f79e000 - 000000007f7e0000 (ACPI NVS)
[    0.000000]  BIOS-e820: 000000007f7e0000 - 000000007f800000 (reserved)
[    0.000000]  BIOS-e820: 00000000ffb80000 - 0000000100000000 (reserved)
[    0.000000] x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106
[    0.000000] 1143MB HIGHMEM available.
[    0.000000] 896MB LOWMEM available.
[    0.000000] found SMP MP-table at [c00ff780] 000ff780
[    0.000000] Entering add_active_range(0, 0, 522128) 0 entries of 256 used
[    0.000000] Zone PFN ranges:
[    0.000000]   DMA             0 ->     4096
[    0.000000]   Normal       4096 ->   229376
[    0.000000]   HighMem    229376 ->   522128
[    0.000000] Movable zone start PFN for each node
[    0.000000] early_node_map[1] active PFN ranges
[    0.000000]     0:        0 ->   522128
[    0.000000] On node 0 totalpages: 522128
[    0.000000]   DMA zone: 32 pages used for memmap
[    0.000000]   DMA zone: 0 pages reserved
[    0.000000]   DMA zone: 4064 pages, LIFO batch:0
[    0.000000]   Normal zone: 1760 pages used for memmap
[    0.000000]   Normal zone: 223520 pages, LIFO batch:31
[    0.000000]   HighMem zone: 2288 pages used for memmap
[    0.000000]   HighMem zone: 290464 pages, LIFO batch:31
[    0.000000]   Movable zone: 0 pages used for memmap
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
[    0.000000] ACPI: PM-Timer IO Port: 0x808
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] ACPI: LAPIC (acpi_id[0x01] lapic_id[0x00] enabled)
[    0.000000] BIOS bug, APIC version is 0 for CPU#0! fixing up to 0x10. (tell your hw vendor)
[    0.000000] ACPI: LAPIC (acpi_id[0x02] lapic_id[0x01] enabled)
[    0.000000] BIOS bug, APIC version is 0 for CPU#0! fixing up to 0x10. (tell your hw vendor)
[    0.000000] ACPI: LAPIC (acpi_id[0x03] lapic_id[0x82] disabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x04] lapic_id[0x83] disabled)
[    0.000000] ACPI: IOAPIC (id[0x02] address[0xfec00000] gsi_base[0])
[    0.000000] IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI 0-23
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.000000] ACPI: IRQ0 used by override.
[    0.000000] ACPI: IRQ2 used by override.
[    0.000000] ACPI: IRQ9 used by override.
[    0.000000] Enabling APIC mode:  Flat.  Using 1 I/O APICs
[    0.000000] ACPI: HPET id: 0x8086a201 base: 0xfed00000
[    0.000000] Using ACPI (MADT) for SMP configuration information
[    0.000000] Allocating PCI resources starting at 80000000 (gap: 7f800000:80380000)
[    0.000000] PM: Registered nosave memory: 000000000009f000 - 00000000000a0000
[    0.000000] PM: Registered nosave memory: 00000000000a0000 - 00000000000e4000
[    0.000000] PM: Registered nosave memory: 00000000000e4000 - 0000000000100000
[    0.000000] SMP: Allowing 2 CPUs, 0 hotplug CPUs
[    0.000000] PERCPU: Allocating 335620 bytes of per cpu data
[    0.000000] NR_CPUS: 2, nr_cpu_ids: 2
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 518048
[    0.000000] Kernel command line: root=/dev/sda2 acpi_sleep=s3_bios,s3_mode ro
[    0.000000] mapped APIC to ffffb000 (fee00000)
[    0.000000] mapped IOAPIC to ffffa000 (fec00000)
[    0.000000] Enabling fast FPU save and restore... done.
[    0.000000] Enabling unmasked SIMD FPU exception support... done.
[    0.000000] Initializing CPU#0
[    0.000000] Preemptible RCU implementation.
[    0.000000] PID hash table entries: 4096 (order: 12, 16384 bytes)
[    0.000000] Detected 3200.521 MHz processor.
[    0.000999] Console: colour VGA+ 80x25
[    0.000999] console [tty0] enabled
[    0.000999] Lock dependency validator: Copyright (c) 2006 Red Hat, Inc., Ingo Molnar
[    0.000999] ... MAX_LOCKDEP_SUBCLASSES:    8
[    0.000999] ... MAX_LOCK_DEPTH:          48
[    0.000999] ... MAX_LOCKDEP_KEYS:        2048
[    0.000999] ... CLASSHASH_SIZE:           1024
[    0.000999] ... MAX_LOCKDEP_ENTRIES:     8192
[    0.000999] ... MAX_LOCKDEP_CHAINS:      16384
[    0.000999] ... CHAINHASH_SIZE:          8192
[    0.000999]  memory used by lock dependency info: 1024 kB
[    0.000999]  per task-struct memory footprint: 2688 bytes
[    0.000999] ------------------------
[    0.000999] | Locking API testsuite:
[    0.000999] ----------------------------------------------------------------------------
[    0.000999]                                  | spin |wlock |rlock |mutex | wsem | rsem |
[    0.000999]   --------------------------------------------------------------------------
[    0.000999]                      A-A deadlock:  ok  |  ok  |  ok  |  ok  |  ok  |  ok  |
[    0.000999]                  A-B-B-A deadlock:  ok  |  ok  |  ok  |  ok  |  ok  |  ok  |
[    0.000999]              A-B-B-C-C-A deadlock:  ok  |  ok  |  ok  |  ok  |  ok  |  ok  |
[    0.000999]              A-B-C-A-B-C deadlock:  ok  |  ok  |  ok  |  ok  |  ok  |  ok  |
[    0.000999]          A-B-B-C-C-D-D-A deadlock:  ok  |  ok  |  ok  |  ok  |  ok  |  ok  |
[    0.000999]          A-B-C-D-B-D-D-A deadlock:  ok  |  ok  |  ok  |  ok  |  ok  |  ok  |
[    0.000999]          A-B-C-D-B-C-D-A deadlock:  ok  |  ok  |  ok  |  ok  |  ok  |  ok  |
[    0.000999]                     double unlock:  ok  |  ok  |  ok  |  ok  |  ok  |  ok  |
[    0.000999]                   initialize held:  ok  |  ok  |  ok  |  ok  |  ok  |  ok  |
[    0.000999]                  bad unlock order:  ok  |  ok  |  ok  |  ok  |  ok  |  ok  |
[    0.000999]   --------------------------------------------------------------------------
[    0.000999]               recursive read-lock:             |  ok  |             |  ok  |
[    0.000999]            recursive read-lock #2:             |  ok  |             |  ok  |
[    0.000999]             mixed read-write-lock:             |  ok  |             |  ok  |
[    0.000999]             mixed write-read-lock:             |  ok  |             |  ok  |
[    0.000999]   --------------------------------------------------------------------------
[    0.000999]      hard-irqs-on + irq-safe-A/12:  ok  |  ok  |  ok  |
[    0.000999]      soft-irqs-on + irq-safe-A/12:  ok  |  ok  |  ok  |
[    0.000999]      hard-irqs-on + irq-safe-A/21:  ok  |  ok  |  ok  |
[    0.000999]      soft-irqs-on + irq-safe-A/21:  ok  |  ok  |  ok  |
[    0.000999]        sirq-safe-A => hirqs-on/12:  ok  |  ok  |  ok  |
[    0.000999]        sirq-safe-A => hirqs-on/21:  ok  |  ok  |  ok  |
[    0.000999]          hard-safe-A + irqs-on/12:  ok  |  ok  |  ok  |
[    0.000999]          soft-safe-A + irqs-on/12:  ok  |  ok  |  ok  |
[    0.000999]          hard-safe-A + irqs-on/21:  ok  |  ok  |  ok  |
[    0.000999]          soft-safe-A + irqs-on/21:  ok  |  ok  |  ok  |
[    0.000999]     hard-safe-A + unsafe-B #1/123:  ok  |  ok  |  ok  |
[    0.000999]     soft-safe-A + unsafe-B #1/123:  ok  |  ok  |  ok  |
[    0.000999]     hard-safe-A + unsafe-B #1/132:  ok  |  ok  |  ok  |
[    0.000999]     soft-safe-A + unsafe-B #1/132:  ok  |  ok  |  ok  |
[    0.000999]     hard-safe-A + unsafe-B #1/213:  ok  |  ok  |  ok  |
[    0.000999]     soft-safe-A + unsafe-B #1/213:  ok  |  ok  |  ok  |
[    0.000999]     hard-safe-A + unsafe-B #1/231:  ok  |  ok  |  ok  |
[    0.000999]     soft-safe-A + unsafe-B #1/231:  ok  |  ok  |  ok  |
[    0.000999]     hard-safe-A + unsafe-B #1/312:  ok  |  ok  |  ok  |
[    0.000999]     soft-safe-A + unsafe-B #1/312:  ok  |  ok  |  ok  |
[    0.000999]     hard-safe-A + unsafe-B #1/321:  ok  |  ok  |  ok  |
[    0.000999]     soft-safe-A + unsafe-B #1/321:  ok  |  ok  |  ok  |
[    0.000999]     hard-safe-A + unsafe-B #2/123:  ok  |  ok  |  ok  |
[    0.000999]     soft-safe-A + unsafe-B #2/123:  ok  |  ok  |  ok  |
[    0.000999]     hard-safe-A + unsafe-B #2/132:  ok  |  ok  |  ok  |
[    0.000999]     soft-safe-A + unsafe-B #2/132:  ok  |  ok  |  ok  |
[    0.000999]     hard-safe-A + unsafe-B #2/213:  ok  |  ok  |  ok  |
[    0.000999]     soft-safe-A + unsafe-B #2/213:  ok  |  ok  |  ok  |
[    0.000999]     hard-safe-A + unsafe-B #2/231:  ok  |  ok  |  ok  |
[    0.000999]     soft-safe-A + unsafe-B #2/231:  ok  |  ok  |  ok  |
[    0.000999]     hard-safe-A + unsafe-B #2/312:  ok  |  ok  |  ok  |
[    0.000999]     soft-safe-A + unsafe-B #2/312:  ok  |  ok  |  ok  |
[    0.000999]     hard-safe-A + unsafe-B #2/321:  ok  |  ok  |  ok  |
[    0.000999]     soft-safe-A + unsafe-B #2/321:  ok  |  ok  |  ok  |
[    0.000999]       hard-irq lock-inversion/123:  ok  |  ok  |  ok  |
[    0.000999]       soft-irq lock-inversion/123:  ok  |  ok  |  ok  |
[    0.000999]       hard-irq lock-inversion/132:  ok  |  ok  |  ok  |
[    0.000999]       soft-irq lock-inversion/132:  ok  |  ok  |  ok  |
[    0.000999]       hard-irq lock-inversion/213:  ok  |  ok  |  ok  |
[    0.000999]       soft-irq lock-inversion/213:  ok  |  ok  |  ok  |
[    0.000999]       hard-irq lock-inversion/231:  ok  |  ok  |  ok  |
[    0.000999]       soft-irq lock-inversion/231:  ok  |  ok  |  ok  |
[    0.000999]       hard-irq lock-inversion/312:  ok  |  ok  |  ok  |
[    0.000999]       soft-irq lock-inversion/312:  ok  |  ok  |  ok  |
[    0.000999]       hard-irq lock-inversion/321:  ok  |  ok  |  ok  |
[    0.000999]       soft-irq lock-inversion/321:  ok  |  ok  |  ok  |
[    0.000999]       hard-irq read-recursion/123:  ok  |
[    0.000999]       soft-irq read-recursion/123:  ok  |
[    0.000999]       hard-irq read-recursion/132:  ok  |
[    0.000999]       soft-irq read-recursion/132:  ok  |
[    0.000999]       hard-irq read-recursion/213:  ok  |
[    0.000999]       soft-irq read-recursion/213:  ok  |
[    0.000999]       hard-irq read-recursion/231:  ok  |
[    0.000999]       soft-irq read-recursion/231:  ok  |
[    0.000999]       hard-irq read-recursion/312:  ok  |
[    0.000999]       soft-irq read-recursion/312:  ok  |
[    0.000999]       hard-irq read-recursion/321:  ok  |
[    0.000999]       soft-irq read-recursion/321:  ok  |
[    0.000999] -------------------------------------------------------
[    0.000999] Good, all 218 testcases passed! |
[    0.000999] ---------------------------------
[    0.000999] Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)
[    0.000999] Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
[    0.000999] Memory: 2062160k/2088512k available (2288k kernel code, 25252k reserved, 1313k data, 512k init, 1171008k highmem)
[    0.000999] virtual kernel memory layout:
[    0.000999]     fixmap  : 0xfff7e000 - 0xfffff000   ( 516 kB)
[    0.000999]     pkmap   : 0xff800000 - 0xffc00000   (4096 kB)
[    0.000999]     vmalloc : 0xf8800000 - 0xff7fe000   ( 111 MB)
[    0.000999]     lowmem  : 0xc0000000 - 0xf8000000   ( 896 MB)
[    0.000999]       .init : 0xc048b000 - 0xc050b000   ( 512 kB)
[    0.000999]       .data : 0xc033c071 - 0xc04845a8   (1313 kB)
[    0.000999]       .text : 0xc0100000 - 0xc033c071   (2288 kB)
[    0.000999] Checking if this processor honours the WP bit even in supervisor mode...Ok.
[    0.000999] CPA: page pool initialized 32 of 32 pages preallocated
[    0.000999] hpet clockevent registered
[    0.060739] Calibrating delay using timer specific routine.. 6410.85 BogoMIPS (lpj=3205429)
[    0.060990] Security Framework initialized
[    0.060990] Capability LSM initialized
[    0.060990] Failure registering Root Plug module with the kernel
[    0.060990] Failure registering Root Plug  module with primary security module.
[    0.060990] Mount-cache hash table entries: 512
[    0.062498] CPU: Trace cache: 12K uops, L1 D cache: 16K
[    0.062565] CPU: L2 cache: 2048K
[    0.062605] CPU: Physical Processor ID: 0
[    0.062647] Intel machine check architecture supported.
[    0.062693] Intel machine check reporting enabled on CPU#0.
[    0.062738] CPU0: Intel P4/Xeon Extended MCE MSRs (24) available
[    0.062785] CPU0: Thermal monitoring enabled
[    0.062827] using mwait in idle threads.
[    0.062890] Checking 'hlt' instruction... OK.
[    0.068016] ACPI: Core revision 20080321
[    0.087017] Parsing all Control Methods:
[    0.088134] Table [DSDT](id 0001) - 676 Objects with 54 Devices 198 Methods 25 Regions
[    0.088223]  tbxface-0598 [02] tb_load_namespace     : ACPI Tables successfully acquired
[    0.089986] evxfevnt-0091 [02] enable                : Transition to ACPI mode successful
[    0.090276] ENABLING IO-APIC IRQs
[    0.090552] ..TIMER: vector=0x31 apic1=0 pin1=2 apic2=-1 pin2=-1
[    0.100578] CPU0: Intel(R) Pentium(R) D CPU 3.20GHz stepping 04
[    0.101984] lockdep: fixing up alternatives.
[    0.101984] Booting processor 1/1 ip 6000
[    0.112982] Initializing CPU#1
[    0.112982] Calibrating delay using timer specific routine.. 8960.85 BogoMIPS (lpj=4480426)
[    0.112982] CPU: Trace cache: 12K uops, L1 D cache: 16K
[    0.112982] CPU: L2 cache: 2048K
[    0.112982] CPU: Physical Processor ID: 0
[    0.112982] Intel machine check architecture supported.
[    0.112982] Intel machine check reporting enabled on CPU#1.
[    0.112982] CPU1: Intel P4/Xeon Extended MCE MSRs (24) available
[    0.112982] CPU1: Thermal monitoring enabled
[    0.112982] x86 PAT enabled: cpu 1, old 0x7040600070406, new 0x7010600070106
[    0.174543] CPU1: Intel(R) Pentium(R) D CPU 3.20GHz stepping 04
[    0.174973] checking TSC synchronization [CPU#0 -> CPU#1]:
[    0.174979] Measured 368 cycles TSC warp between CPUs, turning off TSC clock.
[    0.174979] Marking TSC unstable due to: check_tsc_sync_source failed.
[    0.175072] Brought up 2 CPUs
[    0.175118] Total of 2 processors activated (15371.71 BogoMIPS).
[    0.175997] CPU0 attaching sched-domain:
[    0.176002]  domain 0: span 0-1
[    0.176005]   groups: 0 1
[    0.176023] CPU1 attaching sched-domain:
[    0.176027]  domain 0: span 0-1
[    0.176029]   groups: 1 0
[    0.177972] net_namespace: 708 bytes
[    0.177972] Booting paravirtualized kernel on bare hardware
[    0.178972] Time:  9:25:05  Date: 06/01/08
[    0.179334] NET: Registered protocol family 16
[    0.180972] No dock devices found.
[    0.181972] ACPI: bus type pci registered
[    0.182972] PCI: Found Intel Corporation 945G/GZ/P/PL Express Memory Controller Hub with MMCONFIG support.
[    0.182972] PCI: Using MMCONFIG for extended config space
[    0.182972] PCI: Using configuration type 1 for base access
[    0.182972] Setting up standard PCI resources
[    0.206072] evgpeblk-0956 [04] ev_create_gpe_block   : GPE 00 to 1F [_GPE] 4 regs on int 0x9
[    0.206606] ACPI: EC: Look up EC in DSDT
[    0.221584] Completing Region/Field/Buffer/Package initialization:................................................................................................................
[    0.237976] Initialized 20/25 Regions 23/23 Fields 36/36 Buffers 33/34 Packages (685 nodes)
[    0.238065] Initializing Device/Processor/Thermal objects by executing _INI methods:.
[    0.238274] Executed 1 _INI methods requiring 0 _STA executions (examined 60 objects)
[    0.247962] evgpeblk-1052 [03] ev_initialize_gpe_bloc: Found 11 Wake, Enabled 0 Runtime GPEs in this block
[    0.248165] ACPI: Interpreter enabled
[    0.248165] ACPI: (supports S0 S1 S3 S4 S5)
[    0.248441] ACPI: Using IOAPIC for interrupt routing
[    0.285410] ACPI: PCI Root Bridge [PCI0] (0000:00)
[    0.287727] pci 0000:00:1f.0: quirk: region 0800-087f claimed by ICH6 ACPI/GPIO/TCO
[    0.287790] pci 0000:00:1f.0: quirk: region 0480-04bf claimed by ICH6 GPIO
[    0.289159] PCI: Transparent bridge - 0000:00:1e.0
[    0.289159] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0._PRT]
[    0.290519] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.P0P3._PRT]
[    0.291158] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.P0P4._PRT]
[    0.291609] ACPI: PCI Interrupt Routing Table [\_SB_.PCI0.P0P5._PRT]
[    0.313126] ACPI: PCI Interrupt Link [LNKA] (IRQs 3 4 5 7 10 *11 12 14 15)
[    0.313796] ACPI: PCI Interrupt Link [LNKB] (IRQs 3 4 5 7 *10 11 12 14 15)
[    0.314126] ACPI: PCI Interrupt Link [LNKC] (IRQs 3 4 5 7 10 11 12 *14 15)
[    0.315110] ACPI: PCI Interrupt Link [LNKD] (IRQs 3 4 *5 7 10 11 12 14 15)
[    0.315777] ACPI: PCI Interrupt Link [LNKE] (IRQs 3 4 5 7 10 11 12 14 *15)
[    0.316398] ACPI: PCI Interrupt Link [LNKF] (IRQs 3 4 5 7 10 11 12 14 15) *0, disabled.
[    0.317181] ACPI: PCI Interrupt Link [LNKG] (IRQs 3 4 5 7 10 11 12 14 15) *0, disabled.
[    0.318087] ACPI: PCI Interrupt Link [LNKH] (IRQs 3 4 5 7 10 11 12 14 15) *0, disabled.
[    0.319577] ACPI Warning (tbutils-0217): Incorrect checksum in table [OEMB] - 70, should be 6F [20080321]
[    0.320577] ACPI: WMI: Mapper loaded
[    0.320577] Linux Plug and Play Support v0.97 (c) Adam Belay
[    0.320577] pnp: PnP ACPI init
[    0.320577] ACPI: bus type pnp registered
[    0.337272] pnp: PnP ACPI: found 15 devices
[    0.337272] ACPI: ACPI bus type pnp unregistered
[    0.338272] SCSI subsystem initialized
[    0.339272] libata version 3.00 loaded.
[    0.339272] usbcore: registered new interface driver usbfs
[    0.340271] usbcore: registered new interface driver hub
[    0.340272] usbcore: registered new device driver usb
[    0.342345] PCI: Using ACPI for IRQ routing
[    0.348047] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0
[    0.348180] hpet0: 3 64-bit timers, 14318180 Hz
[    0.349694] Switched to high resolution mode on CPU 0
[    0.350650] Switched to high resolution mode on CPU 1
[    0.354807] system 00:01: iomem range 0xfed13000-0xfed19fff has been reserved
[    0.354892] system 00:06: ioport range 0x290-0x297 has been reserved
[    0.355618] system 00:07: ioport range 0x4d0-0x4d1 has been reserved
[    0.355667] system 00:07: ioport range 0x800-0x87f has been reserved
[    0.355716] system 00:07: ioport range 0x400-0x41f has been reserved
[    0.355764] system 00:07: ioport range 0x480-0x4bf has been reserved
[    0.355814] system 00:07: iomem range 0xfed1c000-0xfed1ffff has been reserved
[    0.355863] system 00:07: iomem range 0xfed20000-0xfed8ffff has been reserved
[    0.355912] system 00:07: iomem range 0xffb00000-0xffbfffff could not be reserved
[    0.355970] system 00:07: iomem range 0xfff00000-0xffffffff could not be reserved
[    0.356054] system 00:0a: iomem range 0xfec00000-0xfec00fff has been reserved
[    0.356089] system 00:0a: iomem range 0xfee00000-0xfee00fff has been reserved
[    0.356089] system 00:0c: iomem range 0xe0000000-0xefffffff could not be reserved
[    0.356089] system 00:0d: iomem range 0xe0000000-0xefffffff could not be reserved
[    0.356182] system 00:0e: iomem range 0x0-0x9ffff could not be reserved
[    0.356231] system 00:0e: iomem range 0xc0000-0xdffff could not be reserved
[    0.356279] system 00:0e: iomem range 0xe0000-0xfffff could not be reserved
[    0.356327] system 00:0e: iomem range 0x100000-0x7f7fffff could not be reserved
[    0.356384] system 00:0e: iomem range 0x0-0xffffffffffffffff could not be reserved
[    0.391371] PCI: Bridge: 0000:00:1c.0
[    0.391371]   IO window: e000-efff
[    0.391371]   MEM window: disabled.
[    0.391371]   PREFETCH window: disabled.
[    0.391371] PCI: Bridge: 0000:00:1c.1
[    0.391371]   IO window: d000-dfff
[    0.391371]   MEM window: 0xcff00000-0xcfffffff
[    0.391371]   PREFETCH window: disabled.
[    0.391371] PCI: Bridge: 0000:00:1e.0
[    0.391371]   IO window: c000-cfff
[    0.391371]   MEM window: disabled.
[    0.391371]   PREFETCH window: disabled.
[    0.391371] ACPI: PCI Interrupt 0000:00:1c.0[A] -> GSI 16 (level, low) -> IRQ 16
[    0.391435] PCI: Setting latency timer of device 0000:00:1c.0 to 64
[    0.391483] ACPI: PCI Interrupt 0000:00:1c.1[B] -> GSI 17 (level, low) -> IRQ 17
[    0.391566] PCI: Setting latency timer of device 0000:00:1c.1 to 64
[    0.391590] PCI: Setting latency timer of device 0000:00:1e.0 to 64
[    0.392377] NET: Registered protocol family 2
[    0.410376] IP route cache hash table entries: 32768 (order: 5, 131072 bytes)
[    0.411375] TCP established hash table entries: 131072 (order: 8, 1048576 bytes)
[    0.413371] TCP bind hash table entries: 65536 (order: 9, 2359296 bytes)
[    0.422370] TCP: Hash tables configured (established 131072 bind 65536)
[    0.422370] TCP reno registered
[    0.428377] NET: Registered protocol family 1
[    0.429371] Machine check exception polling timer started.
[    0.436371] Initializing RT-Tester: OK
[    0.437402] audit: initializing netlink socket (disabled)
[    0.437402] type=2000 audit(1212312304.433:1): initialized
[    0.440881] highmem bounce pool size: 64 pages
[    0.441882] VFS: Disk quotas dquot_6.5.1
[    0.441882] Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
[    0.443156] msgmni has been set to 1741 for ipc namespace c045be9c
[    0.444153] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 254)
[    0.444153] io scheduler noop registered
[    0.444153] io scheduler cfq registered (default)
[    0.444153] pci 0000:00:02.0: Boot video device
[    0.445239] PCI: Setting latency timer of device 0000:00:1c.0 to 64
[    0.445239] assign_interrupt_mode Found MSI capability
[    0.445239] Allocate Port Service[0000:00:1c.0:pcie00]
[    0.445239] Allocate Port Service[0000:00:1c.0:pcie02]
[    0.446179] Allocate Port Service[0000:00:1c.0:pcie03]
[    0.446179] PCI: Setting latency timer of device 0000:00:1c.1 to 64
[    0.446179] assign_interrupt_mode Found MSI capability
[    0.446179] Allocate Port Service[0000:00:1c.1:pcie00]
[    0.447180] Allocate Port Service[0000:00:1c.1:pcie03]
[    0.448352] input: Power Button (FF) as /class/input/input0
[    0.448352] ACPI: Power Button (FF) [PWRF]
[    0.449332] input: Power Button (CM) as /class/input/input1
[    0.449332] ACPI: Power Button (CM) [PWRB]
[    0.451700] ACPI: SSDT 7F79E0B0, 0208 (r1    AMI   CPU1PM        1 INTL 20060113)
[    0.452687] Parsing all Control Methods:
[    0.452687] Table [SSDT](id 00EE) - 0 Objects with 0 Devices 0 Methods 0 Regions
[    0.453701] ACPI: ACPI0007:00 is registered as cooling_device0
[    0.453701] ACPI: Processor [CPU1] (supports 8 throttling states)
[    0.454907] ACPI: SSDT 7F79E2C0, 013A (r1    AMI   CPU2PM        1 INTL 20060113)
[    0.455689] Parsing all Control Methods:
[    0.455689] Table [SSDT](id 00F1) - 0 Objects with 0 Devices 0 Methods 0 Regions
[    0.456931] ACPI: ACPI0007:01 is registered as cooling_device1
[    0.457000] ACPI: Processor [CPU2] (supports 8 throttling states)
[    0.629929] Real Time Clock Driver v1.12ac
[    0.630132] hpet_resources: 0xfed00000 is busy
[    0.630936] Linux agpgart interface v0.103
[    0.630936] agpgart: Detected an Intel 945G Chipset.
[    0.631912] agpgart: Detected 7932K stolen memory.
[    0.647908] agpgart: AGP aperture is 256M @ 0xd0000000
[    0.648932] [drm] Initialized drm 1.1.0 20060810
[    0.648932] ACPI: PCI Interrupt 0000:00:02.0[A] -> GSI 16 (level, low) -> IRQ 16
[    0.648932] PCI: Setting latency timer of device 0000:00:02.0 to 64
[    0.649918] [drm] Initialized i915 1.6.0 20060119 on minor 0
[    0.650154] Serial: 8250/16550 driver $Revision: 1.90 $ 4 ports, IRQ sharing disabled
[    0.651282] serial8250: ttyS2 at I/O 0x3e8 (irq = 4) is a 16550A
[    0.653361] 00:0b: ttyS2 at I/O 0x3e8 (irq = 4) is a 16550A
[    0.664473] brd: module loaded
[    0.669514] loop: module loaded
[    0.669514] e1000e: Intel(R) PRO/1000 Network Driver - 0.3.3.3-k2
[    0.669514] e1000e: Copyright (c) 1999-2008 Intel Corporation.
[    0.669514] ACPI: PCI Interrupt 0000:02:00.0[A] -> GSI 17 (level, low) -> IRQ 17
[    0.669514] PCI: Setting latency timer of device 0000:02:00.0 to 64
[    0.759452] eth0: (PCI Express:2.5GB/s:Width x1) 00:13:d4:63:0f:9e
[    0.759452] eth0: Intel(R) PRO/1000 Network Connection
[    0.759452] eth0: MAC: 2, PHY: 2, PBA No: ffffff-0ff
[    0.760453] Driver 'sd' needs updating - please use bus_type methods
[    0.760537] Driver 'sr' needs updating - please use bus_type methods
[    0.762531] ata_piix 0000:00:1f.1: version 2.12
[    0.762531] ACPI: PCI Interrupt 0000:00:1f.1[A] -> GSI 18 (level, low) -> IRQ 18
[    0.762531] PCI: Setting latency timer of device 0000:00:1f.1 to 64
[    0.762531] scsi0 : ata_piix
[    0.763521] scsi1 : ata_piix
[    0.774870] ata1: PATA max UDMA/100 cmd 0xa000 ctl 0x9800 bmdma 0x8800 irq 18
[    0.774870] ata2: PATA max UDMA/100 cmd 0x9400 ctl 0x9000 bmdma 0x8808 irq 18
[    0.943201] ata1.01: ATAPI: HP      DVD Writer 840b, FF66, max UDMA/33
[    0.949440] ata1.01: configured for UDMA/33
[    1.113402] scsi 0:0:1:0: CD-ROM            HP       DVD Writer 840b  FF66 PQ: 0 ANSI: 5
[    1.180982] sr0: scsi3-mmc drive: 48x/48x writer dvd-ram cd/rw xa/form2 cdda tray
[    1.180982] Uniform CD-ROM driver Revision: 3.20
[    1.182960] sr 0:0:1:0: Attached scsi CD-ROM sr0
[    1.182960] sr 0:0:1:0: Attached scsi generic sg0 type 5
[    1.184006] ACPI: PCI Interrupt 0000:00:1f.2[B] -> GSI 17 (level, low) -> IRQ 17
[    1.184006] ata_piix 0000:00:1f.2: MAP [ P0 P2 P1 P3 ]
[    1.184289] PCI: Setting latency timer of device 0000:00:1f.2 to 64
[    1.184897] scsi2 : ata_piix
[    1.184976] scsi3 : ata_piix
[    1.185955] ata3: SATA max UDMA/133 cmd 0xb800 ctl 0xb400 bmdma 0xa400 irq 17
[    1.185955] ata4: SATA max UDMA/133 cmd 0xb000 ctl 0xa800 bmdma 0xa408 irq 17
[    1.340953] ata3.00: ATA-6: ST380817AS, 3.42, max UDMA/133
[    1.340953] ata3.00: 156301488 sectors, multi 16: LBA48 NCQ (not used)
[    1.346953] ata3.00: configured for UDMA/133
[    1.507990] scsi 2:0:0:0: Direct-Access     ATA      ST380817AS       3.42 PQ: 0 ANSI: 5
[    1.508697] sd 2:0:0:0: [sda] 156301488 512-byte hardware sectors (80026 MB)
[    1.508697] sd 2:0:0:0: [sda] Write Protect is off
[    1.508697] sd 2:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    1.508697] sd 2:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    1.509435] sd 2:0:0:0: [sda] 156301488 512-byte hardware sectors (80026 MB)
[    1.509545] sd 2:0:0:0: [sda] Write Protect is off
[    1.509588] sd 2:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    1.509716] sd 2:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    1.509807]  sda: sda1 sda2 sda4 < sda5 sda6 >
[    1.547755] sd 2:0:0:0: [sda] Attached SCSI disk
[    1.548742] sd 2:0:0:0: Attached scsi generic sg1 type 0
[    1.549745] ACPI: PCI Interrupt 0000:00:1d.7[A] -> GSI 20 (level, low) -> IRQ 20
[    1.549745] PCI: Setting latency timer of device 0000:00:1d.7 to 64
[    1.549745] ehci_hcd 0000:00:1d.7: EHCI Host Controller
[    1.551056] ehci_hcd 0000:00:1d.7: new USB bus registered, assigned bus number 1
[    1.555042] ehci_hcd 0000:00:1d.7: debug port 1
[    1.555042] PCI: cache line size of 128 is not supported by device 0000:00:1d.7
[    1.555042] ehci_hcd 0000:00:1d.7: irq 20, io mem 0xcfeffc00
[    1.564078] ehci_hcd 0000:00:1d.7: USB 2.0 started, EHCI 1.00, driver 10 Dec 2004
[    1.565052] usb usb1: configuration #1 chosen from 1 choice
[    1.566054] hub 1-0:1.0: USB hub found
[    1.566054] hub 1-0:1.0: 8 ports detected
[    1.668079] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002
[    1.668079] usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.668079] usb usb1: Product: EHCI Host Controller
[    1.668079] usb usb1: Manufacturer: Linux 2.6.26-rc4-testing-00103-g1beee8d ehci_hcd
[    1.668079] usb usb1: SerialNumber: 0000:00:1d.7
[    1.668670] USB Universal Host Controller Interface driver v3.0
[    1.668833] ACPI: PCI Interrupt 0000:00:1d.0[A] -> GSI 20 (level, low) -> IRQ 20
[    1.668934] PCI: Setting latency timer of device 0000:00:1d.0 to 64
[    1.668941] uhci_hcd 0000:00:1d.0: UHCI Host Controller
[    1.669360] uhci_hcd 0000:00:1d.0: new USB bus registered, assigned bus number 2
[    1.669472] uhci_hcd 0000:00:1d.0: irq 20, io base 0x00007400
[    1.670336] usb usb2: configuration #1 chosen from 1 choice
[    1.670395] hub 2-0:1.0: USB hub found
[    1.670510] hub 2-0:1.0: 2 ports detected
[    1.773353] usb usb2: New USB device found, idVendor=1d6b, idProduct=0001
[    1.773353] usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.773353] usb usb2: Product: UHCI Host Controller
[    1.773353] usb usb2: Manufacturer: Linux 2.6.26-rc4-testing-00103-g1beee8d uhci_hcd
[    1.773353] usb usb2: SerialNumber: 0000:00:1d.0
[    1.773353] ACPI: PCI Interrupt 0000:00:1d.1[B] -> GSI 17 (level, low) -> IRQ 17
[    1.773353] PCI: Setting latency timer of device 0000:00:1d.1 to 64
[    1.773353] uhci_hcd 0000:00:1d.1: UHCI Host Controller
[    1.773353] uhci_hcd 0000:00:1d.1: new USB bus registered, assigned bus number 3
[    1.773353] uhci_hcd 0000:00:1d.1: irq 17, io base 0x00007800
[    1.774344] usb usb3: configuration #1 chosen from 1 choice
[    1.774344] hub 3-0:1.0: USB hub found
[    1.774428] hub 3-0:1.0: 2 ports detected
[    1.873392] usb 1-2: new high speed USB device using ehci_hcd and address 2
[    1.876333] usb usb3: New USB device found, idVendor=1d6b, idProduct=0001
[    1.876394] usb usb3: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.876449] usb usb3: Product: UHCI Host Controller
[    1.876490] usb usb3: Manufacturer: Linux 2.6.26-rc4-testing-00103-g1beee8d uhci_hcd
[    1.876545] usb usb3: SerialNumber: 0000:00:1d.1
[    1.876638] ACPI: PCI Interrupt 0000:00:1d.2[C] -> GSI 18 (level, low) -> IRQ 18
[    1.876731] PCI: Setting latency timer of device 0000:00:1d.2 to 64
[    1.876737] uhci_hcd 0000:00:1d.2: UHCI Host Controller
[    1.877363] uhci_hcd 0000:00:1d.2: new USB bus registered, assigned bus number 4
[    1.877363] uhci_hcd 0000:00:1d.2: irq 18, io base 0x00008000
[    1.878336] usb usb4: configuration #1 chosen from 1 choice
[    1.878336] hub 4-0:1.0: USB hub found
[    1.878336] hub 4-0:1.0: 2 ports detected
[    1.979328] usb usb4: New USB device found, idVendor=1d6b, idProduct=0001
[    1.979328] usb usb4: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.979399] usb usb4: Product: UHCI Host Controller
[    1.979443] usb usb4: Manufacturer: Linux 2.6.26-rc4-testing-00103-g1beee8d uhci_hcd
[    1.979498] usb usb4: SerialNumber: 0000:00:1d.2
[    1.979660] ACPI: PCI Interrupt 0000:00:1d.3[D] -> GSI 19 (level, low) -> IRQ 19
[    1.979754] PCI: Setting latency timer of device 0000:00:1d.3 to 64
[    1.979760] uhci_hcd 0000:00:1d.3: UHCI Host Controller
[    1.980463] uhci_hcd 0000:00:1d.3: new USB bus registered, assigned bus number 5
[    1.980463] uhci_hcd 0000:00:1d.3: irq 19, io base 0x00008400
[    1.981408] usb usb5: configuration #1 chosen from 1 choice
[    1.981408] hub 5-0:1.0: USB hub found
[    1.981408] hub 5-0:1.0: 2 ports detected
[    1.993434] usb 1-2: configuration #1 chosen from 1 choice
[    2.000427] usb 1-2: New USB device found, idVendor=13fe, idProduct=1f00
[    2.000427] usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[    2.000427] usb 1-2: Product: DataTraveler 2.0
[    2.000427] usb 1-2: Manufacturer: Kingston
[    2.000427] usb 1-2: SerialNumber: 5B851100027C
[    2.082403] usb usb5: New USB device found, idVendor=1d6b, idProduct=0001
[    2.082403] usb usb5: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    2.082471] usb usb5: Product: UHCI Host Controller
[    2.082514] usb usb5: Manufacturer: Linux 2.6.26-rc4-testing-00103-g1beee8d uhci_hcd
[    2.082570] usb usb5: SerialNumber: 0000:00:1d.3
[    2.464450] usb 3-2: new low speed USB device using uhci_hcd and address 2
[    2.602483] usb 3-2: configuration #1 chosen from 1 choice
[    2.641507] usb 3-2: New USB device found, idVendor=046d, idProduct=c00e
[    2.641507] usb 3-2: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[    2.641507] usb 3-2: Product: USB-PS/2 Optical Mouse
[    2.641507] usb 3-2: Manufacturer: Logitech
[    2.642489] usbcore: registered new interface driver libusual
[    2.642489] PNP: PS/2 Controller [PNP0303:PS2K] at 0x60,0x64 irq 1
[    2.642548] PNP: PS/2 appears to have AUX port disabled, if this is incorrect please boot with i8042.nopnp
[    2.644258] serio: i8042 KBD port at 0x60,0x64 irq 1
[    2.646024] mice: PS/2 mouse device common for all mice
[    2.646024] i2c /dev entries driver
[    2.647016] ACPI: PCI Interrupt 0000:00:1f.3[B] -> GSI 17 (level, low) -> IRQ 17
[    2.664001] input: AT Translated Set 2 keyboard as /class/input/input2
[    2.669010] w83627ehf: Found W83627EHG chip at 0x290
[    2.669155] w83627ehf w83627ehf.656: VID pins in output mode, CPU VID not available
[    2.671009] cpuidle: using governor ladder
[    2.671009] cpuidle: using governor menu
[    2.671691] Advanced Linux Sound Architecture Driver Version 1.0.16.
[    2.671736] ALSA device list:
[    2.671776]   No soundcards found.
[    2.674248] TCP cubic registered
[    2.674291] Using IPI No-Shortcut mode
[    2.675367] PM: Resume from partition /dev/sda6
[    2.675367] PM: Checking hibernation image.
[    2.675367] PM: Resume from disk failed.
[    2.676024]   Magic number: 12:400:423
[    2.698238] kjournald starting.  Commit interval 5 seconds
[    2.697546] EXT3-fs: mounted filesystem with ordered data mode.
[    2.697546] VFS: Mounted root (ext3 filesystem) readonly.
[    2.707651] debug: unmapping init memory c048b000..c050b000
[   12.735669] usbcore: registered new interface driver hiddev
[   12.748929] input: Logitech USB-PS/2 Optical Mouse as /class/input/input3
[   12.769984] input: USB HID v1.10 Mouse [Logitech USB-PS/2 Optical Mouse] on usb-0000:00:1d.1-2
[   12.770180] usbcore: registered new interface driver usbhid
[   12.770232] usbhid: v2.6:USB HID core driver
[   12.799377] ACPI: PCI Interrupt 0000:00:1b.0[A] -> GSI 19 (level, low) -> IRQ 19
[   12.799543] PCI: Setting latency timer of device 0000:00:1b.0 to 64
[   13.114747] fuse init (API version 7.9)
[   13.219949] Adding 1767108k swap on /dev/sda6.  Priority:-1 extents:1 across:1767108k
[   13.471261] EXT3 FS on sda2, internal journal
[   14.379566] kjournald starting.  Commit interval 5 seconds
[   14.362023] EXT3 FS on sda1, internal journal
[   14.362023] EXT3-fs: mounted filesystem with ordered data mode.
[   14.399567] kjournald starting.  Commit interval 5 seconds
[   14.400023] EXT3 FS on sda5, internal journal
[   14.400023] EXT3-fs: mounted filesystem with ordered data mode.
[   14.953949] ip_tables: (C) 2000-2006 Netfilter Core Team
[   17.522658] warning: `avahi-daemon' uses 32-bit capabilities (legacy support in use)
[   17.716739] NET: Registered protocol family 10
[   17.720347] lo: Disabled Privacy Extensions
[   20.794804] NET: Registered protocol family 17
[   24.497779] ADDRCONF(NETDEV_UP): eth0: link is not ready
[   26.283878] eth0: Link is Up 100 Mbps Full Duplex, Flow Control: RX/TX
[   26.283891] eth0: 10/100 speed: disabling TSO
[   26.285022] ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[   30.770668] CPA self-test:
[   30.772520]  4k 52224 large 173 gb 0 x 52397[c0000000-f7fff000] miss 0
[   30.788891]  4k 201728 large 27 gb 0 x 201755[c0000000-f7fff000] miss 0
[   30.798890]  4k 201728 large 27 gb 0 x 201755[c0000000-f7fff000] miss 0
[   30.798890] ok.
[   40.736093] eth0: no IPv6 routers present
[  430.962464] ADDRCONF(NETDEV_UP): eth0: link is not ready
[  432.248643] PM: Syncing filesystems ... done.
[  432.251142] PM: Preparing system for mem sleep
[  432.251642] Freezing user space processes ... (elapsed 0.01 seconds) done.
[  432.264885] Freezing remaining freezable tasks ... (elapsed 0.00 seconds) done.
[  432.265213] PM: Entering mem sleep
[  432.265213] Suspending console(s)
[  432.833658] eth0: Link is Up 100 Mbps Full Duplex, Flow Control: RX/TX
[  432.833662] eth0: 10/100 speed: disabling TSO
[  432.833923] ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[  432.852683] sd 2:0:0:0: [sda] Synchronizing SCSI cache
[  432.853185] sd 2:0:0:0: [sda] Stopping disk
[  432.854825] ACPI: PCI interrupt for device 0000:00:02.0 disabled
[  432.867391] ACPI handle has no context!
[  432.869027] serial 00:0b: disabled
[  432.931736] ACPI: PCI interrupt for device 0000:02:00.0 disabled
[  432.931750] ACPI handle has no context!
[  432.943425] ACPI: PCI interrupt for device 0000:00:1f.2 disabled
[  432.954429] ACPI: PCI interrupt for device 0000:00:1f.1 disabled
[  432.954429] ACPI: PCI interrupt for device 0000:00:1d.7 disabled
[  432.964668] ACPI: PCI interrupt for device 0000:00:1d.3 disabled
[  432.964732] ACPI: PCI interrupt for device 0000:00:1d.2 disabled
[  432.964794] ACPI: PCI interrupt for device 0000:00:1d.1 disabled
[  432.964856] ACPI: PCI interrupt for device 0000:00:1d.0 disabled
[  432.975521] ACPI: PCI interrupt for device 0000:00:1b.0 disabled
[  432.975616] ACPI handle has no context!
[  432.987151] ACPI: Preparing to enter system sleep state S3
[  433.008431] Disabling non-boot CPUs ...
[  433.008624] CPU0 attaching NULL sched-domain.
[  433.008632] CPU1 attaching NULL sched-domain.
[  433.010506] kvm: disabling virtualization on CPU1
[  433.010506] Breaking affinity for irq 1
[  433.010506] Breaking affinity for irq 18
[  433.110530] CPU 1 is now offline
[  433.110533] lockdep: fixing up alternatives.
[  433.110540] SMP alternatives: switching to UP code
[  433.110546] BUG: sleeping function called from invalid context at mm/slab.c:3052
[  433.110550] in_atomic():1, irqs_disabled():0
[  433.110554] 5 locks held by pm-suspend/4783:
[  433.110556]  #0:  (&buffer->mutex){--..}, at: [<c01ac0b0>] sysfs_write_file+0x24/0xe1
[  433.110572]  #1:  (pm_mutex){--..}, at: [<c0147288>] enter_state+0x15c/0x170
[  433.110579]  #2:  (cpu_add_remove_lock){--..}, at: [<c0143138>] disable_nonboot_cpus+0x8/0xc0
[  433.110585]  #3:  (&cpu_hotplug.lock){--..}, at: [<c014308d>] cpu_hotplug_begin+0x17/0x3e
[  433.110590]  #4:  (smp_alt){--..}, at: [<c0106d9c>] alternatives_smp_switch+0x14b/0x161
[  433.110598] Pid: 4783, comm: pm-suspend Not tainted 2.6.26-rc4-testing-00103-g1beee8d #35
[  433.110602]  [<c0173715>] kmem_cache_alloc+0x26/0xf2
[  433.110645]  [<c016b443>] __get_vm_area_node+0x8b/0x194
[  433.110652]  [<c016b443>] __get_vm_area_node+0x8b/0x194
[  433.110657]  [<c013ef6c>] __lock_acquire+0xbfc/0xc18
[  433.110662]  [<c016b5c8>] get_vm_area_caller+0x3b/0x40
[  433.110667]  [<c03392c2>] text_poke+0xa8/0x153
[  433.110673]  [<c016ba7d>] vmap+0x1f/0x41
[  433.110677]  [<c03392c2>] text_poke+0xa8/0x153
[  433.110682]  [<c010141c>] sys_execve+0x38/0x4a
[  433.110686]  [<c013c0d6>] get_lock_stats+0x13/0x34
[  433.110691]  [<c0106b93>] alternatives_smp_unlock+0x40/0x4d
[  433.110696]  [<c0106d6a>] alternatives_smp_switch+0x119/0x161
[  433.110700]  [<c033c071>] _etext+0x0/0xf
[  433.110705]  [<c010e9f0>] __cpu_die+0x31/0x63
[  433.110712]  [<c03280fd>] _cpu_down+0x141/0x1ef
[  433.110718]  [<c0143177>] disable_nonboot_cpus+0x47/0xc0
[  433.110723]  [<c014705b>] suspend_devices_and_enter+0x92/0x13f
[  433.110727]  [<c0147243>] enter_state+0x117/0x170
[  433.110732]  [<c014732a>] state_store+0x8e/0xa4
[  433.110736]  [<c014729c>] state_store+0x0/0xa4
[  433.110741]  [<c01e5ef7>] kobj_attr_store+0x18/0x1c
[  433.110746]  [<c01ac140>] sysfs_write_file+0xb4/0xe1
[  433.110751]  [<c01ac08c>] sysfs_write_file+0x0/0xe1
[  433.110755]  [<c01767dd>] vfs_write+0x83/0xf6
[  433.110760]  [<c0176d01>] sys_write+0x3c/0x63
[  433.110765]  [<c0102ddf>] sysenter_past_esp+0x78/0xd1
[  433.110771]  =======================
[  433.141990] CPU0 attaching NULL sched-domain.
[  433.143290] CPU1 is down
[  433.143498]  hwsleep-0324 [03] enter_sleep_state     : Entering sleep state [S3]
[  433.143498] x86 PAT enabled: cpu 0, old 0x7040600070406, new 0x7010600070106
[  433.143498] Intel machine check architecture supported.
[  433.143498] Intel machine check reporting enabled on CPU#0.
[  433.143498] CPU0: Intel P4/Xeon Extended MCE MSRs (24) available
[  433.143498] CPU0: Thermal monitoring enabled
[  433.143498] Back to C!
[  433.144004] Enabling non-boot CPUs ...
[  433.150307] CPU0 attaching NULL sched-domain.
[  433.151402] lockdep: fixing up alternatives.
[  433.151409] SMP alternatives: switching to SMP code
[  433.239329] Booting processor 1/1 ip 6000
[  433.249496] Initializing CPU#1
[  433.249496] Calibrating delay using timer specific routine.. 6400.86 BogoMIPS (lpj=3200433)
[  433.249496] CPU: Trace cache: 12K uops, L1 D cache: 16K
[  433.249496] CPU: L2 cache: 2048K
[  433.249496] CPU: Physical Processor ID: 0
[  433.249496] Intel machine check architecture supported.
[  433.249496] Intel machine check reporting enabled on CPU#1.
[  433.249496] CPU1: Intel P4/Xeon Extended MCE MSRs (24) available
[  433.249496] CPU1: Thermal monitoring enabled
[  433.249496] x86 PAT enabled: cpu 1, old 0x7040600070406, new 0x7010600070106
[  433.311688] CPU1: Intel(R) Pentium(R) D CPU 3.20GHz stepping 04
[  433.311737] kvm: enabling virtualization on CPU1
[  433.311851] CPU0 attaching sched-domain:
[  433.311862]  domain 0: span 0-1
[  433.311868]   groups: 0 1
[  433.311884] CPU1 attaching sched-domain:
[  433.311890]  domain 0: span 0-1
[  433.311895]   groups: 1 0
[  433.424473] Switched to high resolution mode on CPU 1
[  433.428475] CPU1 is up
[  433.434963] PM: Writing back config space on device 0000:00:02.0 at offset 1 (was 900007, writing 900003)
[  433.479758] PM: Writing back config space on device 0000:00:1b.0 at offset 1 (was 100006, writing 100002)
[  433.479758] ACPI: PCI Interrupt 0000:00:1b.0[A] -> GSI 19 (level, low) -> IRQ 19
[  433.479758] PCI: Setting latency timer of device 0000:00:1b.0 to 64
[  433.518646] PM: Writing back config space on device 0000:00:1c.0 at offset f (was 60100, writing 6010b)
[  433.518646] PM: Writing back config space on device 0000:00:1c.0 at offset 1 (was 100107, writing 100507)
[  433.518646] PCI: Setting latency timer of device 0000:00:1c.0 to 64
[  433.518646] PM: Writing back config space on device 0000:00:1c.1 at offset f (was 60200, writing 6020a)
[  433.518646] PM: Writing back config space on device 0000:00:1c.1 at offset 1 (was 100107, writing 100507)
[  433.518646] PCI: Setting latency timer of device 0000:00:1c.1 to 64
[  433.518646] ACPI: PCI Interrupt 0000:00:1d.0[A] -> GSI 20 (level, low) -> IRQ 20
[  433.518646] PCI: Setting latency timer of device 0000:00:1d.0 to 64
[  433.518646] usb usb2: root hub lost power or was reset
[  433.518646] ACPI: PCI Interrupt 0000:00:1d.1[B] -> GSI 17 (level, low) -> IRQ 17
[  433.518646] PCI: Setting latency timer of device 0000:00:1d.1 to 64
[  433.518646] usb usb3: root hub lost power or was reset
[  433.518646] ACPI: PCI Interrupt 0000:00:1d.2[C] -> GSI 18 (level, low) -> IRQ 18
[  433.518646] PCI: Setting latency timer of device 0000:00:1d.2 to 64
[  433.518646] usb usb4: root hub lost power or was reset
[  433.518646] ACPI: PCI Interrupt 0000:00:1d.3[D] -> GSI 19 (level, low) -> IRQ 19
[  433.518646] PCI: Setting latency timer of device 0000:00:1d.3 to 64
[  433.518646] usb usb5: root hub lost power or was reset
[  433.520647] ACPI: PCI Interrupt 0000:00:1d.7[A] -> GSI 20 (level, low) -> IRQ 20
[  433.520647] PCI: Setting latency timer of device 0000:00:1d.7 to 64
[  433.520647] PCI: Setting latency timer of device 0000:00:1e.0 to 64
[  433.520647] ACPI: PCI Interrupt 0000:00:1f.1[A] -> GSI 18 (level, low) -> IRQ 18
[  433.520647] PCI: Setting latency timer of device 0000:00:1f.1 to 64
[  433.545642] ACPI: PCI Interrupt 0000:00:1f.2[B] -> GSI 17 (level, low) -> IRQ 17
[  433.545642] PCI: Setting latency timer of device 0000:00:1f.2 to 64
[  433.567774] PM: Writing back config space on device 0000:02:00.0 at offset 3 (was 4, writing 10)
[  433.567871] ACPI: PCI Interrupt 0000:02:00.0[A] -> GSI 17 (level, low) -> IRQ 17
[  433.567883] PCI: Setting latency timer of device 0000:02:00.0 to 64
[  433.641344] serial 00:0b: activated
[  433.653757] ACPI: PCI Interrupt 0000:00:02.0[A] -> GSI 16 (level, low) -> IRQ 16
[  433.656205] sd 2:0:0:0: [sda] Starting disk
[  433.691936] ata1.01: ACPI cmd ef/03:42:00:00:00:b0 filtered out
[  433.691941] ata1.01: ACPI cmd ef/03:0c:00:00:00:b0 filtered out
[  433.697560] ata1.01: configured for UDMA/33
[  435.268597] eth0: Link is Up 100 Mbps Full Duplex, Flow Control: RX/TX
[  435.268600] eth0: 10/100 speed: disabling TSO
[  437.095902] ata3.00: configured for UDMA/133
[  437.109485] sd 2:0:0:0: [sda] 156301488 512-byte hardware sectors (80026 MB)
[  437.109485] sd 2:0:0:0: [sda] Write Protect is off
[  437.109485] sd 2:0:0:0: [sda] Mode Sense: 00 3a 00 00
[  437.109485] sd 2:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[  438.107592] usb 3-2: reset low speed USB device using uhci_hcd and address 2
[  438.426553] PM: Finishing wakeup.
[  438.426553] Restarting tasks ... done.
[  439.961904] ADDRCONF(NETDEV_UP): eth0: link is not ready
[  441.669070] eth0: Link is Up 100 Mbps Full Duplex, Flow Control: RX/TX
[  441.669079] eth0: 10/100 speed: disabling TSO
[  441.669358] ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[  458.850823] eth0: no IPv6 routers present

--=-mJzkJ9JkChdf/2ca1v0C--

--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

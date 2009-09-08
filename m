From: reinette chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13819] system freeze when switching to console
Date: Tue, 08 Sep 2009 10:36:15 -0700
Message-ID: <1252431375.14735.139.camel@rc-desk>
References: <2ehA7xoGvXL.A.4PB.3eBpKB@chimera>
	 <Vm51Upp4EV.A.r-D.mgBpKB@chimera> <1252427375.14735.130.camel@rc-desk>
	 <alpine.LFD.2.01.0909080943030.7458@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.01.0909080943030.7458-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, "Ma, Ling" <ling.ma-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "bugzilla-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org" <bugzilla-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org>

On Tue, 2009-09-08 at 10:00 -0700, Linus Torvalds wrote:
> 
> On Tue, 8 Sep 2009, reinette chatre wrote:
> 
> > On Sun, 2009-09-06 at 10:24 -0700, Rafael J. Wysocki wrote:
> > > Please verify if it still should be listed and let me know
> > > (either way).
> > 
> > Issue is still present in 2.6.31-rc8.
> 
> Is there any chance that you could connect a serial line to the machine? 

The system does not have a serial console, but I was able to set up
netconsole. For what it is worth, I did not do this until now because
(1) I was able to bisect the problem, and (2) I asked driver developers
directly how I can help to debug this and I received no response.

As you can see from the kernel version it is not a build of a vanilla
kernel. It only contains changes related to the wireless networking work
I am doing.

Here is the output:

[  352.803652] render error detected, EIR: 0x00000010
[  352.803684]   IPEIR: 0x00000000
[  352.803709]   IPEHR: 0x01000000
[  352.803732]   INSTDONE: 0xfffffffe
[  352.803754]   INSTPS: 0x0001e000
[  352.803776]   INSTDONE1: 0xffffffff
[  352.803801]   ACTHD: 0x0480a3c8
[  352.803823] page table error
[  352.803846]   PGTBL_ER: 0x00100000
[  352.803870] [drm:i915_handle_error] *ERROR* EIR stuck: 0x00000010, masking
[  352.803960] BUG: unable to handle kernel NULL pointer dereference at 0000000000000084
[  352.804006] IP: [<ffffffffa03ecaab>] i915_driver_irq_handler+0x26b/0xd20 [i915]
[  352.804006] PGD b5d00067 PUD b9753067 PMD 0 
[  352.804006] Oops: 0000 [#1] SMP 
[  352.804006] last sysfs file: /sys/class/power_supply/BAT0/energy_full
[  352.804006] CPU 0 
[  352.804006] Modules linked in: i915 drm i2c_algo_bit i2c_core ipv6 acpi_cpufreq cpufreq_userspace cpufreq_powersave cpufreq_ondemand cpufreq_conservative cpufreq_stats freq_table container sbs sbshc arc4 ecb joydev af_packet pcmcia psmouse sony_laptop serio_raw yenta_socket rsrc_nonstatic pcmcia_core pcspkr iTCO_wdt iTCO_vendor_support rfkill intel_agp button battery tpm_infineon tpm tpm_bios processor video output ac evdev ext3 jbd mbcache sr_mod sg cdrom sd_mod ahci libata scsi_mod ehci_hcd uhci_hcd usbcore thermal fan thermal_sys [last unloaded: cfg80211]
[  352.804006] Pid: 4424, comm: Xorg Not tainted 2.6.31-rc8-wl-50925-gdcecd82-dirty #57 VGN-Z540N
[  352.804006] RIP: 0010:[<ffffffffa03ecaab>]  [<ffffffffa03ecaab>] i915_driver_irq_handler+0x26b/0xd20 [i915]
[  352.804006] RSP: 0018:ffff880001e9de58  EFLAGS: 00010082
[  352.804006] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
[  352.804006] RDX: ffffc9000007d898 RSI: 0000000000000001 RDI: ffffffff8132f0f8
[  352.804006] RBP: ffff880001e9dee8 R08: 0000000000000002 R09: ffff880037373c38
[  352.804006] R10: 0000000000000000 R11: 0000000000000001 R12: ffff8800b57fe000
[  352.804006] R13: 000000000000001f R14: ffff8800b57fe000 R15: ffff8800b9746000
[  352.804006] FS:  00007fcc05d20700(0000) GS:ffff880001e9a000(0000) knlGS:0000000000000000
[  352.804006] CS:  0010 DS: 0000 ES: 0000 CR0: 000000008005003b
[  352.804006] CR2: 0000000000000084 CR3: 00000000b50c3000 CR4: 00000000000006f0
[  352.804006] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  352.804006] DR3: 0000000000000000 DR6: 00000000ffff0ff0 DR7: 0000000000000400
[  352.804006] Process Xorg (pid: 4424, threadinfo ffff8800b6b1a000, task ffff880037373c00)
[  352.804006] Stack:
[  352.804006]  ffffffff8106db7d 0000000000000086 ffff88009a5ce040 ffff8800b57fe158
[  352.804006] <0> ffff8800b57fe1a8 ffff8800b57fe110 0004000000008000 0000000400440202
[  352.804006] <0> 0000000000000086 0044020200000000 0000001000040000 0000000000000040
[  352.804006] Call Trace:
[  352.804006]  <IRQ> 
[  352.804006]  [<ffffffff8106db7d>] ? mark_held_locks+0x6d/0x90
[  352.804006]  [<ffffffff81098ee8>] handle_IRQ_event+0x68/0x170
[  352.804006]  [<ffffffff8109ac01>] handle_edge_irq+0xc1/0x160
[  352.804006]  [<ffffffff8100e76f>] handle_irq+0x1f/0x30
[  352.804006]  [<ffffffff8100dc6a>] do_IRQ+0x6a/0xf0
[  352.804006]  [<ffffffff8100c793>] ret_from_intr+0x0/0xf
[  352.804006]  <EOI> 
[  352.804006]  [<ffffffff81070b88>] ? lock_acquire+0xe8/0x100
[  352.804006]  [<ffffffffa03c0b85>] ? drm_irq_uninstall+0x65/0x180 [drm]
[  352.804006]  [<ffffffff8132d7b5>] ? mutex_lock_nested+0x45/0x320
[  352.804006]  [<ffffffffa03c0b85>] ? drm_irq_uninstall+0x65/0x180 [drm]
[  352.804006]  [<ffffffff8106de85>] ? trace_hardirqs_on_caller+0x145/0x190
[  352.804006]  [<ffffffff8106dedd>] ? trace_hardirqs_on+0xd/0x10
[  352.804006]  [<ffffffffa03c0b85>] ? drm_irq_uninstall+0x65/0x180 [drm]
[  352.804006]  [<ffffffffa03f3335>] ? i915_gem_idle+0x225/0x330 [i915]
[  352.804006]  [<ffffffffa03f34c7>] ? i915_gem_leavevt_ioctl+0x37/0x50 [i915]
[  352.804006]  [<ffffffffa03bdafd>] ? drm_ioctl+0x17d/0x3c0 [drm]
[  352.804006]  [<ffffffffa03f3490>] ? i915_gem_leavevt_ioctl+0x0/0x50 [i915]
[  352.804006]  [<ffffffff810d0ad5>] ? do_wp_page+0x185/0x7a0
[  352.804006]  [<ffffffff811a9a33>] ? __up_read+0x23/0xb0
[  352.804006]  [<ffffffff810ff17d>] ? vfs_ioctl+0x7d/0xa0
[  352.804006]  [<ffffffff810ff2ba>] ? do_vfs_ioctl+0x8a/0x5c0
[  352.804006]  [<ffffffff8105fec6>] ? up_read+0x26/0x30
[  352.804006]  [<ffffffff8100c829>] ? retint_swapgs+0xe/0x13
[  352.804006]  [<ffffffff810ff889>] ? sys_ioctl+0x99/0xa0
[  352.804006]  [<ffffffff8100bd6b>] ? system_call_fastpath+0x16/0x1b
[  352.804006] Code: 00 8b 18 49 8b 87 b0 05 00 00 48 8b 80 20 02 00 00 48 85 c0 74 21 48 8b 80 00 01 00 00 48 8b 50 08 48 85 d2 74 11 49 8b 44 24 78 <8b> 80 84 00 00 00 89 82 08 08 00 00 f6 45 a0 02 0f 85 47 03 00 
[  352.804006] RIP  [<ffffffffa03ecaab>] i915_driver_irq_handler+0x26b/0xd20 [i915]
[  352.804006]  RSP <ffff880001e9de58>
[  352.804006] CR2: 0000000000000084
[  352.804006] ---[ end trace 756dbe26c2f29fdd ]---
[  352.804006] Kernel panic - not syncing: Fatal exception in interrupt
[  352.804006] Pid: 4424, comm: Xorg Tainted: G      D    2.6.31-rc8-wl-50925-gdcecd82-dirty #57
[  352.804006] Call Trace:
[  352.804006]  <IRQ>  [<ffffffff8132ba7f>] panic+0xa0/0x170
[  352.804006]  [<ffffffff8132f0f8>] ? _spin_unlock_irqrestore+0x58/0x60
[  352.804006]  [<ffffffff81041b35>] ? release_console_sem+0x1f5/0x240
[  352.804006]  [<ffffffff81041e05>] ? console_unblank+0x75/0x90
[  352.804006]  [<ffffffff813306c4>] oops_end+0xd4/0xe0
[  352.804006]  [<ffffffff810279d8>] no_context+0xe8/0x260
[  352.804006]  [<ffffffff81027ca5>] __bad_area_nosemaphore+0x155/0x1f0
[  352.804006]  [<ffffffff8106ca5d>] ? trace_hardirqs_off+0xd/0x10
[  352.804006]  [<ffffffff8132f0f8>] ? _spin_unlock_irqrestore+0x58/0x60
[  352.804006]  [<ffffffff8103bb58>] ? try_to_wake_up+0xe8/0x210
[  352.804006]  [<ffffffff81027d4e>] bad_area_nosemaphore+0xe/0x10
[  352.804006]  [<ffffffff8133204e>] do_page_fault+0x29e/0x350
[  352.804006]  [<ffffffff8132f8af>] page_fault+0x1f/0x30
[  352.804006]  [<ffffffff8132f0f8>] ? _spin_unlock_irqrestore+0x58/0x60
[  352.804006]  [<ffffffffa03ecaab>] ? i915_driver_irq_handler+0x26b/0xd20 [i915]
[  352.804006]  [<ffffffffa03ec9cb>] ? i915_driver_irq_handler+0x18b/0xd20 [i915]
[  352.804006]  [<ffffffff8106db7d>] ? mark_held_locks+0x6d/0x90
[  352.804006]  [<ffffffff81098ee8>] handle_IRQ_event+0x68/0x170
[  352.804006]  [<ffffffff8109ac01>] handle_edge_irq+0xc1/0x160
[  352.804006]  [<ffffffff8100e76f>] handle_irq+0x1f/0x30
[  352.804006]  [<ffffffff8100dc6a>] do_IRQ+0x6a/0xf0
[  352.804006]  [<ffffffff8100c793>] ret_from_intr+0x0/0xf
[  352.804006]  <EOI>  [<ffffffff81070b88>] ? lock_acquire+0xe8/0x100
[  352.804006]  [<ffffffffa03c0b85>] ? drm_irq_uninstall+0x65/0x180 [drm]
[  352.804006]  [<ffffffff8132d7b5>] ? mutex_lock_nested+0x45/0x320
[  352.804006]  [<ffffffffa03c0b85>] ? drm_irq_uninstall+0x65/0x180 [drm]
[  352.804006]  [<ffffffff8106de85>] ? trace_hardirqs_on_caller+0x145/0x190
[  352.804006]  [<ffffffff8106dedd>] ? trace_hardirqs_on+0xd/0x10
[  352.804006]  [<ffffffffa03c0b85>] ? drm_irq_uninstall+0x65/0x180 [drm]
[  352.804006]  [<ffffffffa03f3335>] ? i915_gem_idle+0x225/0x330 [i915]
[  352.804006]  [<ffffffffa03f34c7>] ? i915_gem_leavevt_ioctl+0x37/0x50 [i915]
[  352.804006]  [<ffffffffa03bdafd>] ? drm_ioctl+0x17d/0x3c0 [drm]
[  352.804006]  [<ffffffffa03f3490>] ? i915_gem_leavevt_ioctl+0x0/0x50 [i915]
[  352.804006]  [<ffffffff810d0ad5>] ? do_wp_page+0x185/0x7a0
[  352.804006]  [<ffffffff811a9a33>] ? __up_read+0x23/0xb0
[  352.804006]  [<ffffffff810ff17d>] ? vfs_ioctl+0x7d/0xa0
[  352.804006]  [<ffffffff810ff2ba>] ? do_vfs_ioctl+0x8a/0x5c0
[  352.804006]  [<ffffffff8105fec6>] ? up_read+0x26/0x30
[  352.804006]  [<ffffffff8100c829>] ? retint_swapgs+0xe/0x13
[  352.804006]  [<ffffffff810ff889>] ? sys_ioctl+0x99/0xa0
[  352.804006]  [<ffffffff8100bd6b>] ? system_call_fastpath+0x16/0x1b


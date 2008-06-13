From: "R. J. Wysocki" <Rafal.Wysocki-/6eP1D/FSf3VItvQsEIGlw@public.gmane.org>
Subject: Re: SLAB break supsned and cpu-hotplug on SMP, using SLUB instead.
Date: Fri, 13 Jun 2008 23:07:19 +0200
Message-ID: <200806132307.19393.Rafal.Wysocki@fuw.edu.pl>
References: <1213389587.10307.12.camel@zwerg>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1213389587.10307.12.camel@zwerg>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Friday, 13 of June 2008, Alexey Fisher wrote:
> I found that SLAB breaking supsned and cpu-hotplug on my PC. I didn't
> get to bisect it, so i think it is just the part of SLAB. At the moment
> i converted my kernel to SLUB and it working just fine, about 10
> suspends and no reboot or crush ... it ist a record for my PC.
> 
> Easy way to reproduce is to compile SLAB kernel and 
> echo 0 > /sys/devices/system/cpu/cpu1/online
> echo 1 > /sys/devices/system/cpu/cpu1/online
> 
> other work around to make my PC working stable are kernel options: nosmp
> or mem=1024M
> kernel 2.6.26-rc6-00028-gc6d8f40 #68 SMP PREEMPT 

Is this a regression from 2.6.25?


> dmesg will return:
> [  119.362281] CPU0 attaching NULL sched-domain.
> [  119.362281] CPU1 attaching NULL sched-domain.
> [  119.365524] kvm: disabling virtualization on CPU1
> [  119.365524] Breaking affinity for irq 1
> [  119.365524] Breaking affinity for irq 18
> [  119.468547] CPU 1 is now offline
> [  119.468553] lockdep: fixing up alternatives.
> [  119.468561] SMP alternatives: switching to UP code
> [  119.468568] BUG: sleeping function called from invalid context at
> mm/slab.c:3052
> [  119.468574] in_atomic():1, irqs_disabled():0
> [  119.468578] 4 locks held by bash/5128:
> [  119.468581]  #0:  (&buffer->mutex){--..}, at: [<c01ac68e>]
> sysfs_write_file+0x25/0xe3
> [  119.468598]  #1:  (cpu_add_remove_lock){--..}, at: [<c014242b>]
> cpu_maps_update_begin+0xf/0x11
> [  119.468611]  #2:  (&cpu_hotplug.lock){--..}, at: [<c014246f>]
> cpu_hotplug_begin+0x1a/0x42
> [  119.468623]  #3:  (smp_alt){--..}, at: [<c0106f7c>]
> alternatives_smp_switch+0x14c/0x165
> [  119.468638] Pid: 5128, comm: bash Not tainted
> 2.6.26-rc6-testing-00028-gc6d8f40 #67
> [  119.468645]  [<c011a235>] __might_sleep+0xe7/0xee
> [  119.468655]  [<c017262d>] kmem_cache_alloc+0x27/0xd2
> [  119.468664]  [<c016a498>] ? __get_vm_area_node+0x86/0x186
> [  119.468674]  [<c016a498>] __get_vm_area_node+0x86/0x186
> [  119.468684]  [<c016a618>] get_vm_area_caller+0x3e/0x43
> [  119.468692]  [<c0358b61>] ? text_poke+0x9e/0x11e
> [  119.468702]  [<c016aa53>] vmap+0x21/0x44
> [  119.468710]  [<c0358b61>] text_poke+0x9e/0x11e
> [  119.468717]  [<c0101433>] ? sys_execve+0x37/0x4d
> [  119.468727]  [<c0106d53>] alternatives_smp_unlock+0x41/0x50
> [  119.468736]  [<c0106f48>] alternatives_smp_switch+0x118/0x165
> [  119.468813]  [<c035b9f1>] ? _etext+0x0/0xf
> [  119.468822]  [<c0121ce5>] ? printk+0x15/0x17
> [  119.468833]  [<c010e222>] __cpu_die+0x42/0x69
> [  119.468842]  [<c034809f>] _cpu_down+0x148/0x1f8
> [  119.468854]  [<c0348172>] cpu_down+0x23/0x30
> [  119.468863]  [<c034927b>] store_online+0x27/0x5a
> [  119.468870]  [<c0349254>] ? store_online+0x0/0x5a
> [  119.468880]  [<c0271f10>] sysdev_store+0x20/0x25
> [  119.468889]  [<c01ac721>] sysfs_write_file+0xb8/0xe3
> [  119.468899]  [<c01ac669>] ? sysfs_write_file+0x0/0xe3
> [  119.468907]  [<c01757b2>] vfs_write+0x8c/0x108
> [  119.468916]  [<c0175d0c>] sys_write+0x3b/0x60
> [  119.468924]  [<c0102d4d>] sysenter_past_esp+0x6a/0xb1
> [  119.468934]  =======================
> [  119.625144] CPU0 attaching NULL sched-domain.
> 
> 
> --
> To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> 
> 



-- 
Rafael J. Wysocki, Ph.D.
Institute of Theoretical Physics
Faculty of Physics of Warsaw University
ul. Hoza 69, 00-681 Warsaw
[tel: +48 22 55 32 263]
[mob: +48 60 50 53 693]
----------------------------
One should not increase, beyond what is necessary,
the number of entities required to explain anything.
			-- William of Ockham
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

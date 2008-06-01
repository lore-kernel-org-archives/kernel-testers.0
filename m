From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: BUG: sleeping function called from invalid context at mm/slab.c:3052
Date: Sun, 1 Jun 2008 13:54:03 +0200
Message-ID: <200806011354.03808.rjw@sisk.pl>
References: <1212313623.5186.8.camel@zwerg>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1212313623.5186.8.camel@zwerg>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Sunday, 1 of June 2008, Alexey Fisher wrote:
> I get this after suspend on my PC (2.6.26-rc4-00103-g1beee8d). I do not
> thing there is any reason to bisect it, supend on my PC began to work
> only with 2.6.26-rc3:

Well, that's interesting.

I have no idea what !@#$%^& happend here ...

> [  433.110546] BUG: sleeping function called from invalid context at
> mm/slab.c:3052
> [  433.110550] in_atomic():1, irqs_disabled():0
> [  433.110554] 5 locks held by pm-suspend/4783:
> [  433.110556]  #0:  (&buffer->mutex){--..}, at: [<c01ac0b0>]
> sysfs_write_file+0x24/0xe1
> [  433.110572]  #1:  (pm_mutex){--..}, at: [<c0147288>] enter_state
> +0x15c/0x170
> [  433.110579]  #2:  (cpu_add_remove_lock){--..}, at: [<c0143138>]
> disable_nonboot_cpus+0x8/0xc0
> [  433.110585]  #3:  (&cpu_hotplug.lock){--..}, at: [<c014308d>]
> cpu_hotplug_begin+0x17/0x3e
> [  433.110590]  #4:  (smp_alt){--..}, at: [<c0106d9c>]
> alternatives_smp_switch+0x14b/0x161
> [  433.110598] Pid: 4783, comm: pm-suspend Not tainted
> 2.6.26-rc4-testing-00103-g1beee8d #35
> [  433.110602]  [<c0173715>] kmem_cache_alloc+0x26/0xf2
> [  433.110645]  [<c016b443>] __get_vm_area_node+0x8b/0x194
> [  433.110652]  [<c016b443>] __get_vm_area_node+0x8b/0x194
> [  433.110657]  [<c013ef6c>] __lock_acquire+0xbfc/0xc18
> [  433.110662]  [<c016b5c8>] get_vm_area_caller+0x3b/0x40
> [  433.110667]  [<c03392c2>] text_poke+0xa8/0x153
> [  433.110673]  [<c016ba7d>] vmap+0x1f/0x41
> [  433.110677]  [<c03392c2>] text_poke+0xa8/0x153
> [  433.110682]  [<c010141c>] sys_execve+0x38/0x4a
> [  433.110686]  [<c013c0d6>] get_lock_stats+0x13/0x34
> [  433.110691]  [<c0106b93>] alternatives_smp_unlock+0x40/0x4d
> [  433.110696]  [<c0106d6a>] alternatives_smp_switch+0x119/0x161
> [  433.110700]  [<c033c071>] _etext+0x0/0xf
> [  433.110705]  [<c010e9f0>] __cpu_die+0x31/0x63
> [  433.110712]  [<c03280fd>] _cpu_down+0x141/0x1ef
> [  433.110718]  [<c0143177>] disable_nonboot_cpus+0x47/0xc0
> [  433.110723]  [<c014705b>] suspend_devices_and_enter+0x92/0x13f
> [  433.110727]  [<c0147243>] enter_state+0x117/0x170
> [  433.110732]  [<c014732a>] state_store+0x8e/0xa4
> [  433.110736]  [<c014729c>] state_store+0x0/0xa4
> [  433.110741]  [<c01e5ef7>] kobj_attr_store+0x18/0x1c
> [  433.110746]  [<c01ac140>] sysfs_write_file+0xb4/0xe1
> [  433.110751]  [<c01ac08c>] sysfs_write_file+0x0/0xe1
> [  433.110755]  [<c01767dd>] vfs_write+0x83/0xf6
> [  433.110760]  [<c0176d01>] sys_write+0x3c/0x63
> [  433.110765]  [<c0102ddf>] sysenter_past_esp+0x78/0xd1
> [  433.110771]  =======================
> [  433.141990] CPU0 attaching NULL sched-domain.
> [  433.143290] CPU1 is down
> 
> 
> Some time this PC won't wake up if it suspended (S3)  with firefox
> started. This time i wonted to find why, so may bit this is the reason.
> 



-- 
"Premature optimization is the root of all evil." - Donald Knuth
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

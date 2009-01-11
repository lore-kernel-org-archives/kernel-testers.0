From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [patch] Re: [Bug #12100] resume (S2R) broken by Intel
	microcode module, on A110L
Date: Sun, 11 Jan 2009 15:56:15 +0100
Message-ID: <20090111145615.GA26173@elte.hu>
References: <1229728524.5122.13.camel@earth> <20081219233006.GA17984@elte.hu>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20081219233006.GA17984-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, andeas.herrmann3-5C7GfCeVMHo@public.gmane.org, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


* Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:

> * Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> 
> > Hi,
> > 
> > 
> > This is in response to the following bug report:
> > 
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12100
> > Subject         : resume (S2R) broken by Intel microcode module, on A110L
> > Submitter       : Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>
> > Date            : 2008-11-25 08:48 (19 days old)
> > Handled-By      : Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> 
> applied to tip/x86/microcode, thanks Dmitry!
> 
> The fix looks right but somewhat intrusive in scope, so i'm a bit 
> reluctant to push it towards .28 straight away - without having feedback 
> in the bugzilla. If feedback is positive (the bug reported there goes 
> away completely) we can cherry-pick it over into x86/urgent, ok? And in 
> any case i've marked it as a -stable backport for .28.1.

hm, -tip testing just found this microcode locking lockdep splat:

[   48.004158] SMP alternatives: switching to UP code
[   48.342853] CPU0 attaching NULL sched-domain.
[   48.344288] CPU1 attaching NULL sched-domain.
[   48.354696] CPU0 attaching NULL sched-domain.
[   48.361215] device: 'cpu1': device_unregister
[   48.364231] device: 'cpu1': device_create_release
[   48.368138] 
[   48.368139] =======================================================
[   48.372039] [ INFO: possible circular locking dependency detected ]
[   48.372039] 2.6.29-rc1-tip-00901-g9699183-dirty #15577
[   48.372039] -------------------------------------------------------
[   48.372039] S99local/3496 is trying to acquire lock:
[   48.372039]  (microcode_mutex){--..}, at: [<c0118489>] microcode_fini_cpu+0x17/0x2b
[   48.372039] 
[   48.372039] but task is already holding lock:
[   48.372039]  (&cpu_hotplug.lock){--..}, at: [<c012f508>] cpu_hotplug_begin+0x1f/0x47
[   48.372039] 
[   48.372039] which lock already depends on the new lock.
[   48.372039] 
[   48.372039] 
[   48.372039] the existing dependency chain (in reverse order) is:
[   48.372039] 
[   48.372039] -> #1 (&cpu_hotplug.lock){--..}:
[   48.372039]        [<c014d3f1>] validate_chain+0x8e9/0xb94
[   48.372039]        [<c014dd03>] __lock_acquire+0x667/0x6e1
[   48.372039]        [<c014ddda>] lock_acquire+0x5d/0x7a
[   48.372039]        [<c0a6fac3>] mutex_lock_nested+0xdc/0x170
[   48.372039]        [<c012f552>] get_online_cpus+0x22/0x34
[   48.372039]        [<c013ce08>] work_on_cpu+0x50/0x8a
[   48.372039]        [<c0118465>] microcode_init_cpu+0x25/0x32
[   48.372039]        [<c0118699>] mc_sysdev_add+0x91/0x9b
[   48.372039]        [<c04cbd09>] sysdev_driver_register+0x9b/0xea
[   48.372039]        [<c0fb68e0>] microcode_init+0x8a/0xe4
[   48.372039]        [<c010106a>] do_one_initcall+0x6a/0x16e
[   48.372039]        [<c0fa952d>] kernel_init+0x115/0x166
[   48.372039]        [<c0103737>] kernel_thread_helper+0x7/0x10
[   48.372039]        [<ffffffff>] 0xffffffff
[   48.372039] 
[   48.372039] -> #0 (microcode_mutex){--..}:
[   48.372039]        [<c014d0fc>] validate_chain+0x5f4/0xb94
[   48.372039]        [<c014dd03>] __lock_acquire+0x667/0x6e1
[   48.372039]        [<c014ddda>] lock_acquire+0x5d/0x7a
[   48.372039]        [<c0a6fac3>] mutex_lock_nested+0xdc/0x170
[   48.372039]        [<c0118489>] microcode_fini_cpu+0x17/0x2b
[   48.372039]        [<c0a6ce38>] mc_cpu_callback+0xed/0xfa
[   48.372039]        [<c0142a48>] notifier_call_chain+0x2b/0x4a
[   48.372039]        [<c0142a98>] __raw_notifier_call_chain+0x13/0x15
[   48.372039]        [<c0142aab>] raw_notifier_call_chain+0x11/0x13
[   48.372039]        [<c0a2925e>] _cpu_down+0x171/0x22a
[   48.372039]        [<c0a2935a>] cpu_down+0x43/0x68
[   48.372039]        [<c0a2a27f>] store_online+0x2a/0x5e
[   48.372039]        [<c04cba85>] sysdev_store+0x20/0x28
[   48.372039]        [<c01d07d0>] sysfs_write_file+0xbd/0xe8
[   48.372039]        [<c01912c2>] vfs_write+0x91/0x138
[   48.372039]        [<c01917c8>] sys_write+0x40/0x65
[   48.372039]        [<c0102e55>] sysenter_do_call+0x12/0x35
[   48.372039]        [<ffffffff>] 0xffffffff
[   48.372039] 
[   48.372039] other info that might help us debug this:
[   48.372039] 
[   48.372039] 3 locks held by S99local/3496:
[   48.372039]  #0:  (&buffer->mutex){--..}, at: [<c01d073d>] sysfs_write_file+0x2a/0xe8
[   48.372039]  #1:  (cpu_add_remove_lock){--..}, at: [<c012f4b5>] cpu_maps_update_begin+0x14/0x16
[   48.372039]  #2:  (&cpu_hotplug.lock){--..}, at: [<c012f508>] cpu_hotplug_begin+0x1f/0x47
[   48.372039] 
[   48.372039] stack backtrace:
[   48.372039] Pid: 3496, comm: S99local Not tainted 2.6.29-rc1-tip-00901-g9699183-dirty #15577
[   48.372039] Call Trace:
[   48.372039]  [<c014cafd>] print_circular_bug_tail+0xab/0xb6
[   48.372039]  [<c014d0fc>] validate_chain+0x5f4/0xb94
[   48.372039]  [<c0a710b4>] ? _spin_unlock_irqrestore+0x34/0x41
[   48.372039]  [<c014dd03>] __lock_acquire+0x667/0x6e1
[   48.372039]  [<c014c508>] ? trace_hardirqs_on_caller+0x120/0x15f
[   48.372039]  [<c014ddda>] lock_acquire+0x5d/0x7a
[   48.372039]  [<c0118489>] ? microcode_fini_cpu+0x17/0x2b
[   48.372039]  [<c0a6fac3>] mutex_lock_nested+0xdc/0x170
[   48.372039]  [<c0118489>] ? microcode_fini_cpu+0x17/0x2b
[   48.372039]  [<c0118489>] ? microcode_fini_cpu+0x17/0x2b
[   48.372039]  [<c0118489>] microcode_fini_cpu+0x17/0x2b
[   48.372039]  [<c0a6ce38>] mc_cpu_callback+0xed/0xfa
[   48.372039]  [<c0142a48>] notifier_call_chain+0x2b/0x4a
[   48.372039]  [<c0142a98>] __raw_notifier_call_chain+0x13/0x15
[   48.372039]  [<c0142aab>] raw_notifier_call_chain+0x11/0x13
[   48.372039]  [<c0a2925e>] _cpu_down+0x171/0x22a
[   48.372039]  [<c0a2935a>] cpu_down+0x43/0x68
[   48.372039]  [<c0a2a27f>] store_online+0x2a/0x5e
[   48.372039]  [<c0a2a255>] ? store_online+0x0/0x5e
[   48.372039]  [<c04cba85>] sysdev_store+0x20/0x28
[   48.372039]  [<c01d07d0>] sysfs_write_file+0xbd/0xe8
[   48.372039]  [<c01d0713>] ? sysfs_write_file+0x0/0xe8
[   48.372039]  [<c01912c2>] vfs_write+0x91/0x138
[   48.372039]  [<c01917c8>] sys_write+0x40/0x65
[   48.372039]  [<c0102e55>] sysenter_do_call+0x12/0x35
[   49.380693] device: 'cpu1': device_add
[   49.384346] lockdep: fixing up alternatives.
[   49.388142] SMP alternatives: switching to SMP code

config/full bootlog on request. Andreas, Dmitry, any ideas?

	Ingo

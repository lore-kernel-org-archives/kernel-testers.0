From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: Re: BUG: sleeping function called from invalid context at
	mm/slab.c:3052
Date: Tue, 03 Jun 2008 12:02:10 +0200
Message-ID: <1212487330.17712.4.camel@zwerg>
References: <1212313623.5186.8.camel@zwerg> <200806011354.03808.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200806011354.03808.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

Am Sonntag, den 01.06.2008, 13:54 +0200 schrieb Rafael J. Wysocki:
> On Sunday, 1 of June 2008, Alexey Fisher wrote:
> > I get this after suspend on my PC (2.6.26-rc4-00103-g1beee8d). I do not
> > thing there is any reason to bisect it, supend on my PC began to work
> > only with 2.6.26-rc3:
> 
> Well, that's interesting.
> 
> I have no idea what !@#$%^& happend here ...
> 
> > [  433.110546] BUG: sleeping function called from invalid context at
> > mm/slab.c:3052
> > [  433.110550] in_atomic():1, irqs_disabled():0
> > [  433.110554] 5 locks held by pm-suspend/4783:
> > [  433.110556]  #0:  (&buffer->mutex){--..}, at: [<c01ac0b0>]
> > sysfs_write_file+0x24/0xe1
> > [  433.110572]  #1:  (pm_mutex){--..}, at: [<c0147288>] enter_state
> > +0x15c/0x170
> > [  433.110579]  #2:  (cpu_add_remove_lock){--..}, at: [<c0143138>]
> > disable_nonboot_cpus+0x8/0xc0
> > [  433.110585]  #3:  (&cpu_hotplug.lock){--..}, at: [<c014308d>]

Seems like it depend on CONFIG_PREEMPT, with CONFIG_PREEMPT_VOLUNTARY
i'll get other Warning:

I try to bisect it now.

[    0.411583] Kprobe smoke test started
[    0.412042] ------------[ cut here ]------------
[    0.412049] WARNING: at kernel/lockdep.c:2658 check_flags
+0x4d/0x12d()
[    0.412056] Modules linked in:
[    0.412063] Pid: 1, comm: swapper Not tainted
2.6.26-rc4-testing-00168-gc3b25b3 #39
[    0.412072]  [<c012094a>] warn_on_slowpath+0x41/0x6c
[    0.412083]  [<c013c62e>] ? mark_held_locks+0x4e/0x66
[    0.412092]  [<c0349617>] ? kprobe_exceptions_notify+0x2b3/0x33a
[    0.412103]  [<c013c7bd>] ? trace_hardirqs_on+0xe8/0x124
[    0.412112]  [<c0349638>] ? kprobe_exceptions_notify+0x2d4/0x33a
[    0.412122]  [<c034a0bb>] ? __atomic_notifier_call_chain+0x0/0x5a
[    0.412132]  [<c013a591>] check_flags+0x4d/0x12d
[    0.412139]  [<c013d924>] lock_release+0x46/0x196
[    0.412147]  [<c034a10b>] __atomic_notifier_call_chain+0x50/0x5a
[    0.412156]  [<c034a121>] atomic_notifier_call_chain+0xc/0xe
[    0.412165]  [<c0134af5>] notify_die+0x2d/0x2f
[    0.412175]  [<c0348c04>] do_debug+0x55/0xd7
[    0.412183]  [<c0348657>] debug_stack_correct+0x27/0x2c
[    0.412191]  [<c014a8b2>] ? init_test_probes+0x2c/0x186
[    0.412200]  [<c014a824>] ? kprobe_target+0x1/0x34
[    0.412209]  [<c014a8d6>] ? init_test_probes+0x50/0x186
[    0.412218]  [<c04aa7be>] init_kprobes+0xf2/0xfc
[    0.412226]  [<c0112f4d>] ? kernel_map_pages+0x108/0x11f
[    0.412236]  [<c013c8f5>] ? debug_check_no_locks_freed+0xfc/0x116
[    0.412245]  [<c013c7bd>] ? trace_hardirqs_on+0xe8/0x124
[    0.412255]  [<c013ab16>] ? lockdep_init_map+0x7a/0x361
[    0.412263]  [<c013a0d2>] ? debug_mutex_init+0x24/0x37
[    0.412272]  [<c013305c>] ? __mutex_init+0x38/0x40
[    0.412281]  [<c049d470>] kernel_init+0x127/0x257
[    0.412289]  [<c04aa6cc>] ? init_kprobes+0x0/0xfc
[    0.412298]  [<c013c7bd>] ? trace_hardirqs_on+0xe8/0x124
[    0.412307]  [<c0102cf7>] ? restore_nocheck+0x12/0x15
[    0.412316]  [<c049d349>] ? kernel_init+0x0/0x257
[    0.412324]  [<c049d349>] ? kernel_init+0x0/0x257
[    0.412333]  [<c0103903>] kernel_thread_helper+0x7/0x10
[    0.412341]  =======================
[    0.412354] ---[ end trace a7919e7f17c0a725 ]---
[    0.412359] possible reason: unannotated irqs-off.
[    0.412365] irq event stamp: 372951
[    0.412369] hardirqs last  enabled at (372951): [<c0349617>]
kprobe_exceptions_notify+0x2b3/0x33a
[    0.412381] hardirqs last disabled at (372950): [<c0348eda>] do_int3
+0x15/0x6c
[    0.412394] softirqs last  enabled at (372924): [<c0124bef>]
__do_softirq+0xe9/0xf1
[    0.412405] softirqs last disabled at (372917): [<c0124c31>]
do_softirq+0x3a/0x52
[    0.414705] Kprobe smoke test passed successfully
[    0.415603] highmem bounce pool size: 64 pages


--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

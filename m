From: "Daniel J Blueman" <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: SLUB/debugobjects locking (Re: 2.6.27-rc4-git1: Reported regressions from 2.6.26)
Date: Tue, 26 Aug 2008 23:14:19 +0100
Message-ID: <6278d2220808261514p2661251aw914215652c547125@mail.gmail.com>
References: <19f34abd0808251244v439e78b1hbb24f77c637559c3@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=7lp7m+DM1lwDAB7jvLkPSHj31bQn9ztNU1PArxqyTRo=;
        b=f+lmEtbDMzQEszWGKQxy7NYVSVGLhnsFxDULp9OpeDVCweT3bSo38ce8MLHKF7opRo
         Gb6EPDTcJVg9wNeO5FD49LW5jZsW+YKwplAwGQvWl9KRvVvI5kHEbIfv8OpMEn30H9Wv
         BIv1H3I+q71gYUiL453h6B9TvhFHe4ElPMmfk=
In-Reply-To: <19f34abd0808251244v439e78b1hbb24f77c637559c3-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Christoph Lameter <clameter-sJ/iWh9BUns@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Mon, Aug 25, 2008 at 8:44 PM, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> On Mon, Aug 25, 2008 at 3:03 PM, Daniel J Blueman
> <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>> Hi Linus, Vegard,
>>
>> On Sun, Aug 24, 2008 at 7:58 PM, Linus Torvalds
>> <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
>>> On Sun, 24 Aug 2008, Vegard Nossum wrote:
>> [snip]
>>> Anyway, I think your patch is likely fine, I just thought it looked a bit
>>> odd to have a loop to move a list from one head pointer to another.
>>>
>>> But regardless, it would need some testing. Daniel?
>>
>> This opens another lockdep report at boot-time [1] - promoting
>> pool_lock may not be the best fix?
>>
>> We then see a new deadlock condition (on the pool_lock spinlock) [2],
>> which seemingly was avoided by taking the debug-bucket lock first.
>>
>> We reproduce this by booting with debug_objects=1 and causing a lot of activity.
>
> Thanks. I get the same thing here as well.
>
> I tried your suggestion of promoting the lock to irq-safe, and it
> fixed the warning for me (didn't get or look for deadlocks yet, but it
> seems likely that it is caused by the same thing?), the patch is
> attached for reference.
>
> I also don't know if this is the best fix, but I also don't have any
> other (better) suggestions.
>
> Others are welcome to pick it up from here...

The solution looks like is needs to get the lock ordering correct
w.r.t. SLUB, as we get this, alas:

=======================================================
[ INFO: possible circular locking dependency detected ]
2.6.27-rc4-229c-debug #1
-------------------------------------------------------
make/9475 is trying to acquire lock:
 (&n->list_lock){++..}, at: [<ffffffff802dfb23>] __slab_free+0x3a3/0x3f0

but task is already holding lock:
 (&obj_hash[i].lock){++..}, at: [<ffffffff8046965e>]
__debug_check_no_obj_freed+0x6e/0x170

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #1 (&obj_hash[i].lock){++..}:
       [<ffffffff802703b1>] __lock_acquire+0xdc1/0x1160
       [<ffffffff802707e1>] lock_acquire+0x91/0xc0
       [<ffffffff806a55d3>] _spin_lock_irqsave+0x53/0x90
       [<ffffffff8046965e>] __debug_check_no_obj_freed+0x6e/0x170
       [<ffffffff80469775>] debug_check_no_obj_freed+0x15/0x20
       [<ffffffff802b4a30>] free_hot_cold_page+0x130/0x290
       [<ffffffff802b4c20>] free_hot_page+0x10/0x20
       [<ffffffff802b5695>] __free_pages+0x45/0x50
       [<ffffffff802df301>] __free_slab+0xa1/0x150
       [<ffffffff802df3e8>] discard_slab+0x38/0x60
       [<ffffffff802e235f>] kmem_cache_shrink+0x18f/0x2c0
       [<ffffffff8048f421>] acpi_os_purge_cache+0xe/0x12
       [<ffffffff804a6cbd>] acpi_purge_cached_objects+0x15/0x3d
       [<ffffffff804a6d4d>] acpi_initialize_objects+0x4e/0x59
       [<ffffffff8130559b>] acpi_init+0x91/0x226
       [<ffffffff80209265>] do_one_initcall+0x45/0x190
       [<ffffffff812e5c9b>] kernel_init+0x14d/0x1b2
       [<ffffffff8020d919>] child_rip+0xa/0x11
       [<ffffffffffffffff>] 0xffffffffffffffff

-> #0 (&n->list_lock){++..}:
       [<ffffffff80270495>] __lock_acquire+0xea5/0x1160
       [<ffffffff802707e1>] lock_acquire+0x91/0xc0
       [<ffffffff806a5441>] _spin_lock+0x41/0x80
       [<ffffffff802dfb23>] __slab_free+0x3a3/0x3f0
       [<ffffffff802dfec4>] kmem_cache_free+0xa4/0x110
       [<ffffffff8046958b>] free_object+0x6b/0xd0
-> (&db->lock) taken
       [<ffffffff804696aa>] __debug_check_no_obj_freed+0xba/0x170
       [<ffffffff80469775>] debug_check_no_obj_freed+0x15/0x20
       [<ffffffff802dff0c>] kmem_cache_free+0xec/0x110
       [<ffffffff8024264b>] __cleanup_signal+0x1b/0x20
       [<ffffffff80248273>] release_task+0x233/0x3d0
       [<ffffffff80248960>] wait_consider_task+0x550/0x8b0
       [<ffffffff80248e16>] do_wait+0x156/0x350
       [<ffffffff802490a6>] sys_wait4+0x96/0xf0
       [<ffffffff8020c86b>] system_call_fastpath+0x16/0x1b
       [<ffffffffffffffff>] 0xffffffffffffffff

other info that might help us debug this:

2 locks held by make/9475:
 #0:  (tasklist_lock){..??}, at: [<ffffffff80248084>] release_task+0x44/0x3d0
 #1:  (&obj_hash[i].lock){++..}, at: [<ffffffff8046965e>]
__debug_check_no_obj_freed+0x6e/0x170

stack backtrace:
Pid: 9475, comm: make Not tainted 2.6.27-rc4-229c-debug #1

Call Trace:
 [<ffffffff8026e2b7>] print_circular_bug_tail+0xa7/0xf0
 [<ffffffff80270495>] __lock_acquire+0xea5/0x1160
 [<ffffffff802707e1>] lock_acquire+0x91/0xc0
 [<ffffffff802dfb23>] ? __slab_free+0x3a3/0x3f0
 [<ffffffff806a5441>] _spin_lock+0x41/0x80
 [<ffffffff802dfb23>] ? __slab_free+0x3a3/0x3f0
 [<ffffffff802dfb23>] __slab_free+0x3a3/0x3f0
 [<ffffffff8046958b>] ? free_object+0x6b/0xd0
 [<ffffffff802dfec4>] kmem_cache_free+0xa4/0x110
 [<ffffffff8046958b>] ? free_object+0x6b/0xd0
 [<ffffffff8046958b>] free_object+0x6b/0xd0
-> &db->lock taken
 [<ffffffff804696aa>] __debug_check_no_obj_freed+0xba/0x170
 [<ffffffff80469775>] debug_check_no_obj_freed+0x15/0x20
 [<ffffffff802dff0c>] kmem_cache_free+0xec/0x110
 [<ffffffff8024264b>] ? __cleanup_signal+0x1b/0x20
 [<ffffffff8024264b>] __cleanup_signal+0x1b/0x20
 [<ffffffff80248273>] release_task+0x233/0x3d0
 [<ffffffff80248960>] wait_consider_task+0x550/0x8b0
 [<ffffffff80248e16>] do_wait+0x156/0x350
 [<ffffffff8023b6f0>] ? default_wake_function+0x0/0x10
 [<ffffffff802490a6>] sys_wait4+0x96/0xf0
 [<ffffffff8020c86b>] system_call_fastpath+0x16/0x1b
-- 
Daniel J Blueman

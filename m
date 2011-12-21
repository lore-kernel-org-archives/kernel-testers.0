From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Resend] 3.2-rc6+: Reported regressions from 3.0 and 3.1
Date: Tue, 20 Dec 2011 18:31:15 -0800
Message-ID: <CA+55aFzee7ORKzjZ-_PrVy796k2ASyTe_Odz=ji7f1VzToOkKw@mail.gmail.com>
References: <201112210054.46995.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:sender:in-reply-to:references:from:date
         :x-google-sender-auth:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=ZhcZXpowfFwN8MtOnA3E47K0iTSfr7W8BNFFDLEpFzA=;
        b=eNgm/KkyUBNBgIRX7ra+z6CNr3KJsotSufCg1BmpHNQ/oAtSuJiA0rf4r1dbbrQ6uT
         apxnx3dx14TyqFPy+q8/UOugVMEvqW7+mqkR8olfk5vOAQJGMfAypYlrWKkKx3zLeXcZ
         /WeSxJrLWlZ8ZqrS8GHgG5BAM+c7UWlUQggFY=
In-Reply-To: <201112210054.46995.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Dave Kleikamp <shaggy-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, jfs-discussion-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org

On Tue, Dec 20, 2011 at 3:54 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>
> Subject =A0 =A0: Regression: "irqpoll" hasn't been working for me sin=
ce March 16 IRQ
> Submitter =A0: Edward Donovan <edward.donovan-mb/Bq7DTvoSsTnJN9+BGXg@public.gmane.org>
> Date =A0 =A0 =A0 : 2011-10-19 22:09
> Message-ID : CADdbW+HXdCPfJu2RTF6zz+ujCmiu_dmZwL2iScuF53p=3DAaZ1Uw@ma=
il.gmail.com
> References : http://marc.info/?l=3Dlinux-kernel&m=3D131914554220679&w=
=3D2

Edward fixed this in commit 52553ddffad76ccf192d4dd9ce88d5818f57f62a.

> Subject =A0 =A0: Linus GIT - INFO: possible circular locking dependen=
cy detected
> Submitter =A0: Miles Lane <miles.lane-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 : 2011-11-03 15:57
> Message-ID : CAHFgRy8S0xLfhZxTUOEH5A0PL_Fb79-0-gmbQ=3D9h2D-xMqt1hA@ma=
il.gmail.com
> References : http://marc.info/?l=3Dlinux-kernel&m=3D132033587908426&w=
=3D2

I *think* this is fixed by the revert in commit 5e442a493fc5.

> Subject =A0 =A0: Sparc-32 doesn't work in 3.1.
> Submitter =A0: Rob Landley <rob-VoJi6FS/r0vR7s880joybQ@public.gmane.org>
> Date =A0 =A0 =A0 : 2011-11-12 11:22
> Message-ID : 4EBEAB5A.5020809-VoJi6FS/r0vR7s880joybQ@public.gmane.org
> References : http://www.spinics.net/lists/kernel/msg1260383.html

I'm pretty sure this is fixed by commit b1f44e13a525.

> Subject =A0 =A0: WARNING: at mm/slub.c:3357, kernel BUG at mm/slub.c:=
3413
> Submitter =A0: Markus Trippelsdorf <markus-xp2qqqlHh3xzoYq+O6RWwA@public.gmane.org>
> Date =A0 =A0 =A0 : 2011-11-18 7:25
> Message-ID : 20111118072519.GA1615-tLCgZGx+iJ+kxVt8IV0GqQ@public.gmane.org
> References : http://marc.info/?l=3Dlinux-kernel&m=3D132160119031794&w=
=3D2

This is a combination one, I think. There's some kexec trouble with
DRI and Radeons, and there on PPC the SLUB case was done incorrectly.

The PPC case was fixed, the DRI/Radeon/kexec thing is pending for next
release, I'm afraid.

> Subject =A0 =A0: Bisected regression: hang on i915 between 3.1.0-rc9 =
and 3.1.0
> Submitter =A0: Meelis Roos <mroos-Y27EyoLml9s@public.gmane.org>
> Date =A0 =A0 =A0 : 2011-11-22 10:15
> Message-ID : alpine.SOC.1.00.1111221207090.6490-ptEonEWSGqKptlylMvRsHA@public.gmane.org
> References : http://marc.info/?l=3Dlinux-kernel&m=3D132195700023709&w=
=3D2

This is i915 vs VT-d. It may be fixed in current -git, but basically
people should try to avoid using VT-d with i915, there seem to be
hardware bugs wrt the graphics semaphores and power management code.

> Subject =A0 =A0: 3.2-rc2 regression: floppy driver breaks boot
> Submitter =A0: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
> Date =A0 =A0 =A0 : 2011-11-22 11:14
> Message-ID : 20111122111405.GA28215-I/5MKhXcvmPrBKCeMvbIDA@public.gmane.org
> References : http://marc.info/?l=3Dlinux-kernel&m=3D132196052124801&w=
=3D2

Hmm. I'd love to get more info. Turning off floppy support may work
around it, but I don't think we've actually seen the oops.

> Subject =A0 =A0: i915: 3.2 rc1/2 KMS regression
> Submitter =A0: Patrik Kullman <patrik.kullman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 : 2011-11-23 23:43
> Message-ID : CAGPN=3D9THOv-
> M4Td4haE94uDcsAjW3eGMG7ioLeu+p8xUOBPd7w-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org
> References : http://marc.info/?l=3Dlinux-kernel&m=3D132209186403288&w=
=3D2

=46ixed by commit ed4a51842a9d which reverted the problematic commit.

> Subject =A0 =A0: [regression] WARNING: at drivers/block/floppy.c:2929
> do_fd_request+0xb7/0xb9() in 3.2.0-rc2 and 3
> Submitter =A0: Ralf Hildebrandt <Ralf.Hildebrandt-jq1tPX9l7E6ELgA04lAiVw@public.gmane.org>
> Date =A0 =A0 =A0 : 2011-11-25 10:34
> Message-ID : 20111125103420.GO4581-jq1tPX9l7E6ELgA04lAiVw@public.gmane.org
> References : http://marc.info/?l=3Dlinux-kernel&m=3D132221799501685&w=
=3D2

This should be fixed by commit 4eabc941259f.

I wonder if that's related to the floppy issue above? Nothing really
changed in the floppy driver itself, so it should be something about
the block layer..

> Subject =A0 =A0: 3.2-rc2 regression due to commit "USB: EHCI: fix HUB=
 TT scheduling
> issue with iso transfer" 811c926c538f7e8d3c08b630dd5844efd7e000f6
> Submitter =A0: Sander Eikelenboom <linux-6SM94LqRVpn6gRhOQ7JHfg@public.gmane.org>
> Date =A0 =A0 =A0 : 2011-11-26 15:47
> Message-ID : 1001209018.20111126164712-6SM94LqRVpn6gRhOQ7JHfg@public.gmane.org
> References : http://marc.info/?l=3Dlinux-kernel&m=3D132232295425393&w=
=3D2

=46ixed by commit e3420901eba6.

> Subject =A0 =A0: 3.2-rc3+: [drm:i915_hangcheck_elapsed] ERROR Hangche=
ck timer
> elapsed... GPU hung
> Submitter =A0: Sergei Trofimovich <slyich-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 : 2011-12-02 17:56
> Message-ID : 20111202205601.115522b1-rUBWEpAk+NE@public.gmane.org
> References : http://marc.info/?l=3Dlinux-kernel&m=3D132284845705156&w=
=3D2

I think this is the same i915 issue above, fixed by the same commit
ed4a51842a9d.

> Subject =A0 =A0: [BUG] deadlock: jfs (3.2.0-rc4-00154-g8e8da02)
> Submitter =A0: Nico Schottelius <nico-linux-20111201-xuaVFQXs+5hIG4jRRZ66WA@public.gmane.org>
> Date =A0 =A0 =A0 : 2011-12-06 10:05
> Message-ID : 20111206100533.GB6161-xuaVFQXs+5hIG4jRRZ66WA@public.gmane.org
> References : http://marc.info/?l=3Dlinux-kernel&m=3D132317917827825&w=
=3D2

That's an odd bug-report. I think Nico should try to cut-and-paste
more of the relevant problem..

It's all there in the attached xz-file, but I doubt anybody followed
up on it because it's so hidden..

Unpacked, and added Dave and jfs-discussion to the cc:

    [ 6281.127353] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
    [ 6281.127355] [ INFO: inconsistent lock state ]
    [ 6281.127358] 3.2.0-rc4-00154-g8e8da02 #91
    [ 6281.127360] ---------------------------------
    [ 6281.127363] inconsistent {RECLAIM_FS-ON-W} -> {IN-RECLAIM_FS-W} =
usage.
    [ 6281.127366] kswapd0/30 [HC0[0]:SC0[0]:HE1:SE1] takes:
    [ 6281.127368]  (&jfs_ip->rdwrlock#2){++++?+}, at:
[<ffffffffa01958d7>] jfs_get_block+0x57/0x220 [jfs]
    [ 6281.127381] {RECLAIM_FS-ON-W} state was registered at:
    [ 6281.127383]   [<ffffffff810a2c71>] mark_held_locks+0x61/0x140
    [ 6281.127392]   [<ffffffff810a3401>] lockdep_trace_alloc+0x71/0xd0
    [ 6281.127399]   [<ffffffff8115daed>] kmem_cache_alloc+0x2d/0x170
    [ 6281.127406]   [<ffffffff8124d7d6>] radix_tree_preload+0x66/0xf0
    [ 6281.127414]   [<ffffffff81110e93>] add_to_page_cache_locked+0x73=
/0x170
    [ 6281.127422]   [<ffffffff81110fb1>] add_to_page_cache_lru+0x21/0x=
50
    [ 6281.127428]   [<ffffffff8111112a>] do_read_cache_page+0x6a/0x170
    [ 6281.127434]   [<ffffffff8111127c>] read_cache_page_async+0x1c/0x=
20
    [ 6281.127441]   [<ffffffff8111128e>] read_cache_page+0xe/0x20
    [ 6281.127446]   [<ffffffffa01ae406>] __get_metapage+0x1c6/0x5c0 [j=
fs]
    [ 6281.127455]   [<ffffffffa01a018a>] diWrite+0xea/0x7f0 [jfs]
    [ 6281.127461]   [<ffffffffa01b3b04>] txCommit+0x1d4/0xe40 [jfs]
    [ 6281.127468]   [<ffffffffa01982e3>] jfs_unlink+0x2a3/0x390 [jfs]
    [ 6281.127474]   [<ffffffff8118255f>] vfs_unlink+0x9f/0x110
    [ 6281.127479]   [<ffffffff8118277a>] do_unlinkat+0x1aa/0x1d0
    [ 6281.127482]   [<ffffffff81184236>] sys_unlink+0x16/0x20
    [ 6281.127486]   [<ffffffff8143e202>] system_call_fastpath+0x16/0x1=
b
    [ 6281.127491] irq event stamp: 26965295
    [ 6281.127493] hardirqs last  enabled at (26965295):
[<ffffffff8111a3d5>] clear_page_dirty_for_io+0x105/0x130
    [ 6281.127498] hardirqs last disabled at (26965294):
[<ffffffff8111a378>] clear_page_dirty_for_io+0xa8/0x130
    [ 6281.127503] softirqs last  enabled at (26964300):
[<ffffffff8106cda7>] __do_softirq+0x137/0x2a0
    [ 6281.127508] softirqs last disabled at (26964283):
[<ffffffff814404fc>] call_softirq+0x1c/0x30
    [ 6281.127513]
    [ 6281.127514] other info that might help us debug this:
    [ 6281.127516]  Possible unsafe locking scenario:
    [ 6281.127517]
    [ 6281.127518]        CPU0
    [ 6281.127519]        ----
    [ 6281.127521]   lock(&jfs_ip->rdwrlock);
    [ 6281.127524]   <Interrupt>
    [ 6281.127525]     lock(&jfs_ip->rdwrlock);
    [ 6281.127528]
    [ 6281.127529]  *** DEADLOCK ***
    [ 6281.127529]
    [ 6281.127531] no locks held by kswapd0/30.
    [ 6281.127533]
    [ 6281.127533] stack backtrace:
    [ 6281.127536] Pid: 30, comm: kswapd0 Tainted: G         C
3.2.0-rc4-00154-g8e8da02 #91
    [ 6281.127539] Call Trace:
    [ 6281.127545]  [<ffffffff8143374c>] print_usage_bug.part.34+0x285/=
0x294
    [ 6281.127552]  [<ffffffff8102494f>] ? save_stack_trace+0x2f/0x50
    [ 6281.127559]  [<ffffffff8109ffe0>] mark_lock+0x540/0x600
    [ 6281.127564]  [<ffffffff8109ef60>] ?
print_irq_inversion_bug.part.31+0x1f0/0x1f0
    [ 6281.127568]  [<ffffffff810a0677>] __lock_acquire+0x5d7/0x1d10
    [ 6281.127573]  [<ffffffff81118394>] ? free_pcppages_bulk+0x34/0x43=
0
    [ 6281.127580]  [<ffffffffa01958d7>] ? jfs_get_block+0x57/0x220 [jf=
s]
    [ 6281.127584]  [<ffffffff810a23a2>] lock_acquire+0x92/0x160
    [ 6281.127590]  [<ffffffffa01958d7>] ? jfs_get_block+0x57/0x220 [jf=
s]
    [ 6281.127595]  [<ffffffff811a5253>] ? create_empty_buffers+0x53/0x=
e0
    [ 6281.127600]  [<ffffffff8108e77f>] down_write_nested+0x2f/0x60
    [ 6281.127606]  [<ffffffffa01958d7>] ? jfs_get_block+0x57/0x220 [jf=
s]
    [ 6281.127612]  [<ffffffffa01958d7>] jfs_get_block+0x57/0x220 [jfs]
    [ 6281.127616]  [<ffffffff8143d24b>] ? _raw_spin_unlock+0x2b/0x60
    [ 6281.127620]  [<ffffffff811a65d1>] __block_write_full_page+0x101/=
0x3a0
    [ 6281.127625]  [<ffffffff811a5fe0>] ? block_read_full_page+0x3d0/0=
x3d0
    [ 6281.127631]  [<ffffffffa0195880>] ? jfs_writepage+0x20/0x20 [jfs=
]
    [ 6281.127637]  [<ffffffff811a6954>] block_write_full_page_endio+0x=
e4/0x130
    [ 6281.127642]  [<ffffffff811a69b5>] block_write_full_page+0x15/0x2=
0
    [ 6281.127651]  [<ffffffffa0195878>] jfs_writepage+0x18/0x20 [jfs]
    [ 6281.127657]  [<ffffffff8112427c>] shrink_page_list+0x56c/0x980
    [ 6281.127662]  [<ffffffff8111e596>] ? __pagevec_release+0x26/0x40
    [ 6281.127666]  [<ffffffff81124ac2>] shrink_inactive_list+0x152/0x4=
f0
    [ 6281.127670]  [<ffffffff8112563c>] shrink_zone+0x47c/0x5c0
    [ 6281.127673]  [<ffffffff81122fef>] ? shrink_slab+0x1ff/0x380
    [ 6281.127678]  [<ffffffff8143945b>] ? __schedule+0x35b/0xa30
    [ 6281.127682]  [<ffffffff811269c5>] balance_pgdat+0x4e5/0x6d0
    [ 6281.127685]  [<ffffffff81126d28>] kswapd+0x178/0x440
    [ 6281.127691]  [<ffffffff81089840>] ? __init_waitqueue_head+0x60/0=
x60
    [ 6281.127695]  [<ffffffff81126bb0>] ? balance_pgdat+0x6d0/0x6d0
    [ 6281.127699]  [<ffffffff81088e97>] kthread+0xa7/0xb0
    [ 6281.127703]  [<ffffffff810a2efd>] ? trace_hardirqs_on+0xd/0x10
    [ 6281.127707]  [<ffffffff81440404>] kernel_thread_helper+0x4/0x10
    [ 6281.127711]  [<ffffffff8143d838>] ? retint_restore_args+0x13/0x1=
3
    [ 6281.127715]  [<ffffffff81088df0>] ? __init_kthread_worker+0x70/0=
x70
    [ 6281.127719]  [<ffffffff81440400>] ? gs_change+0x13/0x13

Hmm?

                        Linus

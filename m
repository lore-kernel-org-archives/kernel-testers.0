From: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Subject: Re: 2.6.28-rc2-mm1: possible circular locking
Date: Fri, 31 Oct 2008 12:21:16 +0900 (JST)
Message-ID: <20081031121827.AACB.KOSAKI.MOTOHIRO@jp.fujitsu.com>
References: <200810292146.03967.m.kozlowski@tuxland.pl> <20081029135840.0a50e19c.akpm@linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081029135840.0a50e19c.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org, Mariusz Kozlowski <m.kozlowski-NWF1p15JEu3VItvQsEIGlw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>, Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org

> > stack backtrace:
> > Pid: 4733, comm: psi Not tainted 2.6.28-rc2-mm1 #1
> > Call Trace:
> >  [<c013a0fd>] print_circular_bug_tail+0x78/0xb5
> >  [<c0137a31>] ? print_circular_bug_entry+0x43/0x4b
> >  [<c013a6e4>] validate_chain+0x5aa/0xfe0
> >  [<c0118465>] ? hrtick_update+0x23/0x25
> >  [<c013b388>] __lock_acquire+0x26e/0x98d
> >  [<c0118ac0>] ? default_wake_function+0xb/0xd
> >  [<c013bb03>] lock_acquire+0x5c/0x74
> >  [<c012a330>] ? flush_work+0x2d/0xcb
> >  [<c012a35c>] flush_work+0x59/0xcb
> >  [<c012a330>] ? flush_work+0x2d/0xcb
> >  [<c0139ae6>] ? trace_hardirqs_on+0xb/0xd
> >  [<c012a531>] ? __queue_work+0x26/0x2b
> >  [<c012a58c>] ? queue_work_on+0x37/0x47
> >  [<c014fda7>] ? lru_add_drain_per_cpu+0x0/0xa
> >  [<c014fda7>] ? lru_add_drain_per_cpu+0x0/0xa
> >  [<c012a7a6>] schedule_on_each_cpu+0x65/0x7f
> >  [<c014fb7e>] lru_add_drain_all+0xd/0xf
> >  [<c0157fb2>] __mlock_vma_pages_range+0x44/0x206
> >  [<c0159438>] ? vma_adjust+0x17e/0x384
> >  [<c015971f>] ? split_vma+0xe1/0xf7
> >  [<c01582d1>] mlock_fixup+0x15d/0x1c9
> >  [<c0158479>] do_mlock+0x96/0xc8
> >  [<c02bcb2a>] ? down_write+0x42/0x68
> >  [<c015860e>] sys_mlock+0xb2/0xb6
> >  [<c0102f91>] sysenter_do_call+0x12/0x35
> > 
> 
> This is similar to the problem which
> mm-move-migrate_prep-out-from-under-mmap_sem.patch was supposed to fix.
> 
> We've been calling schedule_on_each_cpu() from within
> lru_add_drain_all() for ages.  What changed to cause all this
> to start happening?

Agreed with there are the same problem.
please assign this bug to me.



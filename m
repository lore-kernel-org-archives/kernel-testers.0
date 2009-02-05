From: Matthias Reichl <hias-vtPv7MOkFPkAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12612] hard lockup when interrupting cdda2wav
Date: Thu, 5 Feb 2009 14:16:44 +0100
Message-ID: <20090205131644.GA5731@horus.com>
References: <a47yn9c9JrF.A.hz.L5YiJB@chimera> <CGyEB0S4BpO.A.fLB.T5YiJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <CGyEB0S4BpO.A.fLB.T5YiJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>

On Wed, Feb 04, 2009 at 11:58:51AM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.27 and 2.6.28.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12612
> Subject		: hard lockup when interrupting cdda2wav
> Submitter	: Matthias Reichl <hias-vtPv7MOkFPkAvxtiuMwx3w@public.gmane.org>
> Date		: 2009-01-28 16:41 (8 days old)
> References	: http://marc.info/?l=linux-kernel&m=123316111415677&w=4
> Handled-By	: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>

This bug is still present in 2.6.28.3.

so long,

Hias

=============================================
[ INFO: possible recursive locking detected ]
2.6.28.3-dbg #1
---------------------------------------------
swapper/0 is trying to acquire lock:
 (&q->__queue_lock){.+..}, at: [<ffffffff8040e5f5>] blk_put_request+0x25/0x60

but task is already holding lock:
 (&q->__queue_lock){.+..}, at: [<ffffffff8040e4da>] blk_end_io+0x5a/0xa0

other info that might help us debug this:
1 lock held by swapper/0:
 #0:  (&q->__queue_lock){.+..}, at: [<ffffffff8040e4da>] blk_end_io+0x5a/0xa0

stack backtrace:
Pid: 0, comm: swapper Not tainted 2.6.28.3-dbg #1
Call Trace:
 <IRQ>  [<ffffffff8026cc87>] __lock_acquire+0x1797/0x1930
 [<ffffffff806abd7b>] error_exit+0x29/0xa9
 [<ffffffff80521e20>] sg_rq_end_io+0x0/0x2e0
 [<ffffffff8026ceba>] lock_acquire+0x9a/0xe0
 [<ffffffff8040e5f5>] blk_put_request+0x25/0x60
 [<ffffffff806ab763>] _spin_lock_irqsave+0x43/0x90
 [<ffffffff8040e5f5>] blk_put_request+0x25/0x60
 [<ffffffff8040e5f5>] blk_put_request+0x25/0x60
 [<ffffffff80520974>] sg_finish_rem_req+0xa4/0x100
 [<ffffffff80522098>] sg_rq_end_io+0x278/0x2e0
 [<ffffffff8040e281>] end_that_request_last+0x61/0x260
 [<ffffffff8040e4e8>] blk_end_io+0x68/0xa0
 [<ffffffff80508061>] scsi_end_request+0x41/0xd0
 [<ffffffff80508750>] scsi_io_completion+0x130/0x470
 [<ffffffff804133e5>] blk_done_softirq+0x75/0x90
 [<ffffffff802488ab>] __do_softirq+0x9b/0x180
 [<ffffffff80213df3>] native_sched_clock+0x13/0x70
 [<ffffffff8020d6ec>] call_softirq+0x1c/0x30
 [<ffffffff8020f175>] do_softirq+0x65/0xa0
 [<ffffffff80248345>] irq_exit+0xa5/0xb0
 [<ffffffff8020f467>] do_IRQ+0x107/0x1d0
 [<ffffffff8020c7fb>] ret_from_intr+0x0/0xf
 <EOI>  [<ffffffff80214ba6>] mwait_idle+0x56/0x60
 [<ffffffff80214b9d>] mwait_idle+0x4d/0x60
 [<ffffffff8020b353>] cpu_idle+0x63/0xc0

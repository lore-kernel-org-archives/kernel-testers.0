From: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected) [Bug
	12465]
Date: Sun, 15 Feb 2009 20:18:04 +1030
Message-ID: <1234691284.4967.23.camel@kulgan.wumi.org.au>
References: <sTyoMUwdm9B.A.QCH.U40lJB@chimera>
	 <ROx6X68CGJG.A.54H.w40lJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <ROx6X68CGJG.A.54H.w40lJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, bugme-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org, Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

On Sat, 2009-02-14 at 21:50 +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.27 and 2.6.28.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> be listed and let me know (either way).

Yes, this should still be listed.

I just tested against 2.6.29-rc5 and the problem is as bad as ever
(perhaps worse?)

--- hermes-old.wumi.org.au ping statistics ---
900 packets transmitted, 448 received, +317 errors, 50% packet loss, time 899845ms
rtt min/avg/max/mdev = 0.131/420.015/10890.699/1297.022 ms, pipe 11

The guest being pinged crashed during the test - the QEMU monitor was
accessible, but the guest didn't respond to "sendkey alt-sysrq-s", etc.
This was the last thing in the guest syslog after reboot:

Feb 15 19:48:58 hermes-old kernel: ------------[ cut here ]------------
Feb 15 19:48:58 hermes-old kernel: WARNING: at net/sched/sch_generic.c:219 dev_watchdog+0x111/0x195()
Feb 15 19:48:58 hermes-old kernel: NETDEV WATCHDOG: eth0 (8139too): transmit timed out
Feb 15 19:48:58 hermes-old kernel: Pid: 0, comm: swapper Not tainted 2.6.27.10 #1
Feb 15 19:48:58 hermes-old kernel:  [<c011d75c>] warn_slowpath+0x5c/0x81
Feb 15 19:48:58 hermes-old kernel:  [<c02f5f7c>] nf_hook_slow+0x44/0xb1
Feb 15 19:48:58 hermes-old kernel:  [<c02d93f1>] dev_queue_xmit+0x3da/0x411
Feb 15 19:48:58 hermes-old kernel:  [<c030043d>] ip_finish_output+0x1f9/0x231
Feb 15 19:48:58 hermes-old kernel:  [<c01daeee>] __next_cpu+0x12/0x21
Feb 15 19:48:58 hermes-old kernel:  [<c0116b42>] find_busiest_group+0x232/0x69f
Feb 15 19:48:58 hermes-old kernel:  [<c01160dc>] update_curr+0x41/0x65
Feb 15 19:48:58 hermes-old kernel:  [<c02e33b5>] dev_watchdog+0x111/0x195
Feb 15 19:48:58 hermes-old kernel:  [<c011822f>] enqueue_task_fair+0x16/0x24
Feb 15 19:48:58 hermes-old kernel:  [<c0115645>] enqueue_task+0xa/0x14
Feb 15 19:48:58 hermes-old kernel:  [<c01156d5>] activate_task+0x16/0x1b
Feb 15 19:48:58 hermes-old kernel:  [<c0119c8c>] try_to_wake_up+0x131/0x13a
Feb 15 19:48:58 hermes-old kernel:  [<c02e32a4>] dev_watchdog+0x0/0x195
Feb 15 19:48:58 hermes-old kernel:  [<c012424c>] run_timer_softirq+0xf5/0x14a
Feb 15 19:48:58 hermes-old kernel:  [<c0120f60>] __do_softirq+0x5d/0xc1
Feb 15 19:48:58 hermes-old kernel:  [<c0120ff6>] do_softirq+0x32/0x36
Feb 15 19:48:58 hermes-old kernel:  [<c012112c>] irq_exit+0x35/0x40
Feb 15 19:48:58 hermes-old kernel:  [<c010e8db>] smp_apic_timer_interrupt+0x6e/0x7b
Feb 15 19:48:58 hermes-old kernel:  [<c01035ac>] apic_timer_interrupt+0x28/0x30
Feb 15 19:48:58 hermes-old kernel:  [<c0107386>] default_idle+0x2a/0x3d
Feb 15 19:48:58 hermes-old kernel:  [<c0101900>] cpu_idle+0x5c/0x84
Feb 15 19:48:58 hermes-old kernel:  =======================
Feb 15 19:48:58 hermes-old kernel: ---[ end trace eff10a8043ac4e7b ]---
Feb 15 19:49:01 hermes-old kernel: eth0: Transmit timeout, status 0d 0000 c07f media d0.
Feb 15 19:49:01 hermes-old kernel: eth0: Tx queue start entry 839  dirty entry 839.
Feb 15 19:49:01 hermes-old kernel: eth0:  Tx descriptor 0 is 0008a03c.
Feb 15 19:49:01 hermes-old kernel: eth0:  Tx descriptor 1 is 0008a062.
Feb 15 19:49:01 hermes-old kernel: eth0:  Tx descriptor 2 is 0008a062.
Feb 15 19:49:01 hermes-old kernel: eth0:  Tx descriptor 3 is 0008a05b. (queue head)
Feb 15 19:49:01 hermes-old kernel: eth0: link up, 100Mbps, full-duplex, lpa 0x05E1

I think I saw some patches to fix the latency tracer for non-RT tasks on
the mailing list a while ago. If that's still going to be a useful test,
can someone give me some hints on which kernel tree and/or patches to
download to get that working? The simpler you can make it, the better ;)

Cheers,
Kevin.


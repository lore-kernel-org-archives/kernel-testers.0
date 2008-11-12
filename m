From: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
Subject: Re: [Bug #11989] Suspend failure on NForce4-based boards due to chanes in stop_machine
Date: Wed, 12 Nov 2008 14:00:03 +1030
Message-ID: <200811121400.04278.rusty@rustcorp.com.au>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera> <19f34abd0811110647y2a00cfbfr2b219a5aa1b3ac9f@mail.gmail.com> <20081111163118.GA18214@redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081111163118.GA18214-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Wednesday 12 November 2008 03:01:18 Oleg Nesterov wrote:
> On 11/11, Vegard Nossum wrote:
> > I think that the test for stop_machine_data in stop_cpu() should not
> > have been moved from __stop_machine(). Because now cpu_online_map may
> > change in-between calls to stop_cpu() (if the callback tries to
> > online/offline CPUs), and the end result may be different.
>
> I don't think this is possible, the callback must not be called unless
> all threads ack (at least) the STOPMACHINE_PREPARE state.
>
>
> Off-topic question, __stop_machine() does:
>
> 	/* Schedule the stop_cpu work on all cpus: hold this CPU so one
> 	 * doesn't hit this CPU until we're ready. */
> 	get_cpu();
> 	for_each_online_cpu(i) {
> 		sm_work = percpu_ptr(stop_machine_work, i);
> 		INIT_WORK(sm_work, stop_cpu);
> 		queue_work_on(i, stop_machine_wq, sm_work);
> 	}
> 	/* This will release the thread on our CPU. */
> 	put_cpu();
>
> Don't we actually need preempt_disable/preempt_enable instead of
> get/put cpu? (yes, there the same currently). We don't care about
> the CPU we are running on, and it can't go away until we queue all
> works. But we must ensure that stop_cpu() on the same CPU can't
> preempt us, right?

A subtle distinction, but yes.  It used to be true before the recent changes, 
where we manually did "this" cpu.

Cheers,
Rusty.

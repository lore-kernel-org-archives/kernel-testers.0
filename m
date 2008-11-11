From: Oleg Nesterov <oleg@redhat.com>
Subject: Re: [Bug #11989] Suspend failure on NForce4-based boards due to
	chanes in stop_machine
Date: Tue, 11 Nov 2008 17:31:18 +0100
Message-ID: <20081111163118.GA18214@redhat.com>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera> <20081110120401.GA15518@osiris.boeblingen.de.ibm.com> <200811101547.21325.rjw@sisk.pl> <200811102355.42389.rjw@sisk.pl> <20081111105214.GA15645@elte.hu> <19f34abd0811110647y2a00cfbfr2b219a5aa1b3ac9f@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756025AbYKKPdk@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <19f34abd0811110647y2a00cfbfr2b219a5aa1b3ac9f@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Vegard Nossum <vegard.nossum@gmail.com>
Cc: Ingo Molnar <mingo@elte.hu>, "Rafael J. Wysocki" <rjw@sisk.pl>, Heiko Carstens <heiko.carstens@de.ibm.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Rusty Russell <rusty@rustcorp.com.au>, Peter Zijlstra <a.p.zijlstra@chello.nl>, Dmitry Adamushko <dmitry.adamushko@gmail.com>, Andrew Morton <akpm@linux-foundation.org>

On 11/11, Vegard Nossum wrote:
>
> I think that the test for stop_machine_data in stop_cpu() should not
> have been moved from __stop_machine(). Because now cpu_online_map may
> change in-between calls to stop_cpu() (if the callback tries to
> online/offline CPUs), and the end result may be different.

I don't think this is possible, the callback must not be called unless
all threads ack (at least) the STOPMACHINE_PREPARE state.


Off-topic question, __stop_machine() does:
	
	/* Schedule the stop_cpu work on all cpus: hold this CPU so one
	 * doesn't hit this CPU until we're ready. */
	get_cpu();
	for_each_online_cpu(i) {
		sm_work = percpu_ptr(stop_machine_work, i);
		INIT_WORK(sm_work, stop_cpu);
		queue_work_on(i, stop_machine_wq, sm_work);
	}
	/* This will release the thread on our CPU. */
	put_cpu();

Don't we actually need preempt_disable/preempt_enable instead of
get/put cpu? (yes, there the same currently). We don't care about
the CPU we are running on, and it can't go away until we queue all
works. But we must ensure that stop_cpu() on the same CPU can't
preempt us, right?

Oleg.

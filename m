From: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Tue, 20 Jan 2009 17:19:36 +0100
Message-ID: <1232468376.4886.88.camel@laptop>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera>
	 <cX2gZ6Cy9nC.A.4dB.bJRdJB@chimera>
	 <1232410363.4768.21.camel@kulgan.wumi.org.au>
	 <20090120113546.GA26571@elte.hu>
	 <1232455343.4895.4.camel@kulgan.wumi.org.au>
	 <20090120125652.GA1457@elte.hu>
	 <1232461380.4895.33.camel@kulgan.wumi.org.au>
	 <20090120142515.GC10224@elte.hu>
	 <1232466686.4895.45.camel@kulgan.wumi.org.au>
	 <20090120160613.GA32650@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090120160613.GA32650-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>, Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, bugme-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org

On Tue, 2009-01-20 at 17:06 +0100, Ingo Molnar wrote:
> se.wait_max                        :           -92.027877
> 
> that field is not supposed to be negative. Mike, Peter, any ideas?

Possibly unrelated, but whilst I was poking at try_to_wake_up yesterday,
I thought I spotted a site where we fail to update rq clock.

Since we just moved the task to a new cpu (and thus rq) we need to
update_rq_clock() again.

diff --git a/kernel/sched.c b/kernel/sched.c
index d7ae5f4..6cd5e52 100644
--- a/kernel/sched.c
+++ b/kernel/sched.c
@@ -2398,6 +2398,7 @@ static int try_to_wake_up(struct task_struct *p, unsigned int state, int sync)
 	if (cpu != orig_cpu) {
 		set_task_cpu(p, cpu);
 		task_rq_unlock(rq, &flags);
+		update_rq_clock(rq);
 		/* might preempt at this point */
 		rq = task_rq_lock(p, &flags);
 		old_state = p->state;


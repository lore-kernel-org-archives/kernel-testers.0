From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11989] Suspend failure on NForce4-based boards due to chanes in stop_machine
Date: Sat, 15 Nov 2008 14:37:45 +0100
Message-ID: <200811151437.46270.rjw@sisk.pl>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera> <20081111105214.GA15645@elte.hu> <200811112256.58467.rusty@rustcorp.com.au>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200811112256.58467.rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Wednesday, 12 of November 2008, Rusty Russell wrote:
> On Tuesday 11 November 2008 21:22:14 Ingo Molnar wrote:
> > * Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > > So, it evidently fails while re-enabling the non-boot CPU and not
> > > during disabling it as I thought before.
> 
> (Resend, due to HTML version previously)
> 
> But what is calling stop_machine in that path?
> 
> There *is* a race, but I don't think it could cause this (we should make a
> copy of active.fnret inside the lock before returning it).

Still, that seems to be the case.

> Two patches: one fixes that race, the next adds debugging spew.
> 
> stop_machine: fix race with return value

With this patch applied (reproduced below for clarity) the problem is not
reproducible any more.

Care to push it upstream ASAP?

Thanks,
Rafael

---
stop_machine: fix race with return value

We should not access active.fnret outside the lock; in theory the next
stop_machine could overwrite it.

Signed-off-by: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
---
 kernel/stop_machine.c |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff -r d7c9a15da615 kernel/stop_machine.c
--- a/kernel/stop_machine.c	Mon Nov 10 09:47:45 2008 +1100
+++ b/kernel/stop_machine.c	Tue Nov 11 23:19:47 2008 +1030
@@ -112,7 +112,7 @@
 int __stop_machine(int (*fn)(void *), void *data, const cpumask_t *cpus)
 {
 	struct work_struct *sm_work;
-	int i;
+	int i, ret;
 
 	/* Set up initial state. */
 	mutex_lock(&lock);
@@ -137,8 +137,9 @@
 	/* This will release the thread on our CPU. */
 	put_cpu();
 	flush_workqueue(stop_machine_wq);
+	ret = active.fnret;
 	mutex_unlock(&lock);
-	return active.fnret;
+	return ret;
 }
 
 int stop_machine(int (*fn)(void *), void *data, const cpumask_t *cpus)

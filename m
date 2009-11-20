From: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: [Bug #14383] hackbench regression with kernel 2.6.32-rc1
Date: Fri, 20 Nov 2009 07:52:30 +0100
Message-ID: <1258699950.7148.9.camel@marge.simson.net>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera>
	 <xXQGFmujPl.A.65H.2TdALB@chimera>  <1258542581.3918.255.camel@laptop>
	 <1258695658.29789.27.camel@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1258695658.29789.27.camel@localhost>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Zhang, Yanmin" <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Cc: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Fri, 2009-11-20 at 13:40 +0800, Zhang, Yanmin wrote:

> Mike's patch 1b9508f6831e10 could improve netperf loopback testing.
> The latest upstream doesn't merge it yet.

The kinda ugly thing below gives me around a 4% boost for pinned tasks.
Looking around is expensive to fast movers, some cost can be avoided.

---
 kernel/sched_fair.c |   40 +++++++++++++++++++++++++++++-----------
 1 file changed, 29 insertions(+), 11 deletions(-)

Index: linux-2.6/kernel/sched_fair.c
===================================================================
--- linux-2.6.orig/kernel/sched_fair.c
+++ linux-2.6/kernel/sched_fair.c
@@ -1396,26 +1396,36 @@ static int select_task_rq_fair(struct ta
 {
 	struct sched_domain *tmp, *affine_sd = NULL, *sd = NULL;
 	int cpu = smp_processor_id();
-	int prev_cpu = task_cpu(p);
-	int new_cpu = cpu;
-	int want_affine = 0;
-	int want_sd = 1;
+	int new_cpu, prev_cpu = task_cpu(p);
+	int pinned, want_sd, want_affine = 0;
 	int sync = wake_flags & WF_SYNC;
 
-	if (sd_flag & SD_BALANCE_WAKE) {
-		if (sched_feat(AFFINE_WAKEUPS) &&
-		    cpumask_test_cpu(cpu, &p->cpus_allowed))
-			want_affine = 1;
+	rcu_read_lock();
+	pinned = !(cpumask_weight(&p->cpus_allowed) > 1);
+	new_cpu = pinned ? prev_cpu : cpu;
+	want_sd = !pinned;
+
+#ifndef CONFIG_FAIR_GROUP_SCHED
+		/*
+		 * If we don't need to balance shares, we can skip
+		 * everything below, and save some time.
+		 */
+		if (pinned)
+			goto out;
+#endif
+
+	if ((sd_flag & SD_BALANCE_WAKE) && sched_feat(AFFINE_WAKEUPS) &&
+			cpumask_test_cpu(cpu, &p->cpus_allowed)) {
+		want_affine = 1;
 		new_cpu = prev_cpu;
 	}
 
-	rcu_read_lock();
 	for_each_domain(cpu, tmp) {
 		/*
 		 * If power savings logic is enabled for a domain, see if we
 		 * are not overloaded, if so, don't balance wider.
 		 */
-		if (tmp->flags & (SD_POWERSAVINGS_BALANCE|SD_PREFER_LOCAL)) {
+		if (want_sd && tmp->flags & (SD_POWERSAVINGS_BALANCE|SD_PREFER_LOCAL)) {
 			unsigned long power = 0;
 			unsigned long nr_running = 0;
 			unsigned long capacity;
@@ -1454,7 +1464,7 @@ static int select_task_rq_fair(struct ta
 			 * If there's an idle sibling in this domain, make that
 			 * the wake_affine target instead of the current cpu.
 			 */
-			if (tmp->flags & SD_PREFER_SIBLING)
+			if (!pinned && tmp->flags & SD_PREFER_SIBLING)
 				target = select_idle_sibling(p, tmp, target);
 
 			if (target >= 0) {
@@ -1476,6 +1486,7 @@ static int select_task_rq_fair(struct ta
 			sd = tmp;
 	}
 
+#ifdef CONFIG_FAIR_GROUP_SCHED
 	if (sched_feat(LB_SHARES_UPDATE)) {
 		/*
 		 * Pick the largest domain to update shares over
@@ -1490,6 +1501,13 @@ static int select_task_rq_fair(struct ta
 			update_shares(tmp);
 	}
 
+	/*
+	 * Balance shares, but don't waste time.
+	 */
+	if (pinned)
+		goto out;
+#endif
+
 	if (affine_sd && wake_affine(affine_sd, p, sync)) {
 		new_cpu = cpu;
 		goto out;


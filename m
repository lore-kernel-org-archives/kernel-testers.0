From: venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org
Subject: [patch 4/4] cpufreq: Cleanup locking in conservative governor
Date: Thu, 02 Jul 2009 17:08:33 -0700
Message-ID: <20090703000924.273906000@intel.com>
References: <20090703000829.735976000@intel.com>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline; filename=0004-cpufreq-Cleanup-locking-in-conservative-governor.patch
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>, Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>, Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

Redesign the locking inside conservative driver. Make dbs_mutex handle all the
global state changes inside the driver and invent a new percpu mutex
to serialize percpu timer and frequency limit change.

Signed-off-by: Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
---
 drivers/cpufreq/cpufreq_conservative.c |   34 ++++++++++++-------------------
 1 files changed, 13 insertions(+), 21 deletions(-)

diff --git a/drivers/cpufreq/cpufreq_conservative.c b/drivers/cpufreq/cpufreq_conservative.c
index 58889f2..5749050 100644
--- a/drivers/cpufreq/cpufreq_conservative.c
+++ b/drivers/cpufreq/cpufreq_conservative.c
@@ -63,7 +63,12 @@ struct cpu_dbs_info_s {
 	unsigned int down_skip;
 	unsigned int requested_freq;
 	int cpu;
-	unsigned int enable:1;
+	/*
+	 * percpu mutex that serializes governor limit change with
+	 * do_dbs_timer invocation. We do not want do_dbs_timer to run
+	 * when user is changing the governor or limits.
+	 */
+	struct mutex timer_mutex;
 };
 static DEFINE_PER_CPU(struct cpu_dbs_info_s, cpu_dbs_info);
 
@@ -71,9 +76,7 @@ static unsigned int dbs_enable;	/* number of CPUs using this policy */
 
 /*
  * dbs_mutex protects data in dbs_tuners_ins from concurrent changes on
- * different CPUs. It protects dbs_enable in governor start/stop. It also
- * serializes governor limit_change with do_dbs_timer. We do not want
- * do_dbs_timer to run when user is changing the governor or limits.
+ * different CPUs. It protects dbs_enable in governor start/stop.
  */
 static DEFINE_MUTEX(dbs_mutex);
 
@@ -138,9 +141,6 @@ dbs_cpufreq_notifier(struct notifier_block *nb, unsigned long val,
 
 	struct cpufreq_policy *policy;
 
-	if (!this_dbs_info->enable)
-		return 0;
-
 	policy = this_dbs_info->cur_policy;
 
 	/*
@@ -483,17 +483,12 @@ static void do_dbs_timer(struct work_struct *work)
 
 	delay -= jiffies % delay;
 
-	mutex_lock(&dbs_mutex);
-
-	if (!dbs_info->enable) {
-		mutex_unlock(&dbs_mutex);
-		return;
-	}
+	mutex_lock(&dbs_info->timer_mutex);
 
 	dbs_check_cpu(dbs_info);
 
 	queue_delayed_work_on(cpu, kconservative_wq, &dbs_info->work, delay);
-	mutex_unlock(&dbs_mutex);
+	mutex_unlock(&dbs_info->timer_mutex);
 }
 
 static inline void dbs_timer_init(struct cpu_dbs_info_s *dbs_info)
@@ -502,7 +497,6 @@ static inline void dbs_timer_init(struct cpu_dbs_info_s *dbs_info)
 	int delay = usecs_to_jiffies(dbs_tuners_ins.sampling_rate);
 	delay -= jiffies % delay;
 
-	dbs_info->enable = 1;
 	INIT_DELAYED_WORK_DEFERRABLE(&dbs_info->work, do_dbs_timer);
 	queue_delayed_work_on(dbs_info->cpu, kconservative_wq, &dbs_info->work,
 				delay);
@@ -510,7 +504,6 @@ static inline void dbs_timer_init(struct cpu_dbs_info_s *dbs_info)
 
 static inline void dbs_timer_exit(struct cpu_dbs_info_s *dbs_info)
 {
-	dbs_info->enable = 0;
 	cancel_delayed_work_sync(&dbs_info->work);
 }
 
@@ -529,9 +522,6 @@ static int cpufreq_governor_dbs(struct cpufreq_policy *policy,
 		if ((!cpu_online(cpu)) || (!policy->cur))
 			return -EINVAL;
 
-		if (this_dbs_info->enable) /* Already enabled */
-			break;
-
 		mutex_lock(&dbs_mutex);
 
 		rc = sysfs_create_group(&policy->kobj, &dbs_attr_group);
@@ -555,6 +545,7 @@ static int cpufreq_governor_dbs(struct cpufreq_policy *policy,
 		this_dbs_info->down_skip = 0;
 		this_dbs_info->requested_freq = policy->cur;
 
+		mutex_init(&this_dbs_info->timer_mutex);
 		dbs_enable++;
 		/*
 		 * Start the timerschedule work, when this governor
@@ -596,6 +587,7 @@ static int cpufreq_governor_dbs(struct cpufreq_policy *policy,
 		mutex_lock(&dbs_mutex);
 		sysfs_remove_group(&policy->kobj, &dbs_attr_group);
 		dbs_enable--;
+		mutex_destroy(&this_dbs_info->timer_mutex);
 
 		/*
 		 * Stop the timerschedule work, when this governor
@@ -611,7 +603,7 @@ static int cpufreq_governor_dbs(struct cpufreq_policy *policy,
 		break;
 
 	case CPUFREQ_GOV_LIMITS:
-		mutex_lock(&dbs_mutex);
+		mutex_lock(&this_dbs_info->timer_mutex);
 		if (policy->max < this_dbs_info->cur_policy->cur)
 			__cpufreq_driver_target(
 					this_dbs_info->cur_policy,
@@ -620,7 +612,7 @@ static int cpufreq_governor_dbs(struct cpufreq_policy *policy,
 			__cpufreq_driver_target(
 					this_dbs_info->cur_policy,
 					policy->min, CPUFREQ_RELATION_L);
-		mutex_unlock(&dbs_mutex);
+		mutex_unlock(&this_dbs_info->timer_mutex);
 
 		break;
 	}
-- 
1.6.0.6

-- 

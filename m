From: venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org
Subject: [patch 3/3] cpufreq: Define dbs_mutex purpose and cleanup its usage conservative gov
Date: Thu, 25 Jun 2009 11:33:57 -0700
Message-ID: <20090625183601.645253000@intel.com>
References: <20090625183354.491259000@intel.com>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline; filename=0003-cpufreq-Define-dbs_mutex-purpose-and-cleanup-its-us.patch
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>, Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>, Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

Commit b253d2b2d28ead6fed012feb54694b3d0562839a although it was very
much needed to cleanup ondemand timer cleanly, openup a can of worms
related to locking dependencies in cpufreq.

Patch here defines the need for dbs_mutex and cleans up its usage in
conservative governor. This also resolves the lockdep warnings in
conservative governor which would be similar to one reported here

http://lkml.indiana.edu/hypermail/linux/kernel/0906.1/01925.html

Signed-off-by: Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
---
 drivers/cpufreq/cpufreq_conservative.c |   26 ++++++++++++--------------
 1 files changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/cpufreq/cpufreq_conservative.c b/drivers/cpufreq/cpufreq_conservative.c
index 7fc58af..581d057 100644
--- a/drivers/cpufreq/cpufreq_conservative.c
+++ b/drivers/cpufreq/cpufreq_conservative.c
@@ -70,15 +70,14 @@ static DEFINE_PER_CPU(struct cpu_dbs_info_s, cpu_dbs_info);
 static unsigned int dbs_enable;	/* number of CPUs using this policy */
 
 /*
- * DEADLOCK ALERT! There is a ordering requirement between cpu_hotplug
- * lock and dbs_mutex. cpu_hotplug lock should always be held before
- * dbs_mutex. If any function that can potentially take cpu_hotplug lock
- * (like __cpufreq_driver_target()) is being called with dbs_mutex taken, then
- * cpu_hotplug lock should be taken before that. Note that cpu_hotplug lock
- * is recursive for the same process. -Venki
- * DEADLOCK ALERT! (2) : do_dbs_timer() must not take the dbs_mutex, because it
- * would deadlock with cancel_delayed_work_sync(), which is needed for proper
- * raceless workqueue teardown.
+ * dbs_mutex protects data in dbs_tuners_ins from concurrent changes on
+ * different CPUs. It also serializes dbs_enable usage in CPUFREQ_GOV_START
+ * and CPUFREQ_GOV_STOP.
+ *
+ * dbs_mutex should be always held after lock_policy_rwsem whenever needed.
+ * do_dbs_timer() must not take the dbs_mutex, because it would deadlock
+ * with cancel_delayed_work_sync(), which is needed for proper raceless
+ * workqueue teardown.
  */
 static DEFINE_MUTEX(dbs_mutex);
 
@@ -590,15 +589,16 @@ static int cpufreq_governor_dbs(struct cpufreq_policy *policy,
 					&dbs_cpufreq_notifier_block,
 					CPUFREQ_TRANSITION_NOTIFIER);
 		}
-		dbs_timer_init(this_dbs_info);
-
 		mutex_unlock(&dbs_mutex);
 
+		dbs_timer_init(this_dbs_info);
+
 		break;
 
 	case CPUFREQ_GOV_STOP:
-		mutex_lock(&dbs_mutex);
 		dbs_timer_exit(this_dbs_info);
+
+		mutex_lock(&dbs_mutex);
 		sysfs_remove_group(&policy->kobj, &dbs_attr_group);
 		dbs_enable--;
 
@@ -616,7 +616,6 @@ static int cpufreq_governor_dbs(struct cpufreq_policy *policy,
 		break;
 
 	case CPUFREQ_GOV_LIMITS:
-		mutex_lock(&dbs_mutex);
 		if (policy->max < this_dbs_info->cur_policy->cur)
 			__cpufreq_driver_target(
 					this_dbs_info->cur_policy,
@@ -625,7 +624,6 @@ static int cpufreq_governor_dbs(struct cpufreq_policy *policy,
 			__cpufreq_driver_target(
 					this_dbs_info->cur_policy,
 					policy->min, CPUFREQ_RELATION_L);
-		mutex_unlock(&dbs_mutex);
 
 		break;
 	}
-- 
1.6.0.6

-- 

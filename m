From: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Subject: [patch 2.6.30 3/4] cpufreq add gov mutex
Date: Fri, 03 Jul 2009 11:25:17 -0400
Message-ID: <20090703152714.953585501@polymtl.ca>
References: <20090703152514.903448283@polymtl.ca>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline; filename=cpufreq-add-gov-mutex.patch
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-te
Cc: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>, Shaohua Li <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org

Using the cpufreq_gov_mutex to protect internal governor data structures. The
policy rwsem write lock nests inside this mutex.  The policy rwsem is taken in
the timer handler, and therefore cannot be held while doing a sync teardown of
the timer.  This cpufreq_gov_mutex lock protects init/teardown of governor
timers. This is why this lock, although it protects a data structure located
within the governors, is located in cpufreq.c.

Signed-off-by: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
CC: Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
CC: rjw-KKrjLPT3xs0@public.gmane.org
CC: mingo-X9Un+BFzKDI@public.gmane.org
CC: Shaohua Li <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
CC: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
CC: Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
CC: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
CC: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
CC: sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org
CC: cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
CC: Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>
---
 drivers/cpufreq/cpufreq.c |   38 +++++++++++++++++++++++++++++++++++---
 1 file changed, 35 insertions(+), 3 deletions(-)

Index: linux-2.6-lttng/drivers/cpufreq/cpufreq.c
===================================================================
--- linux-2.6-lttng.orig/drivers/cpufreq/cpufreq.c	2009-07-03 09:48:35.000000000 -0400
+++ linux-2.6-lttng/drivers/cpufreq/cpufreq.c	2009-07-03 10:12:44.000000000 -0400
@@ -133,6 +133,17 @@ pure_initcall(init_cpufreq_transition_no
 static LIST_HEAD(cpufreq_governor_list);
 static DEFINE_MUTEX(cpufreq_governor_mutex);
 
+/*
+ * Using the cpufreq_gov_mutex to protect internal governor
+ * data structures. The policy rwsem write lock nests inside this mutex.
+ * The policy rwsem is taken in the timer handler, and therefore cannot be
+ * held while doing a sync teardown of the timer.
+ * This cpufreq_gov_mutex lock protects init/teardown of governor timers.
+ * This is why this lock, although it protects a data structure located within
+ * the governors, is here.
+ */
+static DEFINE_MUTEX(cpufreq_gov_mutex);
+
 struct cpufreq_policy *cpufreq_cpu_get(unsigned int cpu)
 {
 	struct cpufreq_policy *data;
@@ -725,6 +736,7 @@ static ssize_t store(struct kobject *kob
 	if (!policy)
 		goto no_policy;
 
+	mutex_lock(&cpufreq_gov_mutex);
 	if (lock_policy_rwsem_write(policy->cpu) < 0)
 		goto fail;
 
@@ -735,6 +747,7 @@ static ssize_t store(struct kobject *kob
 
 	unlock_policy_rwsem_write(policy->cpu);
 fail:
+	mutex_unlock(&cpufreq_gov_mutex);
 	cpufreq_cpu_put(policy);
 no_policy:
 	return ret;
@@ -823,6 +836,7 @@ static int cpufreq_add_dev(struct sys_de
 
 	/* Initially set CPU itself as the policy_cpu */
 	per_cpu(policy_cpu, cpu) = cpu;
+	mutex_lock(&cpufreq_gov_mutex);
 	ret = (lock_policy_rwsem_write(cpu) < 0);
 	WARN_ON(ret);
 
@@ -875,7 +889,7 @@ static int cpufreq_add_dev(struct sys_de
 					cpufreq_driver->exit(policy);
 				ret = -EBUSY;
 				cpufreq_cpu_put(managed_policy);
-				goto err_free_cpumask;
+				goto err_unlock_gov_mutex;
 			}
 
 			spin_lock_irqsave(&cpufreq_driver_lock, flags);
@@ -964,6 +978,7 @@ static int cpufreq_add_dev(struct sys_de
 	}
 
 	unlock_policy_rwsem_write(cpu);
+	mutex_unlock(&cpufreq_gov_mutex);
 
 	kobject_uevent(&policy->kobj, KOBJ_ADD);
 	module_put(cpufreq_driver->owner);
@@ -989,6 +1004,8 @@ out_driver_exit:
 
 err_unlock_policy:
 	unlock_policy_rwsem_write(cpu);
+err_unlock_gov_mutex:
+	mutex_unlock(&cpufreq_gov_mutex);
 err_free_cpumask:
 	free_cpumask_var(policy->cpus);
 err_free_policy:
@@ -1028,6 +1045,7 @@ static int __cpufreq_remove_dev(struct s
 		spin_unlock_irqrestore(&cpufreq_driver_lock, flags);
 		cpufreq_debug_enable_ratelimit();
 		unlock_policy_rwsem_write(cpu);
+		mutex_unlock(&cpufreq_gov_mutex);
 		return -EINVAL;
 	}
 	per_cpu(cpufreq_cpu_data, cpu) = NULL;
@@ -1045,6 +1063,7 @@ static int __cpufreq_remove_dev(struct s
 		cpufreq_cpu_put(data);
 		cpufreq_debug_enable_ratelimit();
 		unlock_policy_rwsem_write(cpu);
+		mutex_unlock(&cpufreq_gov_mutex);
 		return 0;
 	}
 #endif
@@ -1088,9 +1107,13 @@ static int __cpufreq_remove_dev(struct s
 #endif
 
 	unlock_policy_rwsem_write(cpu);
-
+	/*
+	 * Calling only with the cpufreq_gov_mutex held because
+	 * sync timer teardown has locking dependency with policy rwsem.
+	 */
 	if (cpufreq_driver->target)
 		__cpufreq_governor(data, CPUFREQ_GOV_STOP);
+	mutex_unlock(&cpufreq_gov_mutex);
 
 	kobject_put(&data->kobj);
 
@@ -1123,6 +1146,7 @@ static int cpufreq_remove_dev(struct sys
 	if (cpu_is_offline(cpu))
 		return 0;
 
+	mutex_lock(&cpufreq_gov_mutex);
 	if (unlikely(lock_policy_rwsem_write(cpu)))
 		BUG();
 
@@ -1506,12 +1530,16 @@ int cpufreq_driver_target(struct cpufreq
 	if (!policy)
 		goto no_policy;
 
-	if (unlikely(lock_policy_rwsem_write(policy->cpu)))
+	mutex_lock(&cpufreq_gov_mutex);
+	if (unlikely(lock_policy_rwsem_write(policy->cpu))) {
+		mutex_unlock(&cpufreq_gov_mutex);
 		goto fail;
+	}
 
 	ret = __cpufreq_driver_target(policy, target_freq, relation);
 
 	unlock_policy_rwsem_write(policy->cpu);
+	mutex_unlock(&cpufreq_gov_mutex);
 
 fail:
 	cpufreq_cpu_put(policy);
@@ -1769,7 +1797,9 @@ int cpufreq_update_policy(unsigned int c
 		goto no_policy;
 	}
 
+	mutex_lock(&cpufreq_gov_mutex);
 	if (unlikely(lock_policy_rwsem_write(cpu))) {
+		mutex_unlock(&cpufreq_gov_mutex);
 		ret = -EINVAL;
 		goto fail;
 	}
@@ -1798,6 +1828,7 @@ int cpufreq_update_policy(unsigned int c
 	ret = __cpufreq_set_policy(data, &policy);
 
 	unlock_policy_rwsem_write(cpu);
+	mutex_unlock(&cpufreq_gov_mutex);
 
 fail:
 	cpufreq_cpu_put(data);
@@ -1821,6 +1852,7 @@ static int __cpuinit cpufreq_cpu_callbac
 			break;
 		case CPU_DOWN_PREPARE:
 		case CPU_DOWN_PREPARE_FROZEN:
+			mutex_lock(&cpufreq_gov_mutex);
 			if (unlikely(lock_policy_rwsem_write(cpu)))
 				BUG();
 

-- 
Mathieu Desnoyers
OpenPGP key fingerprint: 8CD5 52C3 8E3C 4140 715F  BA06 3F25 A8FE 3BAE 9A68

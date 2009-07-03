From: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Subject: [patch 2.6.30 1/4] remove rwsem lock from CPUFREQ_GOV_STOP call (second call site)
Date: Fri, 03 Jul 2009 11:25:15 -0400
Message-ID: <20090703152714.598326455@polymtl.ca>
References: <20090703152514.903448283@polymtl.ca>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline; filename=cpufreq-remove-rwsem-lock-from-CPUFREQ_GOV_STOP-call-missing-modification.patch
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-te
Cc: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>, Shaohua Li <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org

commit	42a06f2166f2f6f7bf04f32b4e823eacdceafdc9

Missed a call site for CPUFREQ_GOV_STOP to remove the rwlock taken around the
teardown. To make a long story short, the rwlock write-lock causes a circular
dependency with cancel_delayed_work_sync(), because the timer handler takes the
read lock.

Note that all callers to __cpufreq_set_policy are taking the rwsem. All sysfs
callers (writers) hold the write rwsem at the earliest sysfs calling stage.

However, the rwlock write-lock is not needed upon governor stop.

Change :
- Added comment from Venkyi at lock definition site.

Signed-off-by: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Acked-by: Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
CC: rjw-KKrjLPT3xs0@public.gmane.org
CC: mingo-X9Un+BFzKDI@public.gmane.org
CC: Shaohua Li <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
CC: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
CC: Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
CC: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
CC: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
CC: trenn-l3A5Bk7waGM@public.gmane.org
CC: sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org
CC: cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
---
 drivers/cpufreq/cpufreq.c |   13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

Index: linux-2.6-lttng/drivers/cpufreq/cpufreq.c
===================================================================
--- linux-2.6-lttng.orig/drivers/cpufreq/cpufreq.c	2009-06-08 12:47:22.000000000 -0400
+++ linux-2.6-lttng/drivers/cpufreq/cpufreq.c	2009-06-08 12:48:38.000000000 -0400
@@ -61,6 +61,8 @@ static DEFINE_SPINLOCK(cpufreq_driver_lo
  *   are concerned with are online after they get the lock.
  * - Governor routines that can be called in cpufreq hotplug path should not
  *   take this sem as top level hotplug notifier handler takes this.
+ * - Lock should not be held across
+ *     __cpufreq_governor(data, CPUFREQ_GOV_STOP);
  */
 static DEFINE_PER_CPU(int, policy_cpu);
 static DEFINE_PER_CPU(struct rw_semaphore, cpu_policy_rwsem);
@@ -1697,8 +1699,17 @@ static int __cpufreq_set_policy(struct c
 			dprintk("governor switch\n");
 
 			/* end old governor */
-			if (data->governor)
+			if (data->governor) {
+				/*
+				 * Need to release the rwsem around governor
+				 * stop due to lock dependency between
+				 * cancel_delayed_work_sync and the read lock
+				 * taken in the delayed work handler.
+				 */
+				unlock_policy_rwsem_write(data->cpu);
 				__cpufreq_governor(data, CPUFREQ_GOV_STOP);
+				lock_policy_rwsem_write(data->cpu);
+			}
 
 			/* start new governor */
 			data->governor = policy->governor;

-- 
Mathieu Desnoyers
OpenPGP key fingerprint: 8CD5 52C3 8E3C 4140 715F  BA06 3F25 A8FE 3BAE 9A68

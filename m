From: Thomas Renninger <trenn@suse.de>
Subject: [PATCH 2/2] remove rwsem lock from CPUFREQ_GOV_STOP call (second call site)
Date: Thu, 25 Jun 2009 16:01:25 +0200
Message-ID: <1245938485-12663-3-git-send-email-trenn@suse.de>
References: <20090623193215.GA31374@elte.hu>
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755896AbZFYOCA@vger.kernel.org>
In-Reply-To: <20090623193215.GA31374@elte.hu>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kernel@stable.org
Cc: cpufreq@vger.kernel.org, linux-kernel@vger.kernel.org, mingo@elte.hu, rjw@sisk.pl, hidave.darkstar@gmail.com, penberg@cs.helsinki.fi, kernel-testers@vger.kernel.org, davej@redhat.com, mathieu.desnoyers@polymtl.ca, Thomas Renninger <trenn@suse.de>

From: Mathieu Desnoyers <mathieu.desnoyers@polymtl.ca>

Missed a call site for CPUFREQ_GOV_STOP to remove the rwlock taken around the
teardown. To make a long story short, the rwlock write-lock causes a circular
dependency with cancel_delayed_work_sync(), because the timer handler takes the
write lock.

Note that all callers to __cpufreq_set_policy are taking the rwsem. All sysfs
callers (writers) hold the write rwsem at the earliest sysfs calling stage.

However, the rwlock write-lock is not needed upon governor stop.

Signed-off-by: Thomas Renninger <trenn@suse.de>
Acked-by: Venkatesh Pallipadi <venkatesh.pallipadi@intel.com>
---
 drivers/cpufreq/cpufreq.c |   13 ++++++++++++-
 1 files changed, 12 insertions(+), 1 deletions(-)

diff --git a/drivers/cpufreq/cpufreq.c b/drivers/cpufreq/cpufreq.c
index 6e2ec0b..7e7ff1b 100644
--- a/drivers/cpufreq/cpufreq.c
+++ b/drivers/cpufreq/cpufreq.c
@@ -61,6 +61,8 @@ static DEFINE_SPINLOCK(cpufreq_driver_lock);
  *   are concerned with are online after they get the lock.
  * - Governor routines that can be called in cpufreq hotplug path should not
  *   take this sem as top level hotplug notifier handler takes this.
+ * - Lock should not be held across
+ * __cpufreq_governor(data, CPUFREQ_GOV_STOP);
  */
 static DEFINE_PER_CPU(int, policy_cpu);
 static DEFINE_PER_CPU(struct rw_semaphore, cpu_policy_rwsem);
@@ -1697,8 +1699,17 @@ static int __cpufreq_set_policy(struct cpufreq_policy *data,
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
1.6.0.2

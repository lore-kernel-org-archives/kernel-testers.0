From: Mathieu Desnoyers <mathieu.desnoyers@polymtl.ca>
Subject: Re: [PATCH] remove rwsem lock from CPUFREQ_GOV_STOP call (second
	call site)
Date: Mon, 8 Jun 2009 13:17:31 -0400
Message-ID: <20090608171731.GA24779@Krystal>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera> <D9VoutSOyXP.A.7vF.2Y7KKB@chimera> <84144f020906070621r1f480eaeief026d23662df380@mail.gmail.com> <a8e1da0906080035j9f8b38drb46132de5a515915@mail.gmail.com> <1244447366.13471.4.camel@penberg-laptop> <20090608124844.GA17588@Krystal> <20090608143220.GC2516@redhat.com> <20090608152316.GA21033@Krystal> <1244480254.4534.265.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752216AbZFHRRu@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1244480254.4534.265.camel@localhost.localdomain>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Pallipadi, Venkatesh" <venkatesh.pallipadi@intel.com>
Cc: Dave Jones <davej@redhat.com>, Pekka Enberg <penberg@cs.helsinki.fi>, Dave Young <hidave.darkstar@gmail.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, "cpufreq@vger.kernel.org" <cpufreq@vger.kernel.org>, Rusty Russell <rusty@rustcorp.com.au>, "trenn@suse.de" <trenn@suse.de>, "sven.wegener@stealer.net" <sven.wegener@stealer.net>, "mingo@elte.hu" <mingo@elte.hu>, "Li, Shaohua" <shaohua.li@intel.com>

OK, here is the re-run, with comment and acked-by added.

Thanks,

Mathieu


remove rwsem lock from CPUFREQ_GOV_STOP call (second call site)

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

Signed-off-by: Mathieu Desnoyers <mathieu.desnoyers@polymtl.ca>
Acked-by: Venkatesh Pallipadi <venkatesh.pallipadi@intel.com>
CC: rjw@sisk.pl
CC: mingo@elte.hu
CC: Shaohua Li <shaohua.li@intel.com>
CC: Pekka Enberg <penberg@cs.helsinki.fi>
CC: Dave Young <hidave.darkstar@gmail.com>
CC: "Rafael J. Wysocki" <rjw@sisk.pl>
CC: Rusty Russell <rusty@rustcorp.com.au>
CC: trenn@suse.de
CC: sven.wegener@stealer.net
CC: cpufreq@vger.kernel.org
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

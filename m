From: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Subject: [PATCH] cpufreq fix timer teardown in ondemand governor
Date: Sun, 17 May 2009 10:30:45 -0400
Message-ID: <20090517143045.GC27882@Krystal>
References: <yO1BmxN79sN.A.xAG.8_zDKB@chimera> <pQ9WADCjgyE.A.PTG.HA0DKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <pQ9WADCjgyE.A.PTG.HA0DKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, gregkh-l3A5Bk7waGM@public.gmane.org, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, Ben Slusky <sluskyb-k/7z6JowIC0cuXOPmUuyGA@public.gmane.org>, Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

* Rafael J. Wysocki (rjw-KKrjLPT3xs0@public.gmane.org) wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.28 and 2.6.29.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.28 and 2.6.29.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13186
> Subject		: cpufreq timer teardown problem
> Submitter	: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
> Date		: 2009-04-23 14:00 (24 days old)
> References	: http://marc.info/?l=linux-kernel&m=124049523515036&w=4
> Handled-By	: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
> Patch		: http://patchwork.kernel.org/patch/19754/
> 		  http://patchwork.kernel.org/patch/19753/
> 

(updated changelog)

cpufreq fix timer teardown in ondemand governor

The problem is that dbs_timer_exit() uses cancel_delayed_work() when it should
use cancel_delayed_work_sync(). cancel_delayed_work() does not wait for the
workqueue handler to exit.

The ondemand governor does not seem to be affected because the
"if (!dbs_info->enable)" check at the beginning of the workqueue handler returns
immediately without rescheduling the work. The conservative governor in
2.6.30-rc has the same check as the ondemand governor, which makes things
usually run smoothly. However, if the governor is quickly stopped and then
started, this could lead to the following race :

dbs_enable could be reenabled and multiple do_dbs_timer handlers would run.
This is why a synchronized teardown is required.

The following patch applies to, at least, 2.6.28.x, 2.6.29.1, 2.6.30-rc2.

Depends on patch
cpufreq: remove rwsem lock from CPUFREQ_GOV_STOP call

Signed-off-by: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
CC: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
CC: gregkh-l3A5Bk7waGM@public.gmane.org
CC: stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
CC: cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
CC: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
CC: rjw-KKrjLPT3xs0@public.gmane.org
CC: Ben Slusky <sluskyb-k/7z6JowIC0cuXOPmUuyGA@public.gmane.org>
CC: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
---
 drivers/cpufreq/cpufreq_ondemand.c |    5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

Index: linux-2.6-lttng/drivers/cpufreq/cpufreq_ondemand.c
===================================================================
--- linux-2.6-lttng.orig/drivers/cpufreq/cpufreq_ondemand.c	2009-04-23 23:25:00.000000000 -0400
+++ linux-2.6-lttng/drivers/cpufreq/cpufreq_ondemand.c	2009-04-23 23:25:39.000000000 -0400
@@ -98,6 +98,9 @@ static unsigned int dbs_enable;	/* numbe
  * (like __cpufreq_driver_target()) is being called with dbs_mutex taken, then
  * cpu_hotplug lock should be taken before that. Note that cpu_hotplug lock
  * is recursive for the same process. -Venki
+ * DEADLOCK ALERT! (2) : do_dbs_timer() must not take the dbs_mutex, because it
+ * would deadlock with cancel_delayed_work_sync(), which is needed for proper
+ * raceless workqueue teardown.
  */
 static DEFINE_MUTEX(dbs_mutex);
 
@@ -562,7 +565,7 @@ static inline void dbs_timer_init(struct
 static inline void dbs_timer_exit(struct cpu_dbs_info_s *dbs_info)
 {
 	dbs_info->enable = 0;
-	cancel_delayed_work(&dbs_info->work);
+	cancel_delayed_work_sync(&dbs_info->work);
 }
 
 static int cpufreq_governor_dbs(struct cpufreq_policy *policy,
-- 
Mathieu Desnoyers
OpenPGP key fingerprint: 8CD5 52C3 8E3C 4140 715F  BA06 3F25 A8FE 3BAE 9A68

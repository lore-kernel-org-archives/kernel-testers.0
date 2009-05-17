From: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Subject: [PATCH] cpufreq: remove rwsem lock from CPUFREQ_GOV_STOP call
Date: Sun, 17 May 2009 10:23:52 -0400
Message-ID: <20090517142352.GA27882@Krystal>
References: <yO1BmxN79sN.A.xAG.8_zDKB@chimera> <pQ9WADCjgyE.A.PTG.HA0DKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <pQ9WADCjgyE.A.PTG.HA0DKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Chris Wright <chrisw-69jw2NvuJkxg9hUCZPvPmw@public.gmane.org>, Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Ben Slusky <sluskyb-k/7z6JowIC0cuXOPmUuyGA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>

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

The patches linked above depend on the following patch to remove
circular locking dependency :


cpufreq: remove rwsem lock from CPUFREQ_GOV_STOP call

(the following issue was faced when using cancel_delayed_work_sync() in the
timer teardown (which fixes a race).

* KOSAKI Motohiro (kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org) wrote:
> Hi
> 
> my box output following warnings.
> it seems regression by commit 7ccc7608b836e58fbacf65ee4f8eefa288e86fac.
> 
> A: work -> do_dbs_timer()  -> cpu_policy_rwsem
> B: store() -> cpu_policy_rwsem -> cpufreq_governor_dbs() -> work
> 
> 

Hrm, I think it must be due to my attempt to fix the timer teardown race
in ondemand governor mixed with new locking behavior in 2.6.30-rc.

The rwlock seems to be taken around the whole call to
cpufreq_governor_dbs(), when it should be only taken around accesses to
the locked data, and especially *not* around the call to
dbs_timer_exit().

Reverting my fix attempt would put the teardown race back in place
(replacing the cancel_delayed_work_sync by cancel_delayed_work).
Instead, a proper fix would imply modifying this critical section :

cpufreq.c: __cpufreq_remove_dev()
...
        if (cpufreq_driver->target)
                __cpufreq_governor(data, CPUFREQ_GOV_STOP);

        unlock_policy_rwsem_write(cpu);

To make sure the __cpufreq_governor() callback is not called with rwsem
held. This would allow execution of cancel_delayed_work_sync() without
being nested within the rwsem.

Applies on top of the 2.6.30-rc5 tree.

Required to remove circular dep in teardown of both conservative and
ondemande governors so they can use cancel_delayed_work_sync().
CPUFREQ_GOV_STOP does not modify the policy, therefore this locking seemed
unneeded.

Signed-off-by: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
CC: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Cc: Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>
CC: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
CC: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
CC: Ben Slusky <sluskyb-k/7z6JowIC0cuXOPmUuyGA@public.gmane.org>
CC: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
CC: Chris Wright <chrisw-69jw2NvuJkxg9hUCZPvPmw@public.gmane.org>
CC: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
---
 drivers/cpufreq/cpufreq.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

Index: linux-2.6-lttng/drivers/cpufreq/cpufreq.c
===================================================================
--- linux-2.6-lttng.orig/drivers/cpufreq/cpufreq.c	2009-05-10 14:41:53.000000000 -0400
+++ linux-2.6-lttng/drivers/cpufreq/cpufreq.c	2009-05-10 14:42:29.000000000 -0400
@@ -1070,11 +1070,11 @@ static int __cpufreq_remove_dev(struct s
 	spin_unlock_irqrestore(&cpufreq_driver_lock, flags);
 #endif
 
+	unlock_policy_rwsem_write(cpu);
+
 	if (cpufreq_driver->target)
 		__cpufreq_governor(data, CPUFREQ_GOV_STOP);
 
-	unlock_policy_rwsem_write(cpu);
-
 	kobject_put(&data->kobj);
 
 	/* we need to make sure that the underlying kobj is actually

-- 
Mathieu Desnoyers
OpenPGP key fingerprint: 8CD5 52C3 8E3C 4140 715F  BA06 3F25 A8FE 3BAE 9A68

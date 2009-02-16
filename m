From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12650] Strange load average and ksoftirqd behavior with
	2.6.29-rc2-git1
Date: Mon, 16 Feb 2009 10:32:51 +0100
Message-ID: <20090216093251.GK6182@elte.hu>
References: <rjPbZ5GRJPO.A.1kE.ur0lJB@chimera> <20090215080941.GA2295@localhost.localdomain> <20090215090026.GA31147@elte.hu> <20090215095128.GA3234@localhost.localdomain> <20090215101351.GA23274@elte.hu> <20090215103445.GA2335@localhost.localdomain> <20090215110104.GB31351@elte.hu> <20090215180355.GA2273@localhost.localdomain> <20090215193102.GA16873@elte.hu> <20090216084223.GA2641@localhost.localdomain>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090216084223.GA2641-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Damien Wyart <damien.wyart-GANU6spQydw@public.gmane.org>
Cc: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, =?iso-8859-1?Q?Fr=E9d=E9ric?= Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


Ok, the ksoftirqd/1 stats contain a smoking gun:

ksoftirqd/1 (2280, #threads: 1)
---------------------------------------------------------
se.exec_start                      :        152642.614531
se.vruntime                        :         57051.648140
se.sum_exec_runtime                :          5741.506722
se.avg_overlap                     :             0.000000
se.avg_wakeup                      :            10.000000
se.wait_start                      :             0.000000
se.sleep_start                     :        152642.623948
se.block_start                     :             0.000000
se.sleep_max                       :         22662.455146
se.block_max                       :          4096.496408
se.exec_max                        :             0.016849
se.slice_max                       :             0.000000
se.wait_max                        :             0.053862
se.wait_sum                        :          7899.023463
se.wait_count                      :              4235574
sched_info.bkl_count               :                    0
se.nr_migrations                   :                    1
se.nr_migrations_cold              :                    0
se.nr_failed_migrations_affine     :                   32
se.nr_failed_migrations_running    :                   47
se.nr_failed_migrations_hot        :                   23
se.nr_forced_migrations            :                    0
se.nr_forced2_migrations           :                    5
se.nr_wakeups                      :              4235539
se.nr_wakeups_sync                 :                    0
se.nr_wakeups_migrate              :                   11
se.nr_wakeups_local                :              4235506
se.nr_wakeups_remote               :                   34
se.nr_wakeups_affine               :                    4
se.nr_wakeups_affine_attempts      :                   44
se.nr_wakeups_passive              :                    7
se.nr_wakeups_idle                 :                    0
avg_atom                           :             0.001355
avg_per_cpu                        :          5741.514564
nr_switches                        :              4235404
nr_voluntary_switches              :              4235389
nr_involuntary_switches            :                   18
se.load.weight                     :                 3121
policy                             :                    0
prio                               :                  115
clock-delta                        :                  295

these bits:

 se.sum_exec_runtime                :          5741.506722
 nr_switches                        :              4235404
 nr_voluntary_switches              :              4235389
 nr_involuntary_switches            :                   18

mean that ksoftirqd _really_ ran more than 4 million times since bootup 
- that is _highly_ anomalous. It means that scheduler clock is fine, and 
that your box is really running a lot of softirq workload.

Here is how it should look like normally. A 16-way testbox with almost 
an hour of uptime, running high load with a lot of networking. Its CPU#0 
ksoftirqd [the busiest one] has these stats:

 se.sum_exec_runtime                :             0.523552
 nr_switches                        :                   42
 nr_voluntary_switches              :                   42
 nr_involuntary_switches            :                    0

it ran only 42 times. That is a normal ksoftirqd pattern.

I'll check your traces as the next step.

	Ingo

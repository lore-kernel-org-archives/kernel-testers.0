From: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Subject: Re: [patch 1/4] cpufreq: Eliminate the recent lockdep warnings in
	cpufreq
Date: Thu, 2 Jul 2009 22:25:18 -0400
Message-ID: <20090703022518.GB26976@Krystal>
References: <20090703000829.735976000@intel.com> <20090703000923.800507000@intel.com> <20090703010650.GA25030@Krystal> <7E82351C108FA840AB1866AC776AEC4669BFEF78@orsmsx505.amr.corp.intel.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <7E82351C108FA840AB1866AC776AEC4669BFEF78-osO9UTpF0URqS6EAlXoojrfspsVTdybXVpNB7YpNyf8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>

* Pallipadi, Venkatesh (venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org) wrote:
>  
> 
> >-----Original Message-----
> >From: Mathieu Desnoyers [mailto:mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org] 
> >Sent: Thursday, July 02, 2009 6:07 PM
> >To: Pallipadi, Venkatesh
> >Cc: Dave Jones; linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org; 
> >cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org; kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org; Ingo 
> >Molnar; Rafael J. Wysocki; Dave Young; Pekka Enberg; Thomas Renninger
> >Subject: Re: [patch 1/4] cpufreq: Eliminate the recent lockdep 
> >warnings in cpufreq
> >
> >* venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org (venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org) wrote:
> >> Commit b14893a62c73af0eca414cfed505b8c09efc613c although it was very
> >> much needed to properly cleanup ondemand timer, opened-up a 
> >can of worms
> >> related to locking dependencies in cpufreq.
> >> 
> >> Patch here defines the need for dbs_mutex and cleans up its usage in
> >> ondemand governor. This also resolves the lockdep warnings 
> >reported here
> >> 
> >> http://lkml.indiana.edu/hypermail/linux/kernel/0906.1/01925.html
> >> http://lkml.indiana.edu/hypermail/linux/kernel/0907.0/00820.html
> >> 
> >> and few others..
> >> 
> >> Signed-off-by: Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> >> ---
> >>  drivers/cpufreq/cpufreq.c              |    4 ++--
> >>  drivers/cpufreq/cpufreq_conservative.c |   27 
> >+++++++++++----------------
> >>  drivers/cpufreq/cpufreq_ondemand.c     |   27 
> >+++++++++++----------------
> >>  3 files changed, 24 insertions(+), 34 deletions(-)
> >> 
> >> diff --git a/drivers/cpufreq/cpufreq.c b/drivers/cpufreq/cpufreq.c
> >> index 6e2ec0b..c7fe16e 100644
> >> --- a/drivers/cpufreq/cpufreq.c
> >> +++ b/drivers/cpufreq/cpufreq.c
> >> @@ -1070,8 +1070,6 @@ static int __cpufreq_remove_dev(struct 
> >sys_device *sys_dev)
> >>  	spin_unlock_irqrestore(&cpufreq_driver_lock, flags);
> >>  #endif
> >>  
> >> -	unlock_policy_rwsem_write(cpu);
> >> -
> >>  	if (cpufreq_driver->target)
> >>  		__cpufreq_governor(data, CPUFREQ_GOV_STOP);
> >>  
> >> @@ -1088,6 +1086,8 @@ static int __cpufreq_remove_dev(struct 
> >sys_device *sys_dev)
> >>  	if (cpufreq_driver->exit)
> >>  		cpufreq_driver->exit(data);
> >>  
> >> +	unlock_policy_rwsem_write(cpu);
> >> +
> >>  	free_cpumask_var(data->related_cpus);
> >>  	free_cpumask_var(data->cpus);
> >>  	kfree(data);
> >> diff --git a/drivers/cpufreq/cpufreq_conservative.c 
> >b/drivers/cpufreq/cpufreq_conservative.c
> >> index 7fc58af..58889f2 100644
> >> --- a/drivers/cpufreq/cpufreq_conservative.c
> >> +++ b/drivers/cpufreq/cpufreq_conservative.c
> >> @@ -70,15 +70,10 @@ static DEFINE_PER_CPU(struct 
> >cpu_dbs_info_s, cpu_dbs_info);
> >>  static unsigned int dbs_enable;	/* number of CPUs using 
> >this policy */
> >>  
> >>  /*
> >> - * DEADLOCK ALERT! There is a ordering requirement between 
> >cpu_hotplug
> >> - * lock and dbs_mutex. cpu_hotplug lock should always be held before
> >> - * dbs_mutex. If any function that can potentially take 
> >cpu_hotplug lock
> >> - * (like __cpufreq_driver_target()) is being called with 
> >dbs_mutex taken, then
> >> - * cpu_hotplug lock should be taken before that. Note that 
> >cpu_hotplug lock
> >> - * is recursive for the same process. -Venki
> >> - * DEADLOCK ALERT! (2) : do_dbs_timer() must not take the 
> >dbs_mutex, because it
> >> - * would deadlock with cancel_delayed_work_sync(), which is 
> >needed for proper
> >> - * raceless workqueue teardown.
> >> + * dbs_mutex protects data in dbs_tuners_ins from 
> >concurrent changes on
> >> + * different CPUs. It protects dbs_enable in governor 
> >start/stop. It also
> >> + * serializes governor limit_change with do_dbs_timer. We 
> >do not want
> >> + * do_dbs_timer to run when user is changing the governor or limits.
> >>   */
> >>  static DEFINE_MUTEX(dbs_mutex);
> >>  
> >> @@ -488,18 +483,17 @@ static void do_dbs_timer(struct 
> >work_struct *work)
> >>  
> >>  	delay -= jiffies % delay;
> >>  
> >> -	if (lock_policy_rwsem_write(cpu) < 0)
> >> -		return;
> >> +	mutex_lock(&dbs_mutex);
> >
> >OK, I now have absolutely no idea what the rwsem mutex is protecting
> >anymore.
> >
> >You should probably describe the new world order not just in terms of
> >what the dbs_mutex is protecting, but also about what the rwsem is
> >doing. I'm worried that this rwsem is there to protect against 
> >more than
> >what is protected by the dbs_mutex local to the ondemand/conservative
> >governors.
> >
> >See below,
> >
> >>  
> >>  	if (!dbs_info->enable) {
> >> -		unlock_policy_rwsem_write(cpu);
> >> +		mutex_unlock(&dbs_mutex);
> >>  		return;
> >>  	}
> >>  
> >>  	dbs_check_cpu(dbs_info);
> >>  
> >>  	queue_delayed_work_on(cpu, kconservative_wq, 
> >&dbs_info->work, delay);
> >> -	unlock_policy_rwsem_write(cpu);
> >> +	mutex_unlock(&dbs_mutex);
> >>  }
> >>  
> >>  static inline void dbs_timer_init(struct cpu_dbs_info_s *dbs_info)
> >> @@ -590,15 +584,16 @@ static int cpufreq_governor_dbs(struct 
> >cpufreq_policy *policy,
> >>  					&dbs_cpufreq_notifier_block,
> >>  					CPUFREQ_TRANSITION_NOTIFIER);
> >>  		}
> >> -		dbs_timer_init(this_dbs_info);
> >> -
> >>  		mutex_unlock(&dbs_mutex);
> >>  
> >> +		dbs_timer_init(this_dbs_info);
> >> +
> >>  		break;
> >>  
> >>  	case CPUFREQ_GOV_STOP:
> >> -		mutex_lock(&dbs_mutex);
> >>  		dbs_timer_exit(this_dbs_info);
> >
> >So now the only thing that seems to prevent the init and exit to race
> >with each other is the rwsem. But this does not seem to be described
> >anywhere.
> 
> Mathieu,
> 
> Yes. rwsem in cpufreq core makes sure that START and STOP happen sequentially. There
> Is no way for START and STOP for a CPU to happen at the same time as cpufreq core holds
> per policy rwsem lock before making any change to the policy. I can add a comment to
> that effect in cpufreq.c. This is a clean seperation across cpufreq core and governor,
> as cpufreq core takes care of all the policy changes. With that, do you see any
> Issues/races with this patchset?
> 

I'll code a less intrusive patchset that should hopefully fix the
problem tonight with less possible side-effects. I'll need help for
testing though.

Matheu

> Thanks,
> Venki

-- 
Mathieu Desnoyers
OpenPGP key fingerprint: 8CD5 52C3 8E3C 4140 715F  BA06 3F25 A8FE 3BAE 9A68

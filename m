From: "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: cpufreq cleanups - .30 vs .31
Date: Mon, 06 Jul 2009 10:20:25 -0700
Message-ID: <1246900825.11545.6.camel@localhost.localdomain>
References: <200907061318.20839.trenn@suse.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200907061318.20839.trenn-l3A5Bk7waGM@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>
Cc: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>

On Mon, 2009-07-06 at 04:18 -0700, Thomas Renninger wrote:
> Hi Dave,
> 
> this is about Venki's and Mathieu's recently sent cleanups.
> I'd like to summarize this to help finding a solution:
> 
> IMO Venki's approach (making .governor() always be called with
> rwsem held) is the cleaner one and this should be the way to
> go for .31 and future. This better separates locking responsibilities
> between cpufreq core and governors and brings back "design" into this.
> 
> One could argue that for .30 Mathieu's is better, because less
> intrusive. It's up to Dave in the end, but:
> [patch 2.6.30 1/4] remove rwsem lock from CPUFREQ_GOV_STOP call (second call 
> site)
> should not be the way to go for .31 and I'd vote for Venki's
> approach concerning locking .governor() against multiple calls (done by
> rwsem) and governor() vs do_dbs_timer calls (governor's job with a governor
> specific sem).
> 
> So if not find too intrusive, I'd say:
> Venkatesh's whole series of:
> [patch 0/4] Take care of cpufreq lockdep issues (take 2)
> should be seen in .31.
> 
> Depending on how intrusive this is seen, Venki's first patch:
> [patch 1/4] cpufreq: Eliminate the recent lockdep warnings in cpufreq
> should then go to .30 (after still waiting a bit?)
> or Mathieu's approach (I'd vote for Venki's to be consistent for .30 and .31).
> 
> The one patch from Mathieu:
> [patch 2.6.30 2/4] CPUFREQ: fix (utter) cpufreq_add_dev mess
> is a separate, general cleanup which should show up in .31.
> 
> 
> 
> I still have two patch specific questions:
> about Mathieu's (it's a minor issue in the error path):
> [patch 2.6.30 2/4] CPUFREQ: fix (utter) cpufreq_add_dev mess
> 
> +                       if (lock_policy_rwsem_write(cpu) < 0) {
> +                               /* Should not go through policy unlock path */
> +                               if (cpufreq_driver->exit)
> +                                       cpufreq_driver->exit(policy);
> +                               ret = -EBUSY;
> +                               cpufreq_cpu_put(managed_policy);
> Shouldn't:
>  cpufreq_cpu_put(managed_policy);
> be called before:
>  cpufreq_driver->exit(policy);
> Just in case the driver itself wants to grab the policy of the
> managed cpu?
> 
> 
> about Venki's:
> [patch 3/4] cpufreq: Cleanup locking in ondemand governor
> Isn't it possible to use only one mutex(timer_mutex) to protect do_dbs_timer 
> against governor start, stop, limit?
> Then dbs_mutex would only be used to protect against concurrent sysfs access
> and can be thrown away as soon as ondemand only provides global sysfs files,
> not per cpu ones.
> 

dbs_mutex (or some other global lock) is also needed at the places where
dbs_enable is changed and used. Yes having dbs_mutex exclusively for
dbs_tuners makes code cleaner. I would say, making ondemand providing
global sysfs/debugfs files is a better thing to do sooner.

Thanks,
Venki

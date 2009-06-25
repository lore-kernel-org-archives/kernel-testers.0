From: "Pallipadi, Venkatesh" <venkatesh.pallipadi@intel.com>
Subject: Re: [patch 2/3] cpufreq: Define dbs_mutex purpose and cleanup its
 usage
Date: Thu, 25 Jun 2009 13:54:45 -0700
Message-ID: <1245963285.4534.20542.camel@localhost.localdomain>
References: <20090625183354.491259000@intel.com>
	 <20090625183601.493904000@intel.com>  <20090625194648.GA24657@Krystal>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755367AbZFYU4i@vger.kernel.org>
In-Reply-To: <20090625194648.GA24657@Krystal>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mathieu Desnoyers <mathieu.desnoyers@polymtl.ca>
Cc: Dave Jones <davej@redhat.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "cpufreq@vger.kernel.org" <cpufreq@vger.kernel.org>, "kernel-testers@vger.kernel.org" <kernel-testers@vger.kernel.org>, Ingo Molnar <mingo@elte.hu>, "Rafael J. Wysocki" <rjw@sisk.pl>, Dave Young <hidave.darkstar@gmail.com>, Pekka Enberg <penberg@cs.helsinki.fi>, Thomas Renninger <trenn@suse.de>

On Thu, 2009-06-25 at 12:46 -0700, Mathieu Desnoyers wrote:
> * venkatesh.pallipadi@intel.com (venkatesh.pallipadi@intel.com) wrote:
> > Commit b14893a62c73af0eca414cfed505b8c09efc613c although it was very
> > much needed to cleanup ondemand timer cleanly, openup a can of worms
> > related to locking dependencies in cpufreq.
> > 
> > Patch here defines the need for dbs_mutex and cleans up its usage in
> > ondemand governor. This also resolves the lockdep warnings reported here
> > 
> > http://lkml.indiana.edu/hypermail/linux/kernel/0906.1/01925.html
> > 

> > @@ -598,14 +593,16 @@ static int cpufreq_governor_dbs(struct cpufreq_policy *policy,
> >  				max(min_sampling_rate,
> >  				    latency * LATENCY_MULTIPLIER);
> >  		}
> > +		mutex_unlock(&dbs_mutex);
> > +
> >  		dbs_timer_init(this_dbs_info);
> >  
> > -		mutex_unlock(&dbs_mutex);
> >  		break;
> >  
> >  	case CPUFREQ_GOV_STOP:
> > -		mutex_lock(&dbs_mutex);
> >  		dbs_timer_exit(this_dbs_info);
> 
> Hrm, so.. how do we protect against concurrent :
> 
> CPUFREQ_GOV_START/CPUFREQ_GOV_STOP now ?

concurrent _START _STOP across CPUs does not matter for timer_init and
timer_exit. On same CPU, there cannot be two concurrent _START as upper
level cpufreq will have policy_rwsem in write mode. I cannot think of a
flow where _START and _STOP on same CPU is possible.

However two concurrent _STOP for same CPU is still possible, as we are
releasing the rwsem lock before STOP callback. "Back to drawing board"
time to figure this all out..

Thanks,
Venki

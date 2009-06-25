From: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Subject: Re: [patch 2/3] cpufreq: Define dbs_mutex purpose and cleanup its
	usage
Date: Thu, 25 Jun 2009 17:32:19 -0400
Message-ID: <20090625213219.GA27311@Krystal>
References: <20090625183354.491259000@intel.com> <20090625183601.493904000@intel.com> <20090625194648.GA24657@Krystal> <1245963285.4534.20542.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1245963285.4534.20542.camel-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>

* Pallipadi, Venkatesh (venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org) wrote:
> On Thu, 2009-06-25 at 12:46 -0700, Mathieu Desnoyers wrote:
> > * venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org (venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org) wrote:
> > > Commit b14893a62c73af0eca414cfed505b8c09efc613c although it was very
> > > much needed to cleanup ondemand timer cleanly, openup a can of worms
> > > related to locking dependencies in cpufreq.
> > > 
> > > Patch here defines the need for dbs_mutex and cleans up its usage in
> > > ondemand governor. This also resolves the lockdep warnings reported here
> > > 
> > > http://lkml.indiana.edu/hypermail/linux/kernel/0906.1/01925.html
> > > 
> 
> > > @@ -598,14 +593,16 @@ static int cpufreq_governor_dbs(struct cpufreq_policy *policy,
> > >  				max(min_sampling_rate,
> > >  				    latency * LATENCY_MULTIPLIER);
> > >  		}
> > > +		mutex_unlock(&dbs_mutex);
> > > +
> > >  		dbs_timer_init(this_dbs_info);
> > >  
> > > -		mutex_unlock(&dbs_mutex);
> > >  		break;
> > >  
> > >  	case CPUFREQ_GOV_STOP:
> > > -		mutex_lock(&dbs_mutex);
> > >  		dbs_timer_exit(this_dbs_info);
> > 
> > Hrm, so.. how do we protect against concurrent :
> > 
> > CPUFREQ_GOV_START/CPUFREQ_GOV_STOP now ?
> 
> concurrent _START _STOP across CPUs does not matter for timer_init and
> timer_exit.

Given those are per-cpu anyway I guess. Hopefully it works OK with CPU
hotplug.

> On same CPU, there cannot be two concurrent _START as upper
> level cpufreq will have policy_rwsem in write mode.

Agreed.

> I cannot think of a
> flow where _START and _STOP on same CPU is possible.
> 

_STOP is not protected by any mutex now. So it could be preempted, and
then a _START executed, and there is your race.

> However two concurrent _STOP for same CPU is still possible, as we are
> releasing the rwsem lock before STOP callback. "Back to drawing board"
> time to figure this all out..

I fear that it is indeed the case. If you can come up with a document
explaining the expected interactions between :

- cpu hotplug
- policy lock
- cpufreq driver lock
- timer lock

that would be awesome. :)

Mathieu

> 
> Thanks,
> Venki
> 

-- 
Mathieu Desnoyers
OpenPGP key fingerprint: 8CD5 52C3 8E3C 4140 715F  BA06 3F25 A8FE 3BAE 9A68

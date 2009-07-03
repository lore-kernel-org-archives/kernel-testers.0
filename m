From: Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>
Subject: Re: [PATCH 1/2] CPUFREQ: Remove unneeded dbs_mutexes from ondemand and conservative governors
Date: Fri, 3 Jul 2009 12:10:15 +0200
Message-ID: <200907031210.16828.trenn@suse.de>
References: <20090623193215.GA31374@elte.hu> <1245938485-12663-2-git-send-email-trenn@suse.de> <20090630063339.GF1351@ucw.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090630063339.GF1351-+ZI9xUNit7I@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Cc: kernel-soeCzev1AWYdnm+yROfE0A@public.gmane.org, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, mingo-X9Un+BFzKDI@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org, mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org, Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

Hi Pavel,

On Tuesday 30 June 2009 08:33:39 Pavel Machek wrote:
> On Thu 2009-06-25 16:01:24, Thomas Renninger wrote:
> > Comment from Venkatesh:
> > ...
> > This mutex is just serializing the changes to those variables. I could't
> > think of any functionality issues of not having the lock as such.
> > 
> > -> rip it out.
> > 
> > CC: Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> > Signed-off-by: Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>
> 
> >  static struct dbs_tuners {
> > @@ -236,10 +222,7 @@ static ssize_t store_sampling_down_factor(struct cpufreq_policy *unused,
> >  	if (ret != 1 || input > MAX_SAMPLING_DOWN_FACTOR || input < 1)
> >  		return -EINVAL;
> >  
> > -	mutex_lock(&dbs_mutex);
> >  	dbs_tuners_ins.sampling_down_factor = input;
> > -	mutex_unlock(&dbs_mutex);
> > -
> 
> You'd need to make s_down_factor atomic_t for this to work....
Can you provide a userspace scenario (or tell which kind of event must
happen in between), that this would cause problems, please.

Thanks,

  Thomas

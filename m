From: Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH 1/2] CPUFREQ: Remove unneeded dbs_mutexes from ondemand
	and conservative governors
Date: Sun, 5 Jul 2009 21:46:46 +0200
Message-ID: <20090705194646.GF17910@elf.ucw.cz>
References: <20090623193215.GA31374@elte.hu> <1245938485-12663-2-git-send-email-trenn@suse.de> <20090630063339.GF1351@ucw.cz> <200907031210.16828.trenn@suse.de>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756105AbZGETrI@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200907031210.16828.trenn@suse.de>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Thomas Renninger <trenn@suse.de>
Cc: kernel@stable.org, cpufreq@vger.kernel.org, linux-kernel@vger.kernel.org, mingo@elte.hu, rjw@sisk.pl, hidave.darkstar@gmail.com, penberg@cs.helsinki.fi, kernel-testers@vger.kernel.org, davej@redhat.com, mathieu.desnoyers@polymtl.ca, Venkatesh Pallipadi <venkatesh.pallipadi@intel.com>

On Fri 2009-07-03 12:10:15, Thomas Renninger wrote:
> Hi Pavel,
> 
> On Tuesday 30 June 2009 08:33:39 Pavel Machek wrote:
> > On Thu 2009-06-25 16:01:24, Thomas Renninger wrote:
> > > Comment from Venkatesh:
> > > ...
> > > This mutex is just serializing the changes to those variables. I could't
> > > think of any functionality issues of not having the lock as such.
> > > 
> > > -> rip it out.
> > > 
> > > CC: Venkatesh Pallipadi <venkatesh.pallipadi@intel.com>
> > > Signed-off-by: Thomas Renninger <trenn@suse.de>
> > 
> > >  static struct dbs_tuners {
> > > @@ -236,10 +222,7 @@ static ssize_t store_sampling_down_factor(struct cpufreq_policy *unused,
> > >  	if (ret != 1 || input > MAX_SAMPLING_DOWN_FACTOR || input < 1)
> > >  		return -EINVAL;
> > >  
> > > -	mutex_lock(&dbs_mutex);
> > >  	dbs_tuners_ins.sampling_down_factor = input;
> > > -	mutex_unlock(&dbs_mutex);
> > > -
> > 
> > You'd need to make s_down_factor atomic_t for this to work....
> Can you provide a userspace scenario (or tell which kind of event must
> happen in between), that this would cause problems, please.


Imagine 

dbs_tuners_ins.sampling_down_factor = 0xd0000;
input = 0xabcd;

..then other threads can see 0xdabcd; if they read at "bad"
moment. Not on i386, but this is generic code (right?). Just use
atomic_t.
									Pavel   

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

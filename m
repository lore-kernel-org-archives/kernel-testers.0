From: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Subject: Re: [PATCH 1/2] CPUFREQ: Remove unneeded dbs_mutexes from ondemand
	and conservative governors
Date: Tue, 30 Jun 2009 08:33:39 +0200
Message-ID: <20090630063339.GF1351@ucw.cz>
References: <20090623193215.GA31374@elte.hu> <1245938485-12663-2-git-send-email-trenn@suse.de>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1245938485-12663-2-git-send-email-trenn-l3A5Bk7waGM@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>
Cc: kernel-soeCzev1AWYdnm+yROfE0A@public.gmane.org, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, mingo-X9Un+BFzKDI@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org, mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org, Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Thu 2009-06-25 16:01:24, Thomas Renninger wrote:
> Comment from Venkatesh:
> ...
> This mutex is just serializing the changes to those variables. I could't
> think of any functionality issues of not having the lock as such.
> 
> -> rip it out.
> 
> CC: Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Signed-off-by: Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>

>  static struct dbs_tuners {
> @@ -236,10 +222,7 @@ static ssize_t store_sampling_down_factor(struct cpufreq_policy *unused,
>  	if (ret != 1 || input > MAX_SAMPLING_DOWN_FACTOR || input < 1)
>  		return -EINVAL;
>  
> -	mutex_lock(&dbs_mutex);
>  	dbs_tuners_ins.sampling_down_factor = input;
> -	mutex_unlock(&dbs_mutex);
> -

You'd need to make s_down_factor atomic_t for this to work....
								Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

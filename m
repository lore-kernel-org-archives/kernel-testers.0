From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12667] Badness at kernel/time/timekeeping.c:98 in pmud (timekeeping_suspended)
Date: Thu, 19 Feb 2009 23:08:45 +0100
Message-ID: <200902192308.46532.rjw@sisk.pl>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera> <200902191400.53528.rjw@sisk.pl> <1235080040.8805.47.camel@pasglop>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1235080040.8805.47.camel@pasglop>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Cc: Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

On Thursday 19 February 2009, Benjamin Herrenschmidt wrote:
> On Thu, 2009-02-19 at 14:00 +0100, Rafael J. Wysocki wrote:
> > On Thursday 19 February 2009, Benjamin Herrenschmidt wrote:
> > > On Thu, 2009-02-19 at 21:27 +1300, Paul Collins wrote:
> > > > > Just for laughs I slapped together the following, which seems to do
> > > > the
> > > > > job, although not especially tidily.
> > > > 
> > > > And it doesn't even do the job.  Judging by this new trace, submitting
> > > > input events from the via-pmu resume function is still too early.
> > > > 
> > > What's up Thomas ? We can't call gettimeofday() from a sysdev
> > > suspend/resume ? That's a little bit too harsh no ?
> > 
> > Perhaps the ordering is wrong (ie. via-pmu resume happens bevore timekeeping
> > resume)?
> 
> In this case, maybe gtod should just return the frozen time (ie, last
> time at the time of suspend) rather than WARN ?

This might work, but there seem to be more problems like this (cpufreq vs
timekeeping for example).

I think we need a more general approach.

Thanks,
Rafael

From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12667] Badness at kernel/time/timekeeping.c:98 in pmud (timekeeping_suspended)
Date: Thu, 19 Feb 2009 22:23:04 +0100
Message-ID: <200902192223.05361.rjw@sisk.pl>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera> <1235032710.8805.37.camel@pasglop> <alpine.LFD.2.00.0902192114150.3523@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0902192114150.3523-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Cc: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>, Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Thursday 19 February 2009, Thomas Gleixner wrote:
> On Thu, 19 Feb 2009, Benjamin Herrenschmidt wrote:
> 
> > On Thu, 2009-02-19 at 21:27 +1300, Paul Collins wrote:
> > > > Just for laughs I slapped together the following, which seems to do
> > > the
> > > > job, although not especially tidily.
> > > 
> > > And it doesn't even do the job.  Judging by this new trace, submitting
> > > input events from the via-pmu resume function is still too early.
> > > 
> > What's up Thomas ? We can't call gettimeofday() from a sysdev
> > suspend/resume ? That's a little bit too harsh no ?
> 
> Well, harsh or not is not the question here. 
> 
> Fact is that you call gettimeofday() _before_ the timekeeping code has
> resumed.
> 
> That's a simple ordering problem. timekeeping is in the sysdev class
> as well and it's not the only sysdev which has explicit ordering
> requirements.

Do we need suspend-resume priorities for sysdevs?  Such that sysdevs
with a higher priority will always be suspended earlier and resumed later
than sysdevs with lower priority (or the other way around)?

Rafael

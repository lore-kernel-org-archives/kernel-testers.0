From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12667] Badness at kernel/time/timekeeping.c:98 in pmud (timekeeping_suspended)
Date: Thu, 19 Feb 2009 14:00:52 +0100
Message-ID: <200902191400.53528.rjw@sisk.pl>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera> <87r61uzv95.fsf@burly.wgtn.ondioline.org> <1235032710.8805.37.camel@pasglop>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1235032710.8805.37.camel@pasglop>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Cc: Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

On Thursday 19 February 2009, Benjamin Herrenschmidt wrote:
> On Thu, 2009-02-19 at 21:27 +1300, Paul Collins wrote:
> > > Just for laughs I slapped together the following, which seems to do
> > the
> > > job, although not especially tidily.
> > 
> > And it doesn't even do the job.  Judging by this new trace, submitting
> > input events from the via-pmu resume function is still too early.
> > 
> What's up Thomas ? We can't call gettimeofday() from a sysdev
> suspend/resume ? That's a little bit too harsh no ?

Perhaps the ordering is wrong (ie. via-pmu resume happens bevore timekeeping
resume)?

Rafael

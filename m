From: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Subject: Re: [Bug #12667] Badness at kernel/time/timekeeping.c:98 in pmud
 (timekeeping_suspended)
Date: Thu, 19 Feb 2009 21:17:24 +0100 (CET)
Message-ID: <alpine.LFD.2.00.0902192114150.3523@localhost.localdomain>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera>  <sWhNs83kKPE.A.p4D.L20jJB@chimera>  <878wognj00.fsf@burly.wgtn.ondioline.org> <200902142342.59186.rjw@sisk.pl>  <87hc2u26m5.fsf@burly.wgtn.ondioline.org>  <1234775410.26036.122.camel@pasglop> 
 <87d4di1wwr.fsf@burly.wgtn.ondioline.org>  <87r61uzv95.fsf@burly.wgtn.ondioline.org> <1235032710.8805.37.camel@pasglop>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1235032710.8805.37.camel@pasglop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Cc: Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Thu, 19 Feb 2009, Benjamin Herrenschmidt wrote:

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

Well, harsh or not is not the question here. 

Fact is that you call gettimeofday() _before_ the timekeeping code has
resumed.

That's a simple ordering problem. timekeeping is in the sysdev class
as well and it's not the only sysdev which has explicit ordering
requirements.

Thanks,

	tglx

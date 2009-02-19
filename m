From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #12667] Badness at kernel/time/timekeeping.c:98 in pmud
 (timekeeping_suspended)
Date: Thu, 19 Feb 2009 19:38:30 +1100
Message-ID: <1235032710.8805.37.camel@pasglop>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera>
	 <sWhNs83kKPE.A.p4D.L20jJB@chimera>
	 <878wognj00.fsf@burly.wgtn.ondioline.org> <200902142342.59186.rjw@sisk.pl>
	 <87hc2u26m5.fsf@burly.wgtn.ondioline.org>
	 <1234775410.26036.122.camel@pasglop>
	 <87d4di1wwr.fsf@burly.wgtn.ondioline.org>
	 <87r61uzv95.fsf@burly.wgtn.ondioline.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <87r61uzv95.fsf-D7l3p2TGOOdLdt5/z87VRY6ehsQQaF5K@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

On Thu, 2009-02-19 at 21:27 +1300, Paul Collins wrote:
> > Just for laughs I slapped together the following, which seems to do
> the
> > job, although not especially tidily.
> 
> And it doesn't even do the job.  Judging by this new trace, submitting
> input events from the via-pmu resume function is still too early.
> 
What's up Thomas ? We can't call gettimeofday() from a sysdev
suspend/resume ? That's a little bit too harsh no ?

Cheers,
Ben.

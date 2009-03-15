From: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12809] iozone regression with 2.6.29-rc6
Date: Sun, 15 Mar 2009 15:55:52 +0800
Message-ID: <20090315075552.GA6015@localhost>
References: <MiincthRUSI.A.eKC.F4BvJB@chimera> <GCLaknAim2M.A.BKD.q4BvJB@chimera> <alpine.LFD.2.00.0903141719510.3940@localhost.localdomain>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0903141719510.3940-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Lin, Ming M" <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

On Sun, Mar 15, 2009 at 08:27:08AM +0800, Linus Torvalds wrote:
> 
> 
> On Sat, 14 Mar 2009, Rafael J. Wysocki wrote:
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.28.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12809
> > Subject		: iozone regression with 2.6.29-rc6
> > Submitter	: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> > Date		: 2009-02-27 9:13 (16 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=1cf6e7d83bf334cc5916137862c920a97aabc018
> > References	: http://marc.info/?l=linux-kernel&m=123572630504360&w=4
> > Handled-By	: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> 
> I suspect that I should just raise the default dirty limits. Wu reported 
> that it fixed the regression, and while he picked some rather high 
> percentages, I think we could certainly raise the rather aggressive 
> default ones. 
> 
> After all, those default percentages were picked (a) with the old dirty 
> logic and (b) largely at random and (c) designed to be aggressive. In 
> particular, that (a) means that having fixed some of the dirty accounting, 
> maybe the real bug is now that it was always too aggressive, just hidden 
> by an accounting issue.

I second that.

1) The _real_ dirty threshold used to be large.
2) It is a _real_ regression. It impacts real user experiences.

So when introducing Nick's correct-dirty-accounting patch, we'd better
increase the dirty thresholds correspondingly.

> If we raised the default ratio from 5/10 to 10/20, what happens to the 
> iozone regression?

Maybe tomorrow. Ling Ming?

In general we should not cater the thresholds for one specific workload.
But this is a case of _regression_, and it would be better to raise the
bars above it.

Thanks,
Fengguang

From: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12809] iozone regression with 2.6.29-rc6
Date: Mon, 16 Mar 2009 13:03:42 +0800
Message-ID: <1237179822.27907.6.camel@minggr.sh.intel.com>
References: <MiincthRUSI.A.eKC.F4BvJB@chimera>
	 <GCLaknAim2M.A.BKD.q4BvJB@chimera>
	 <alpine.LFD.2.00.0903141719510.3940@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0903141719510.3940-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, "Wu, Fengguang" <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Sun, 2009-03-15 at 08:27 +0800, Linus Torvalds wrote:
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
> 
> If we raised the default ratio from 5/10 to 10/20, what happens to the 
> iozone regression?

echo 10 > /proc/sys/vm/dirty_background_ratio
echo 20 > /proc/sys/vm/dirty_ratio

It fixed the regression of iozone (filesize 1200M) on 4P dual-core HT
machine(8G mem).

Lin Ming


From: Chris Wright <chrisw-69jw2NvuJkxg9hUCZPvPmw@public.gmane.org>
Subject: Re: [stable] [Bug #12809] iozone regression with 2.6.29-rc6
Date: Mon, 6 Apr 2009 23:34:20 +0000
Message-ID: <20090406233420.GA17070@hera.kernel.org>
References: <n4io5wq70ZO.A.gzG.rFn2JB@chimera> <20090406221509.GA17604@localhost> <20090406222037.GA18714@localhost> <200904070030.26367.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200904070030.26367.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, "Lin, Ming M" <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org

* Rafael J. Wysocki (rjw-KKrjLPT3xs0@public.gmane.org) wrote:
> On Tuesday 07 April 2009, Wu Fengguang wrote:
> > On Tue, Apr 07, 2009 at 06:15:09AM +0800, Wu Fengguang wrote:
> > > On Tue, Apr 07, 2009 at 03:05:38AM +0800, Rafael J. Wysocki wrote:
> > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12809
> > > > Subject		: iozone regression with 2.6.29-rc6
> > > > Submitter	: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> > > > Date		: 2009-02-27 9:13 (39 days old)
> > > > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=1cf6e7d83bf334cc5916137862c920a97aabc018
> > > > References	: http://marc.info/?l=linux-kernel&m=123572630504360&w=4
> > > > 		  http://lkml.org/lkml/2009/3/14/265
> > > > Handled-By	: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> > > 
> > > This bug could be closed.
> > > 
> > > The performance regression is triggered by commit 1cf6e7d83bf3(mm:
> > > task dirty accounting fix). Which has been reverted in 2.6.29.
> > 
> > Sorry for the mistake, commit 1cf6e7d83bf3 was _not_ reverted.
> > So 2.6.29 is expected to have this regression.. 
> 
> Added -stable to the CC list.  I'm not sure if that was included into .29.1.

1cf6e7d83bf3 is part of 2.6.29.1 (came in 2.6.29-rc6)

> > > For 2.6.30, commit 1cf6e7d83bf33(mm: task dirty accounting fix) and
> > > 1b5e62b42b55(writeback: double the dirty thresholds) were just merged
> > > together. The latter one restores the iozone performance. (However
> > > might deteriorate some writeback slowness bugs..)

1b5e62b42b55 is not in -stable.

thanks,
-chris

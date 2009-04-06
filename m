From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12809] iozone regression with 2.6.29-rc6
Date: Tue, 7 Apr 2009 00:30:25 +0200
Message-ID: <200904070030.26367.rjw@sisk.pl>
References: <n4io5wq70ZO.A.gzG.rFn2JB@chimera> <20090406221509.GA17604@localhost> <20090406222037.GA18714@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090406222037.GA18714@localhost>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Lin, Ming M" <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org

On Tuesday 07 April 2009, Wu Fengguang wrote:
> On Tue, Apr 07, 2009 at 06:15:09AM +0800, Wu Fengguang wrote:
> > On Tue, Apr 07, 2009 at 03:05:38AM +0800, Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a report
> > > of recent regressions.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.28.  Please verify if it still should be listed and let me know
> > > (either way).
> > > 
> > > 
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12809
> > > Subject		: iozone regression with 2.6.29-rc6
> > > Submitter	: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> > > Date		: 2009-02-27 9:13 (39 days old)
> > > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=1cf6e7d83bf334cc5916137862c920a97aabc018
> > > References	: http://marc.info/?l=linux-kernel&m=123572630504360&w=4
> > > 		  http://lkml.org/lkml/2009/3/14/265
> > > Handled-By	: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> > > 
> > 
> > This bug could be closed.
> > 
> > The performance regression is triggered by commit 1cf6e7d83bf3(mm:
> > task dirty accounting fix). Which has been reverted in 2.6.29.
> 
> Sorry for the mistake, commit 1cf6e7d83bf3 was _not_ reverted.
> So 2.6.29 is expected to have this regression.. 

Added -stable to the CC list.  I'm not sure if that was included into .29.1.

> > For 2.6.30, commit 1cf6e7d83bf33(mm: task dirty accounting fix) and
> > 1b5e62b42b55(writeback: double the dirty thresholds) were just merged
> > together. The latter one restores the iozone performance. (However
> > might deteriorate some writeback slowness bugs..)

Thanks, I've closed the bug.

Rafael

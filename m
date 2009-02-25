From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12618] hackbench [pthread mode] regression with 2.6.29-rc3
Date: Thu, 26 Feb 2009 00:00:38 +0100
Message-ID: <200902260000.38810.rjw@sisk.pl>
References: <GVhknozYwrL.A.hiC.rozoJB@chimera> <1235465408.2604.444.camel@ymzhang> <20090224204638.GD15161@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090224204638.GD15161-X9Un+BFzKDI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: "Zhang, Yanmin" <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tuesday 24 February 2009, Ingo Molnar wrote:
> 
> * Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org> wrote:
> 
> > On Tue, 2009-02-24 at 09:48 +0100, Peter Zijlstra wrote:
> > > On Mon, 2009-02-23 at 22:48 +0100, Rafael J. Wysocki wrote:
> > > > This message has been generated automatically as a part of a report
> > > > of recent regressions.
> > > > 
> > > > The following bug entry is on the current list of known regressions
> > > > from 2.6.28.  Please verify if it still should be listed and let me know
> > > > (either way).
> > > > 
> > > > 
> > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12618
> > > > Subject		: hackbench [pthread mode] regression with 2.6.29-rc3
> > > > Submitter	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
> > > > Date		: 2009-02-01 7:30 (23 days old)
> > > > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=490dea45d00f01847ebebd007685d564aaf2cd98
> > > > References	: http://marc.info/?l=linux-kernel&m=123347347726527&w=4
> > > > Handled-By	: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
> > > > Patch		: http://marc.info/?l=linux-kernel&m=123383366122146&w=4
> > > > 		  http://marc.info/?l=linux-kernel&m=123383366222152&w=4
> > > 
> > > 
> > > I thought this was all upstream by now,
> > Yes.
> > 
> > >  Yanmin, are we still seeing some
> > > badness?
> > No. Pls. close the bug report.
> 
> for the record, fixed by:
> 
>  3fccfd6: timers: split process wide cpu clocks/timers, fix

Thanks, closed.

Rafael

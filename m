From: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [Bug #11209] 2.6.27-rc1 process time accounting
Date: Mon, 08 Sep 2008 08:40:46 +0200
Message-ID: <1220856046.8687.106.camel@twins.programming.kicks-ass.net>
References: <s3QDdfEDq6.A.wlH.MowwIB@albercik>
	 <Wz8EH5sroeE.A.mUD.WswwIB@albercik>
	 <1220778273.8687.20.camel@twins.programming.kicks-ass.net>
	 <200809080002.09381.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200809080002.09381.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Lukas Hejtmanek <xhejtman-8qz54MUs51PtwjQa/ONI9g@public.gmane.org>

On Mon, 2008-09-08 at 00:02 +0200, Rafael J. Wysocki wrote:
> On Sunday, 7 of September 2008, Peter Zijlstra wrote:
> > On Sat, 2008-09-06 at 23:30 +0200, Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a report
> > > of recent regressions.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.26.  Please verify if it still should be listed and let me know
> > > (either way).
> > > 
> > > 
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11209
> > > Subject		: 2.6.27-rc1 process time accounting
> > > Submitter	: Lukas Hejtmanek <xhejtman-8qz54MUs51PtwjQa/ONI9g@public.gmane.org>
> > > Date		: 2008-07-31 10:43 (38 days old)
> > > References	: http://marc.info/?l=linux-kernel&m=121750102917490&w=4
> > > Handled-By	: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
> > 
> > Should be fixed in the latest -git
> 
> Thanks for the update.
> 
> Does any specific commit fix it or just a series of recent commits?

commit 49048622eae698e5c4ae61f7e71200f265ccc529
Author: Balbir Singh <balbir-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Date:   Fri Sep 5 18:12:23 2008 +0200

    sched: fix process time monotonicity

    Spencer reported a problem where utime and stime were going negative despite
    the fixes in commit b27f03d4bdc145a09fb7b0c0e004b29f1ee555fa. The suspected
    reason for the problem is that signal_struct maintains it's own utime and
    stime (of exited tasks), these are not updated using the new task_utime()
    routine, hence sig->utime can go backwards and cause the same problem
    to occur (sig->utime, adds tsk->utime and not task_utime()). This patch
    fixes the problem

commit 56c7426b3951e4f35a71d695f1c982989399d6fd
Author: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
Date:   Mon Sep 1 16:44:23 2008 +0200

    sched_clock: fix NOHZ interaction

    If HLT stops the TSC, we'll fail to account idle time, thereby inflating the
    actual process times. Fix this by re-calibrating the clock against GTOD when
    leaving nohz mode.




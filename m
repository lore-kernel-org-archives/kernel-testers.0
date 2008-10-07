From: Dhaval Giani <dhaval-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Subject: Re: [Bug #11207] VolanoMark regression with 2.6.27-rc1
Date: Tue, 7 Oct 2008 22:10:16 +0530
Message-ID: <20081007164016.GB7607@linux.vnet.ibm.com>
References: <0pOgGB.A.uLG.E475IB@wind> <yWwteD.A.S8B.b975IB@wind> <200810080211.42210.nickpiggin@yahoo.com.au> <1223394526.26330.52.camel@lappy.programming.kicks-ass.net>
Reply-To: Dhaval Giani <dhaval-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1223394526.26330.52.camel-N9Ixq/CQ5vKdTX5a5knrm8zTDFooKrT+cvkQGrU6aU0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
Cc: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Miao Xie <miaox-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>, "Zhang, Yanmin" <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>

On Tue, Oct 07, 2008 at 05:48:46PM +0200, Peter Zijlstra wrote:
> On Wed, 2008-10-08 at 02:11 +1100, Nick Piggin wrote:
> > On Sunday 05 October 2008 04:28, Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a report
> > > of recent regressions.
> > >
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.26.  Please verify if it still should be listed and let me know
> > > (either way).
> > >
> > >
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11207
> > > Subject		: VolanoMark regression with 2.6.27-rc1
> > > Submitter	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
> > > Date		: 2008-07-31 3:20 (66 days old)
> > > References	: http://marc.info/?l=linux-kernel&m=121747464114335&w=4
> > > Handled-By	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
> > > 		  Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
> > > 		  Dhaval Giani <dhaval-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
> > > 		  Miao Xie <miaox-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>
> > 
> > Curious: what's happening with this one, handlers? Any progress being made?
> 
> Sadly not much, I can't seem to reproduce :-(
> 

This hits only when sched_compat_yield is set. Sadly, the machine which
did reproduce this for me has gone down. Currently I am away from that
machine for another two weeks. I can try giving it a shot again then.

-- 
regards,
Dhaval

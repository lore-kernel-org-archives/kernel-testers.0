From: Peter Zijlstra <a.p.zijlstra@chello.nl>
Subject: Re: [Bug #11207] VolanoMark regression with 2.6.27-rc1
Date: Tue, 07 Oct 2008 17:48:46 +0200
Message-ID: <1223394526.26330.52.camel@lappy.programming.kicks-ass.net>
References: <0pOgGB.A.uLG.E475IB@wind> <yWwteD.A.S8B.b975IB@wind>
	 <200810080211.42210.nickpiggin@yahoo.com.au>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755959AbYJGPt0@vger.kernel.org>
In-Reply-To: <200810080211.42210.nickpiggin@yahoo.com.au>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Nick Piggin <nickpiggin@yahoo.com.au>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Dhaval Giani <dhaval@linux.vnet.ibm.com>, Miao Xie <miaox@cn.fujitsu.com>, "Zhang, Yanmin" <yanmin_zhang@linux.intel.com>

On Wed, 2008-10-08 at 02:11 +1100, Nick Piggin wrote:
> On Sunday 05 October 2008 04:28, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.26.  Please verify if it still should be listed and let me know
> > (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11207
> > Subject		: VolanoMark regression with 2.6.27-rc1
> > Submitter	: Zhang, Yanmin <yanmin_zhang@linux.intel.com>
> > Date		: 2008-07-31 3:20 (66 days old)
> > References	: http://marc.info/?l=linux-kernel&m=121747464114335&w=4
> > Handled-By	: Zhang, Yanmin <yanmin_zhang@linux.intel.com>
> > 		  Peter Zijlstra <a.p.zijlstra@chello.nl>
> > 		  Dhaval Giani <dhaval@linux.vnet.ibm.com>
> > 		  Miao Xie <miaox@cn.fujitsu.com>
> 
> Curious: what's happening with this one, handlers? Any progress being made?

Sadly not much, I can't seem to reproduce :-(

Yanmin, does the wakeup patch I did for oltp help this workload any?

http://marc.info/?l=linux-kernel&m=122194673932703&w=4



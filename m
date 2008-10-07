From: Dave Jones <davej@codemonkey.org.uk>
Subject: Re: [Bug #11264] Invalid op opcode in kernel/workqueue
Date: Tue, 7 Oct 2008 12:58:39 -0400
Message-ID: <20081007165839.GA24117@codemonkey.org.uk>
References: <0pOgGB.A.uLG.E475IB@wind> <yWwteD.A.oLB.b875IB@wind> <200810080223.03395.nickpiggin@yahoo.com.au>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756727AbYJGQ4t@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200810080223.03395.nickpiggin@yahoo.com.au>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Nick Piggin <nickpiggin@yahoo.com.au>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, oleg@tv-sign.ru, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Jean-Luc Coulon <jean.luc.coulon@gmail.com>, venkatesh.pallipadi@intel.com

On Wed, Oct 08, 2008 at 02:23:03AM +1100, Nick Piggin wrote:
 > On Sunday 05 October 2008 04:32, Rafael J. Wysocki wrote:
 > > This message has been generated automatically as a part of a report
 > > of recent regressions.
 > >
 > > The following bug entry is on the current list of known regressions
 > > from 2.6.26.  Please verify if it still should be listed and let me know
 > > (either way).
 > >
 > >
 > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11264
 > > Subject		: Invalid op opcode in kernel/workqueue
 > > Submitter	: Jean-Luc Coulon <jean.luc.coulon@gmail.com>
 > > Date		: 2008-08-07 04:18 (59 days old)
 > 
 > Any progress being made with this one? Dave, Oleg did some pretty
 > nice looking debugging work that indicates it might be a cpufreq
 > problem. Have you had a chance to look at the comments in the
 > bugzilla? Or have you been cc'ed on patches for this?

I'm not convinced that the original report wasn't hardware related.
We had taken a machine check exception already, which shows that something
isn't quite right.  MCEs happening under high load are usually a sign
of thermal/power problems of some sort.

Oleg's comments may still hold true, independant of the report.
I've added Venki to the Cc: as he's recently rewritten considerable
amounts of the ondemand governor (though the workqueue mechanics
are pretty much the same).

	Dave

-- 
http://www.codemonkey.org.uk

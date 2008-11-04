From: "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Subject: Re: [Bug #11876] RCU hang on cpu re-hotplug with 2.6.27rc8
Date: Tue, 4 Nov 2008 08:40:52 -0800
Message-ID: <20081104164052.GA8499@linux.vnet.ibm.com>
References: <Sl8SUNhCbfL.A.O5H.yueDJB@chimera> <4xS1r6m15_B.A.dU.7ueDJB@chimera>
Reply-To: paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <4xS1r6m15_B.A.dU.7ueDJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>

On Sun, Nov 02, 2008 at 05:49:38PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.26 and 2.6.27.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.26 and 2.6.27.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11876
> Subject		: RCU hang on cpu re-hotplug with 2.6.27rc8
> Submitter	: Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
> Date		: 2008-10-06 23:28 (28 days old)
> References	: http://marc.info/?l=linux-kernel&m=122333610602399&w=2
> Handled-By	: Paul E. McKenney <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>

Hallo, Andi,

Last I heard, the act of enabling CONFIG_RCU_CPU_STALL_DETECTOR
reduced the problem from a hang to a 3-second grace period.  How
are things going with this now?

						Thanx, Paul

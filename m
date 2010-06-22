From: "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Subject: Re: [Bug #15863] 2.6.34-rc5-git7 (plus all patches) -- another
 suspicious rcu_dereference_check() usage.
Date: Tue, 22 Jun 2010 14:11:35 -0700
Message-ID: <20100622211135.GO2290@linux.vnet.ibm.com>
References: <g77CuMUl7QI.A.qMH.4ZpHMB@chimera>
 <rHrHQMIU4rI.A.E9B.QcpHMB@chimera>
Reply-To: paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <rHrHQMIU4rI.A.E9B.QcpHMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Miles Lane <miles.lane-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Mon, Jun 21, 2010 at 12:34:25AM +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.33 and 2.6.34.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.33 and 2.6.34.  Please verify if it still should
> be listed and let the tracking team know (either way).

We have been knocking these off as they appear.  There is one or two
that the relevant maintainers have been ignoring, but that always seems
to be the case.  ;-)

Your choice as to whether you want to track the group...

							Thanx, Paul

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15863
> Subject		: 2.6.34-rc5-git7 (plus all patches) -- another suspicious rcu_dereference_check() usage.
> Submitter	: Miles Lane <miles.lane-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-04-27 0:51 (55 days old)
> Message-ID	: <h2ya44ae5cd1004261751waa5cb65ei3d139cbcfa2cc5cf-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=127232949104878&w=2
> Handled-By	: Paul E. McKenney <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
> Patch		: https://patchwork.kernel.org/patch/96096/
> 
> 

From: "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Subject: Re: 2.6.26-rc9-git4: Reported regressions from 2.6.25
Date: Fri, 1 Aug 2008 14:09:58 -0700
Message-ID: <20080801210958.GL14851@linux.vnet.ibm.com>
References: <4yrA-dRoNlD.A.jcB.ny-cIB@albercik> <20080710173459.GA11648@elte.hu> <20080710180620.GA30844@elte.hu> <200807111412.00084.nickpiggin@yahoo.com.au>
Reply-To: paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200807111412.00084.nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, Jul 11, 2008 at 02:11:59PM +1000, Nick Piggin wrote:
> On Friday 11 July 2008 04:06, Ingo Molnar wrote:
> 
> > i'm wondering why rcutorture didnt trigger it. I do run !HOTPLUG +
> > RCU_PREEMPT kernels and never saw this. Nor did Paul. That aspect is
> > weird.
> 
> It basically requires an active rcu reader to be preempted (preferably
> by something doing a lot of call_rcu or other activity ie. the writer
> so it can tick along the different states quickly).
> 
> I found just 2 threads (reader and writer) bound to the same CPU would
> trigger it fastest, my reader has quite a long rcu read section.
> 
> I'm not sure why rcutorture doesn't trigger for everyone. I'm surprised
> it does not have much longer maximum read delays -- several ms I would
> have thought should be useful to have a crticial section open while the
> rcu engine can run through a number of states...

Hit it in 10 seconds once I actually got HOTPLUG_CPU disabled.

The theory behind the default settings for rcutorture are as follows:

o	Having two reader threads for each CPU helps ensure interactions
	between those threads.

o	The writer is normally going to have to share a CPU with a
	reader or two, maybe three.  This should force reader-writer
	interactions.

o	The read-hold time needs to be long enough to ensure interactions
	with the writer, but if it is too long, there are too few
	rcu_read_lock() and rcu_read_unlock() events to really stress
	the read-side processing.

o	The four fakewriters ensure interaction between multiple
	writers.

To Nick's point, I did use a hacked-up rcutorture with millisecond
read-side delays when debugging preemptable RCU, but I also used stock
rcutorture.

I will give this some thought and see if the defaults should change or
if more knobs are needed.

							Thanx, Paul

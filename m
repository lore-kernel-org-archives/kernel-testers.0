From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: 2.6.26-rc9-git4: Reported regressions from 2.6.25
Date: Thu, 10 Jul 2008 10:21:30 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0807101020270.11076@woody.linux-foundation.org>
References: <4yrA-dRoNlD.A.jcB.ny-cIB@albercik> <200807101725.36175.nickpiggin@yahoo.com.au> <20080710110213.GA6688@martell.zuzino.mipt.ru>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080710110213.GA6688-QDJVlCTZ4KWTKS93B3g+7KFoa47nwP16@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Thu, 10 Jul 2008, Alexey Dobriyan wrote:

> On Thu, Jul 10, 2008 at 05:25:35PM +1000, Nick Piggin wrote:
> > 
> > Attached is my fix for this problem. I don't think it is a regression
> > as such, but it can't hurt to go into 2.6.26 IMO.

Nick, you're a hero.

> > PREEMPT_RCU without HOTPLUG_CPU is broken.
> 
> Bastard!
> 
> rcutorture fixed here, starting cross-compile stuff (without much interest).

I'm marking this "tested-by" by you too, on the strength of that 
rcutorture thing. I think Nick nailed this one.

Good jorb,

		Linus

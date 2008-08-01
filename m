From: "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Subject: Re: 2.6.26-rc9-git4: Reported regressions from 2.6.25
Date: Fri, 1 Aug 2008 14:09:53 -0700
Message-ID: <20080801210953.GK14851@linux.vnet.ibm.com>
References: <4yrA-dRoNlD.A.jcB.ny-cIB@albercik> <200807101725.36175.nickpiggin@yahoo.com.au> <20080710110213.GA6688@martell.zuzino.mipt.ru> <alpine.LFD.1.10.0807101020270.11076@woody.linux-foundation.org> <20080710173459.GA11648@elte.hu> <20080710180620.GA30844@elte.hu> <20080710204157.GG6877@linux.vnet.ibm.com>
Reply-To: paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20080710204157.GG6877-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Thu, Jul 10, 2008 at 01:41:57PM -0700, Paul E. McKenney wrote:
> On Thu, Jul 10, 2008 at 08:06:20PM +0200, Ingo Molnar wrote:
> > 
> > * Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
> > 
> > > cool! :)
> > > 
> > > (hm, could anyone please resend Nick's original mail? The original one 
> > > is not in my lkml folder nor on lkml.org - only the quoted one.)
> > 
> > ok, got the mail now now:
> > 
> > | | Annoyed this wasn't a crazy obscure error in the algorithm I could 
> > | | fix :) [...]
> > 
> > Paul recently ran a formal proof against all sorts of RCU details (and 
> > found and fixed a few obscure races that way that no-one ever 
> > triggered), so i'd be quite surprised if we found anything in the core 
> > algorithm :-)

Yeah, it was instead the simple stuff that I messed up...  :-/

> > | | [...] I spent all day debugging it and had to make a special test 
> > | | case (rcutorture didn't seem to trigger it), and a big RCU state 
> > | | logging infrastructure to log millions of RCU state transitions and 
> > | | events. Oh well.
> > 
> > nice debugging!
> 
> Indeed!!!
> 
> > Acked-by: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> > 
> > i'm wondering why rcutorture didnt trigger it. I do run !HOTPLUG + 
> > RCU_PREEMPT kernels and never saw this. Nor did Paul. That aspect is 
> > weird.
> 
> Turns out that my environment was silently re-enabling HOTPLUG_CPU, so I
> only -thought- I was testing !CPU_HOTPLUG.  Once I forced it to really
> disable HOTPLUG_CPU (by manually also specifying CONFIG_SUSPEND=n and
> CONFIG_HIBERNATION=n), then rcutorture complained within 10 seconds.
> 
> Sigh!!!

And Nick's patch gets rid of the rcutorture failures for me as well,
now that I can reproduce them.  ;-)

							Thanx, Paul

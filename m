From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: 2.6.26-rc9-git4: Reported regressions from 2.6.25
Date: Thu, 10 Jul 2008 20:06:20 +0200
Message-ID: <20080710180620.GA30844@elte.hu>
References: <4yrA-dRoNlD.A.jcB.ny-cIB@albercik> <200807101725.36175.nickpiggin@yahoo.com.au> <20080710110213.GA6688@martell.zuzino.mipt.ru> <alpine.LFD.1.10.0807101020270.11076@woody.linux-foundation.org> <20080710173459.GA11648@elte.hu>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20080710173459.GA11648-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Paul E. McKenney" <paulmck-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>


* Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:

> cool! :)
> 
> (hm, could anyone please resend Nick's original mail? The original one 
> is not in my lkml folder nor on lkml.org - only the quoted one.)

ok, got the mail now now:

| | Annoyed this wasn't a crazy obscure error in the algorithm I could 
| | fix :) [...]

Paul recently ran a formal proof against all sorts of RCU details (and 
found and fixed a few obscure races that way that no-one ever 
triggered), so i'd be quite surprised if we found anything in the core 
algorithm :-)

| | [...] I spent all day debugging it and had to make a special test 
| | case (rcutorture didn't seem to trigger it), and a big RCU state 
| | logging infrastructure to log millions of RCU state transitions and 
| | events. Oh well.

nice debugging!

Acked-by: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

i'm wondering why rcutorture didnt trigger it. I do run !HOTPLUG + 
RCU_PREEMPT kernels and never saw this. Nor did Paul. That aspect is 
weird.

	Ingo

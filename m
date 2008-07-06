From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: 2.6.26-rc9: Reported regressions from 2.6.25
Date: Sun, 6 Jul 2008 18:58:10 +0200
Message-ID: <20080706165810.GA16189@elte.hu>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik> <alpine.LFD.1.10.0807060816070.3016@woody.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.LFD.1.10.0807060816070.3016-5CScLwifNT1QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maximilian Engelhardt <maxi-OwNUvPV92VfddJNmlsFzeA@public.gmane.org>, Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, James Bottomley <James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>


* Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:

> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=10815
> > Subject		: 2.6.26-rc4: RIP find_pid_ns+0x6b/0xa0
> > Submitter	: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2008-05-27 09:23 (41 days old)
> > References	: http://lkml.org/lkml/2008/5/27/9
> > 		  http://lkml.org/lkml/2008/6/14/87
> > Handled-By	: Oleg Nesterov <oleg-6lXkIZvqkOAvJsYlp49lxw@public.gmane.org>
> > 		  Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
> > 		  Paul E. McKenney <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
> > Patch		: http://lkml.org/lkml/2008/5/28/16
> 
> This one is the same thing that is reported as unresolved, and no, I 
> don't think that existing patch was ever really tested to fix 
> anything. Paul?
> 
> I suspect SRCU will need to be simply marked BROKEN for now, because 
> nobody knows what the problem Alexey sees is. Apparently it's been 
> seen by a few other people too.

I'm not sure it's directly related to SRCU - it can change timings and 
freeing patterns enough to tickle other bugs. Since Alexey Dobriyan has 
reported it - are perhaps namespaces in use during this stress-test? 
Maybe it's some namespaces related bug that is more easily reproduced 
under SRCU - namespaces is not a commonly tested feature.

Also, i've been running rcutorture stress-tests on a number of 
test-systems ever since this got reported (and they are running 
currently as well) and cannot see it - neither could Paul reproduce it.

( and Paul is very good in producing RCU related problems - he's
  triggered and fixed many RCU related problems that no-one else saw
  before. )

	Ingo

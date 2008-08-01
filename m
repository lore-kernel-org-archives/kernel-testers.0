From: "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Subject: Re: 2.6.26-rc9: Reported regressions from 2.6.25
Date: Fri, 1 Aug 2008 14:09:19 -0700
Message-ID: <20080801210919.GD14851@linux.vnet.ibm.com>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik> <alpine.LFD.1.10.0807060816070.3016@woody.linux-foundation.org>
Reply-To: paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.LFD.1.10.0807060816070.3016-5CScLwifNT1QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maximilian Engelhardt <maxi-OwNUvPV92VfddJNmlsFzeA@public.gmane.org>, Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, James Bottomley <James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>, nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org, adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

On Sun, Jul 06, 2008 at 08:46:09AM -0700, Linus Torvalds wrote:
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
> This one is the same thing that is reported as unresolved, and no, I don't 
> think that existing patch was ever really tested to fix anything. Paul?

Alexey tested the above patch, and it did not fix his failure
(http://lkml.org/lkml/2008/6/15/93).  Neither did the patch
at http://lkml.org/lkml/2008/6/14/209.  I was never able to
reproduce Alexey's failure, whether by running LTP in parallel
with 170 kernel builds or by running either in parallel with
rcutorture.  Some enhancements to make rcutorture more vicious
were unable to provoke failures.

Alexey is able to provoke the failure on a maxcpus=1 configuration,
which should narrow things down quite a bit.  I dug through
assembly, and found no issues at that level.

Alexey, would you be willing to send along your vmlinux or disassembly
of the RCU functions?

In any case, I am working up additional diagnostics.

> I suspect SRCU will need to be simply marked BROKEN for now, because 
> nobody knows what the problem Alexey sees is. Apparently it's been seen by 
> a few other people too.

PREEMPT_RCU is already marked "default n" with a "Say N if you are
unsure.  Shouldn't that cover it?

I don't believe that SRCU is involved, please let me know if I missed
something.

Nick Piggin mentioned seeing failures similar to Alexey's, and I still
need his repeat-by.  Nick?

							Thanx, Paul

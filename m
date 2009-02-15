From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12650] Strange load average and ksoftirqd behavior with
	2.6.29-rc2-git1
Date: Sun, 15 Feb 2009 20:31:02 +0100
Message-ID: <20090215193102.GA16873@elte.hu>
References: <juADNmcceYF.A.mdD.Mr0lJB@chimera> <rjPbZ5GRJPO.A.1kE.ur0lJB@chimera> <20090215080941.GA2295@localhost.localdomain> <20090215090026.GA31147@elte.hu> <20090215095128.GA3234@localhost.localdomain> <20090215101351.GA23274@elte.hu> <20090215103445.GA2335@localhost.localdomain> <20090215110104.GB31351@elte.hu> <20090215180355.GA2273@localhost.localdomain>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090215180355.GA2273-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Damien Wyart <damien.wyart-GANU6spQydw@public.gmane.org>
Cc: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, =?iso-8859-1?Q?Fr=E9d=E9ric?= Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


* Damien Wyart <damien.wyart-GANU6spQydw@public.gmane.org> wrote:

> > > So I followed the tracing steps in the tutorial (with the 1 sec sleep),
> > > which gave me this:
> > > http://damien.wyart.free.fr/trace_2.6.29-rc5_ksoftirqd_prob.txt.gz
> 
> > thanks. There's definitely some weirdness visible in the trace,
> > for example:
> 
> >   0)    gpm-1879    =>   ksoftir-4   
> >   ------------------------------------------
> 
> >   0)   0.964 us    |    finish_task_switch();
> >   0) ! 1768184 us |  }
> >   0)               |  do_softirq() {
> >   0)               |    __do_softirq() {
> >   0)               |      rcu_process_callbacks() {
> 
> > the 1.7 seconds 'overhead' there must be a fluke - you'd notice it if
> > ksoftirqd _really_ took that much time to execute.
> 
> > One possibility for these symptoms would be broken scheduler timestamps.
> > Could you enable absolute timestamp printing via:
> 
> >     echo funcgraph-abstime  > trace_options
> 
> Mmm, seems I do not have this option recognized in rc5, so could not
> test. Will retry all this with tip tomorrow...

Yeah, it got renamed in -tip - in rc5 it's iter_ctrl.

> > Also, my guess is that if you boot via idle=poll, the symptoms go away.
> > This would strengthen the suspicion that it's scheduler-clock troubles.
> 
> In fact, with idle=poll, the symptoms do not go away, they are much
> stronger: without it, ksotirqd have a few % of CPU in top output; with
> it, they have 20 or 30% and the global average is not far from 1.
> 
> On my laptop (I do not have it at hand today), with rc3-gitX (did not
> retest with rc5), the load avg was ok, but I saw that after boot,
> ksoftird threads had a quite higher running time in top than with
> 2.6.28. I am surprised nobody reported this yet...
> 
> I attach to this mail config and dmesg if needed (this is rc5 without
> idle=poll).
> 
> If a trace with funcgraph-abstime is interesting for you with tip,
> I will do this tomorrow.

Yes, an abstime trace would be useful.

> checking TSC synchronization [CPU#0 -> CPU#1]: passed.
> Switched to high resolution mode on CPU 1

Lets double-check your scheduler clock first. Without being able to
trust the clock we cannot trust the task stats nor the trace output.

What does this check display:

  http://people.redhat.com/mingo/time-warp-test/time-warp-test.c

Does it find any TSC time warps?

Also, could you send the output of:

  http://people.redhat.com/mingo/cfs-scheduler/tools/cfs-debug-info.sh

Run it while you can see the ksoftirqd anomaly.

	Ingo

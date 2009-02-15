From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12650] Strange load average and ksoftirqd behavior with
	2.6.29-rc2-git1
Date: Sun, 15 Feb 2009 12:01:04 +0100
Message-ID: <20090215110104.GB31351@elte.hu>
References: <juADNmcceYF.A.mdD.Mr0lJB@chimera> <rjPbZ5GRJPO.A.1kE.ur0lJB@chimera> <20090215080941.GA2295@localhost.localdomain> <20090215090026.GA31147@elte.hu> <20090215095128.GA3234@localhost.localdomain> <20090215101351.GA23274@elte.hu> <20090215103445.GA2335@localhost.localdomain>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090215103445.GA2335-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Damien Wyart <damien.wyart-GANU6spQydw@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, =?iso-8859-1?Q?Fr=E9d=E9ric?= Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


* Damien Wyart <damien.wyart-GANU6spQydw@public.gmane.org> wrote:

> So I followed the tracing steps in the tutorial (with the 1 sec sleep),
> which gave me this:
> http://damien.wyart.free.fr/trace_2.6.29-rc5_ksoftirqd_prob.txt.gz

thanks. There's definitely some weirdness visible in the trace,
for example:

  0)    gpm-1879    =>   ksoftir-4   
  ------------------------------------------

  0)   0.964 us    |    finish_task_switch();
  0) ! 1768184 us |  }
  0)               |  do_softirq() {
  0)               |    __do_softirq() {
  0)               |      rcu_process_callbacks() {

the 1.7 seconds 'overhead' there must be a fluke - you'd notice it if
ksoftirqd _really_ took that much time to execute.

One possibility for these symptoms would be broken scheduler timestamps.
Could you enable absolute timestamp printing via:

    echo funcgraph-abstime  > trace_options

Also, my guess is that if you boot via idle=poll, the symptoms go away.
This would strengthen the suspicion that it's scheduler-clock troubles.

	Ingo

From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Tue, 20 Jan 2009 14:07:14 +0100
Message-ID: <20090120130714.GA11048@elte.hu>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera> <cX2gZ6Cy9nC.A.4dB.bJRdJB@chimera> <1232410363.4768.21.camel@kulgan.wumi.org.au> <20090120113546.GA26571@elte.hu> <1232455343.4895.4.camel@kulgan.wumi.org.au> <20090120125652.GA1457@elte.hu>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090120125652.GA1457-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
Cc: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kevin Shanahan <kmshanah-IiIpDuVlHfMLO379cgqW9odd74u8MsAO@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>, =?iso-8859-1?Q?Fr=E9d=E9ric?= Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


* Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:

> 
> * Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org> wrote:
> 
> > > This suggests some sort of KVM-specific problem. Scheduler latencies 
> > > in the seconds that occur under normal load situations are noticed and 
> > > reported quickly - and there are no such open regressions currently.
> > 
> > It at least suggests a problem with interaction between the scheduler 
> > and kvm, otherwise reverting that scheduler patch wouldn't have made the 
> > regression go away.
> 
> the scheduler affects almost everything, so almost by definition a 
> scheduler change can tickle a race or other timing bug in just about any 
> code - and reverting that change in the scheduler can make the bug go 
> away. But yes, it could also be a genuine scheduler bug - that is always a 
> possibility.
> 
> Could you please run a cfs-debug-info.sh session on a CONFIG_SCHED_DEBUG=y 
> and CONFIG_SCHEDSTATS=y kernel, while you are experiencing those 
> latencies:
> 
>   http://people.redhat.com/mingo/cfs-scheduler/tools/cfs-debug-info.sh
> 
> and post that (relatively large) somewhere, or send it as a reply after 
> bzip2 -9 compressing it? It will include a lot of information about the 
> delays your tasks are experiencing.

Another test would be to build the scheduler latency tracer into your 
kernel:

    CONFIG_SCHED_TRACER=y

And enable it via:

    echo wakeup > /debug/tracing/current_tracer

and you should be seeing the worst-case scheduling latency traces in 
/debug/tracing/trace, and the largest observed latency will be in 
/debug/tracing/tracing_max_latency [in microseconds].

You can reset the max-latency (and thus restart tracing) via:

    echo 0 > /debug/tracing/tracing_max_latency

Latencies up to 100 microseconds are ok. If you see 10 seconds delays 
there (values of 10,000,000 or more) then it's probably a scheduler bug.

Please reproduce the latency under KVM and send us the trace. The trace 
file will be a lot more verbose and a lot more verbose if you also enable 
the function tracer (FUNCTION_TRACER, DYNAMIC_FTRACE and 
FUNCTION_GRAPH_TRACER).

	Ingo

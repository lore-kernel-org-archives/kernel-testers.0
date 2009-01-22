From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Thu, 22 Jan 2009 21:31:25 +0100
Message-ID: <20090122203125.GA876@elte.hu>
References: <20090120113546.GA26571@elte.hu> <1232455343.4895.4.camel@kulgan.wumi.org.au> <20090120125652.GA1457@elte.hu> <20090120130714.GA11048@elte.hu> <alpine.DEB.1.10.0901200957220.2681@gandalf.stny.rr.com> <49760E2D.2060109@redhat.com> <1232547932.4895.119.camel@kulgan.wumi.org.au> <49773275.3020203@redhat.com> <20090121151820.GA23813@elte.hu> <1232654237.4885.8.camel@kulgan.wumi.org.au>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1232654237.4885.8.camel-9TBizaOOD0ujuAshGpSIhRCuuivNXqWP@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
Cc: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, =?iso-8859-1?Q?Fr=E9d=E9ric?= Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, bugme-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org


* Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org> wrote:

> On Wed, 2009-01-21 at 16:18 +0100, Ingo Molnar wrote:
> > * Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org> wrote:
> > > It means, a scheduling problem.  Can you run the latency tracer (which 
> > > only works with realtime priority), so we can tell if it is (a) kvm 
> > > failing to wake up the vcpu properly or (b) the scheduler delaying the 
> > > vcpu from running.
> > 
> > Could we please get an ftrace capture of the incident?
> > 
> > Firstly, it makes sense to simplify the tracing environment as much as 
> > possible: for example single-CPU traces are much easier to interpret.
> > 
> > Can you reproduce it with just one CPU online? I.e. if you offline all the 
> > other cores via:
> > 
> >   echo 0 > /sys/devices/system/cpu/cpu1/online
> > 
> >   [etc.]
> > 
> > and keep CPU#0 only, do the latencies still occur?
> > 
> > If they do still occur, then please do the traces that way.
> > 
> > [ If they do not occur then switch back on all CPUs - we'll sort out the
> >   traces ;-) ]
> > 
> > Then please build a function tracer kernel, by enabling:
> > 
> >   CONFIG_FUNCTION_TRACER=y
> >   CONFIG_FUNCTION_GRAPH_TRACER=y
> >   CONFIG_DYNAMIC_FTRACE=y
> 
> Looks like the function graph tracer is only in 2.6.29, so I've updated
> now to 2.6.29-rc2-00013-gf3b8436.
> 
> Again, a control test to make sure the problem still occurs:
> 
> --- hermes-old.wumi.org.au ping statistics ---
> 64 packets transmitted, 64 received, 0% packet loss, time 63080ms
> rtt min/avg/max/mdev = 0.168/479.893/4015.950/894.721 ms, pipe 5
> 
> Yes, plenty of delays there. Next, checking if I can reproduce with only
> one core online:
> 
> echo 0 > /sys/devices/system/cpu/cpu1/online
> echo 0 > /sys/devices/system/cpu/cpu2/online
> echo 0 > /sys/devices/system/cpu/cpu3/online
> ...
> 
> --- hermes-old.wumi.org.au ping statistics ---
> 900 packets transmitted, 900 received, 0% packet loss, time 900253ms
> rtt min/avg/max/mdev = 0.127/38.937/2082.347/170.348 ms, pipe 3
> 
> --- hermes-old.wumi.org.au ping statistics ---
> 900 packets transmitted, 900 received, 0% packet loss, time 900995ms
> rtt min/avg/max/mdev = 0.127/428.398/17126.227/1634.980 ms, pipe 18
> 
> So it looks like I can do the simplified trace. [...]

That's good news! Another thing is that happens sometimes is that narrow 
races go away if tracing is turned on - the dreaded Heisenbugs. Hopefully 
this wont happen, but if it does, tracing is the cheapest when only a few 
specific functions are traced.

There are two main types of delays that can occur:

 - the delay is CPU time - i.e. anomalously large amount of CPU time spent 
   somewhere in the kernel. Getting a trace of exactly what that 
   processing is would be nice.

 - the delay is some sort of missed wakeup or other logic error in the 
   flow of execution. These are harder to trace - you might want to take a 
   look at trace_options to extend the trace format with various details, 
   if the need arises.

> [...] I've run out of time for that this morning, but I'll spend some 
> time on it over the weekend. Thanks for the detailed instructions - it 
> doesn't look like it will be too hard.

ok, looking forward to your traces. Also, let us know if you run into 
anything unintuitive / complicated in the ftrace usage side.

	Ingo

From: Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Tue, 20 Jan 2009 12:53:53 -0500 (EST)
Message-ID: <alpine.DEB.1.10.0901201251180.2681@gandalf.stny.rr.com>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera> <cX2gZ6Cy9nC.A.4dB.bJRdJB@chimera> <1232410363.4768.21.camel@kulgan.wumi.org.au> <20090120113546.GA26571@elte.hu> <1232455343.4895.4.camel@kulgan.wumi.org.au> <20090120125652.GA1457@elte.hu> <20090120130714.GA11048@elte.hu>
 <alpine.DEB.1.10.0901200957220.2681@gandalf.stny.rr.com> <20090120150408.GD21931@elte.hu>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090120150408.GD21931-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>, Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kevin Shanahan <kmshanah-IiIpDuVlHfMLO379cgqW9odd74u8MsAO@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, =?ISO-8859-15?Q?Fr=E9d=E9ric_Weisbecker?= <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


On Tue, 20 Jan 2009, Ingo Molnar wrote:

> 
> * Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org> wrote:
> 
> > On Tue, 20 Jan 2009, Ingo Molnar wrote:
> > > Another test would be to build the scheduler latency tracer into your 
> > > kernel:
> > > 
> > >     CONFIG_SCHED_TRACER=y
> > > 
> > > And enable it via:
> > > 
> > >     echo wakeup > /debug/tracing/current_tracer
> > > 
> > > and you should be seeing the worst-case scheduling latency traces in 
> > > /debug/tracing/trace, and the largest observed latency will be in 
> > > /debug/tracing/tracing_max_latency [in microseconds].
> > 
> > Note, the wakeup latency only tests realtime threads, since other 
> > threads can have other issues for wakeup. I could change the wakeup 
> > tracer as wakeup_rt, and make a new "wakeup" that tests all threads, but 
> > it may be difficult to get something accurate.
> 
> hm, that's a significant regression then. The latency tracer used to 
> measure the highest-prio task in the system - be that RT or non-rt.

Well, it is a regression from what was in -rt yes. But not from what ever 
was in mainline.

But I needed to change this to detect the problem that we 
solved with push and pull of rt tasks. The wake up of a non-rt tasks 
always took longer than an -rt task, and by tracing all tasks, I never got 
the wake up latency of an rt task.

As I mentioned earlier, I can make a wakeup-rt to do the rt tracing, and 
make wakeup do all tasks.

-- Steve

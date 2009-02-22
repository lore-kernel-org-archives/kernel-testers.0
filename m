From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected) [bug
	12465]
Date: Sun, 22 Feb 2009 18:27:58 +0100
Message-ID: <20090222172758.GH6570@elte.hu>
References: <sTyoMUwdm9B.A.QCH.U40lJB@chimera> <ROx6X68CGJG.A.54H.w40lJB@chimera> <1234691284.4967.23.camel@kulgan.wumi.org.au> <20090215100454.GA30314@elte.hu> <1235299155.5021.6.camel@kulgan.wumi.org.au>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1235299155.5021.6.camel-9TBizaOOD0ujuAshGpSIhRCuuivNXqWP@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, bugme-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org, Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>


* Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org> wrote:

> On Sun, 2009-02-15 at 11:04 +0100, Ingo Molnar wrote:
> > qemu-sy-4237 has been scheduled away, and the system appeared to have done
> > nothing in the meantime. That's not something that really looks like a
> > scheduler regression - there is nothing the scheduler can do if KVM
> > decides to block a task.
> > 
> > It would be nice to enhance this single-CPU trace some more - to more
> > surgically see what is going on. Firstly, absolute timestamps would be
> > nice:
> > 
> >   echo funcgraph-abstime  > trace_options
> >   echo funcgraph-proc     > trace_options
> > 
> > as it's a bit hard to see the global timescale of events.
> 
> I was going to try and grab the trace with absolute timestamps 
> tonight, but that option doesn't seem to be available in 
> Linus' current kernel.
> 
> flexo:/sys/kernel/debug/tracing# echo 0 > tracing_enabled
> flexo:/sys/kernel/debug/tracing# echo function_graph > current_tracer
> flexo:/sys/kernel/debug/tracing# echo funcgraph-proc > trace_options
> flexo:/sys/kernel/debug/tracing# echo funcgraph-abstime  > trace_options
> -su: echo: write error: Invalid argument
> flexo:/sys/kernel/debug/tracing# cat trace_options 
> print-parent nosym-offset nosym-addr noverbose noraw nohex nobin noblock
> nostacktrace nosched-tree ftrace_printk noftrace_preempt nobranch
> annotate nouserstacktrace nosym-userobj noprintk-msg-only
> nofuncgraph-overrun funcgraph-cpu funcgraph-overhead funcgraph-proc 
> flexo:/sys/kernel/debug/tracing# uname -a
> Linux flexo 2.6.29-rc5-00299-gadfafef #6 SMP Sun Feb 22 20:09:37 CST
> 2009 x86_64 GNU/Linux
> 
> What am I missing?

(replying here too - replied in the bugzilla already)

that's a feature of the latest tracing tree, so if you try -tip 
you'll have it.

	Ingo

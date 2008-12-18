From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12208] uml is very slow on 2.6.28 host
Date: Thu, 18 Dec 2008 15:37:52 +0100
Message-ID: <20081218143752.GB10548@elte.hu>
References: <u7kfEgp36eE.A.qpG.Y4_QJB@chimera> <T1gm2CtAHBF.A.u6G.g4_QJB@chimera> <E1LCO85-0000rR-Br@pomaz-ex.szeredi.hu> <1229397927.5296.48.camel@marge.simson.net> <E1LCX8h-0001sh-Uo@pomaz-ex.szeredi.hu> <1229437180.5379.76.camel@marge.simson.net> <E1LCbpI-0002MN-7R@pomaz-ex.szeredi.hu> <1229494628.5280.24.camel@marge.simson.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1229494628.5280.24.camel-YqMYhexLQo1vAv1Ojkdn7Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Cc: Miklos Szeredi <miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org


* Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org> wrote:

> On Tue, 2008-12-16 at 16:27 +0100, Miklos Szeredi wrote:
> 
> > Is there a way to trace what is happening in the scheduler?
> 
> Sure.  Ingo has a script for gathering info (attached), if you run it, 
> please gzip up the output and send me a copy offline to eyeball.
> 
> There's also ftrace, but I've not tried that yet, so can't offer any 
> advice, I use primitive but effective time_after() + printk() with klogd 
> wakeup disabled (deadlock).

btw., there's a recent commit:

  32a7600: printk: make printk more robust by not allowing recursion

since then printk shouldnt deadlock anymore, even if called from within 
the scheduler.

Btw., ftrace_printk() can be used similarly (and you can capture it 
nonstop via /debug/tracing/trace_pipe), and should not deadlock either.

	Ingo

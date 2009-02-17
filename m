From: Damien Wyart <damien.wyart-GANU6spQydw@public.gmane.org>
Subject: Re: [Bug #12650] Strange load average and ksoftirqd behavior with
	2.6.29-rc2-git1
Date: Tue, 17 Feb 2009 16:39:25 +0100
Message-ID: <20090217153925.GA2308@localhost.localdomain>
References: <20090216122632.GA3158@elte.hu> <87ljs6pmao.fsf@free.fr> <20090216132151.GA17996@elte.hu> <20090216160613.GA6785@linux.vnet.ibm.com> <20090216185616.GB6785@linux.vnet.ibm.com> <20090216200923.GA28938@elte.hu> <20090216223944.GF6785@linux.vnet.ibm.com> <20090216225108.GA15904@linux.vnet.ibm.com> <20090217094657.GA1845@elte.hu> <20090217140130.GA6761@linux.vnet.ibm.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090217140130.GA6761-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, =?iso-8859-1?Q?Fr=E9d=E9ric?= Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hello Paul,

> > There's no strong reason - we've been back and forth about RCU in
> > the dynticks code. Mind sending a test patch for Damien to try?

> But of course!  ;-)

With this patch, the problem goes away and system activity seems normal,
both on the P4 with high load and on the recent laptop.

Btw, could you explain briefly why, without this patch, a kernel
enabling classical RCU doesn't show the ksoftirqd problem at all?


Damien

> The following patch removes the call to rcu_pending() and
> rcu_check_callbacks() from the x86 32-bit idle loop in order to
> reduce the softirq load on idle systems.

> Signed-off-by: Paul E. McKenney <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
> ---

>  process_32.c |    3 ---
>  1 file changed, 3 deletions(-)

> diff --git a/arch/x86/kernel/process_32.c b/arch/x86/kernel/process_32.c
> index a546f55..bd4da2a 100644
> --- a/arch/x86/kernel/process_32.c
> +++ b/arch/x86/kernel/process_32.c
> @@ -104,9 +104,6 @@ void cpu_idle(void)
>  			check_pgt_cache();
>  			rmb();

> -			if (rcu_pending(cpu))
> -				rcu_check_callbacks(cpu, 0);
> -
>  			if (cpu_is_offline(cpu))
>  				play_dead();

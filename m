From: "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Subject: Re: 2.6.26-rc9-git4: Reported regressions from 2.6.25
Date: Fri, 1 Aug 2008 14:09:34 -0700
Message-ID: <20080801210934.GG14851@linux.vnet.ibm.com>
References: <4yrA-dRoNlD.A.jcB.ny-cIB@albercik> <200807101725.36175.nickpiggin@yahoo.com.au>
Reply-To: paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200807101725.36175.nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Thu, Jul 10, 2008 at 05:25:35PM +1000, Nick Piggin wrote:
> On Wednesday 09 July 2008 07:37, Rafael J. Wysocki wrote:
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=10629
> > Subject		: 2.6.26-rc1-$sha1: RIP __d_lookup+0x8c/0x160
> > Submitter	: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2008-05-05 09:59 (65 days old)
> > References	: http://lkml.org/lkml/2008/5/5/28
> > Handled-By	: Paul E. McKenney <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
> 
> Attached is my fix for this problem. I don't think it is a regression
> as such, but it can't hurt to go into 2.6.26 IMO.
> 
> PREEMPT_RCU without HOTPLUG_CPU is broken. The rcu_online_cpu is called to
> initially populate rcu_cpu_online_map with all online CPUs when the hotplug
> event handler is installed, and also to populate the map with CPUs as they
> come online. The former case is meant to happen with and without HOTPLUG_CPU,
> but without HOTPLUG_CPU, the rcu_offline_cpu function is no-oped -- while it
> still gets called, it does not set the rcu CPU map.
> 
> With a blank RCU CPU map, grace periods get to tick by completely oblivious
> to active RCU read side critical sections. This results in free-before-grace
> bugs.
> 
> Fix is obvious once the problem is known. (Also, change __devinit to
> __cpuinit so the function gets thrown away on !HOTPLUG_CPU kernels).

I officially feel extremely stupid.  Thank you -very- much for tracking
this down, Nick!!!  And especially for the fix!

I will give this a good testing.  In the meantime:

Acked-by: Paul E. McKenney <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>

> Signed-off-by: Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>
> ---
> 
> Annoyed this wasn't a crazy obscure error in the algorithm I could fix :)
> I spent all day debugging it and had to make a special test case (rcutorture
> didn't seem to trigger it), and a big RCU state logging infrastructure to log
> millions of RCU state transitions and events. Oh well.
> 
> Index: linux-2.6/kernel/rcupreempt.c
> ===================================================================
> --- linux-2.6.orig/kernel/rcupreempt.c	2008-07-10 17:08:56.000000000 +1000
> +++ linux-2.6/kernel/rcupreempt.c	2008-07-10 17:09:10.000000000 +1000
> @@ -925,26 +925,22 @@ void rcu_offline_cpu(int cpu)
>  	spin_unlock_irqrestore(&rdp->lock, flags);
>  }
> 
> -void __devinit rcu_online_cpu(int cpu)
> -{
> -	unsigned long flags;
> -
> -	spin_lock_irqsave(&rcu_ctrlblk.fliplock, flags);
> -	cpu_set(cpu, rcu_cpu_online_map);
> -	spin_unlock_irqrestore(&rcu_ctrlblk.fliplock, flags);
> -}
> -
>  #else /* #ifdef CONFIG_HOTPLUG_CPU */
> 
>  void rcu_offline_cpu(int cpu)
>  {
>  }
> 
> -void __devinit rcu_online_cpu(int cpu)
> +#endif /* #else #ifdef CONFIG_HOTPLUG_CPU */
> +
> +void __cpuinit rcu_online_cpu(int cpu)
>  {
> -}
> +	unsigned long flags;
> 
> -#endif /* #else #ifdef CONFIG_HOTPLUG_CPU */
> +	spin_lock_irqsave(&rcu_ctrlblk.fliplock, flags);
> +	cpu_set(cpu, rcu_cpu_online_map);
> +	spin_unlock_irqrestore(&rcu_ctrlblk.fliplock, flags);
> +}
> 
>  static void rcu_process_callbacks(struct softirq_action *unused)
>  {

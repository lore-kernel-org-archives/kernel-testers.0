From: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.26-rc9-git4: Reported regressions from 2.6.25
Date: Thu, 10 Jul 2008 15:02:14 +0400
Message-ID: <20080710110213.GA6688@martell.zuzino.mipt.ru>
References: <4yrA-dRoNlD.A.jcB.ny-cIB@albercik> <200807101725.36175.nickpiggin@yahoo.com.au>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=CONVhtQc4GOY6Iy8PVSEGB3VMlA43llaRHH3DiGkKAU=;
        b=iU0+ZY0Wnh6+Z+EcVYUsC0/zye4/GunQ24nTUzkPO3tKlPF6mcnFZYYkHCOcU8jSfc
         rVEoU+1tG5Mk6O0GMS0iFYgxoOHVbOMjrq2dCunxUvzJAKIXbYN7xdxi0S6IOBnvYB8O
         QfcWbcUDr3LGVxzo5GdIXA4Mt+CYDf6CNtNM0=
Content-Disposition: inline
In-Reply-To: <200807101725.36175.nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Thu, Jul 10, 2008 at 05:25:35PM +1000, Nick Piggin wrote:
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=10629
> > Subject		: 2.6.26-rc1-$sha1: RIP __d_lookup+0x8c/0x160
> > Submitter	: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2008-05-05 09:59 (65 days old)
> > References	: http://lkml.org/lkml/2008/5/5/28
> > Handled-By	: Paul E. McKenney <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
> 
> Attached is my fix for this problem. I don't think it is a regression
> as such, but it can't hurt to go into 2.6.26 IMO.

> PREEMPT_RCU without HOTPLUG_CPU is broken.

Bastard!

rcutorture fixed here, starting cross-compile stuff (without much interest).

> Annoyed this wasn't a crazy obscure error in the algorithm I could fix :)
> I spent all day debugging it and had to make a special test case (rcutorture
> didn't seem to trigger it), and a big RCU state logging infrastructure to log
> millions of RCU state transitions and events. Oh well.

> --- linux-2.6.orig/kernel/rcupreempt.c
> +++ linux-2.6/kernel/rcupreempt.c
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


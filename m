From: "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Subject: Re: Q: force_quiescent_state && cpu_online_map
Date: Tue, 11 Nov 2008 09:25:05 -0800
Message-ID: <20081111172505.GD6736@linux.vnet.ibm.com>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera> <20081110120401.GA15518@osiris.boeblingen.de.ibm.com> <200811101547.21325.rjw@sisk.pl> <200811102355.42389.rjw@sisk.pl> <20081111105214.GA15645@elte.hu> <20081111113134.GA5653@osiris.boeblingen.de.ibm.com> <20081111124201.GA9459@osiris.boeblingen.de.ibm.com> <20081111143505.GA6923@linux.vnet.ibm.com> <20081111150225.GA10743@linux.vnet.ibm.com> <20081111170327.GB18214@redhat.com>
Reply-To: paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20081111170327.GB18214-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Steven Rostedt <srostedt-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Tue, Nov 11, 2008 at 06:03:27PM +0100, Oleg Nesterov wrote:
> I don't think this matters, but still...
> 
> 	force_quiescent_state:
> 
> 			 * cpu_online_map is updated by the _cpu_down()
> 			 * using __stop_machine(). Since we're in irqs disabled
> 			 * section, __stop_machine() is not exectuting, hence
> 			 * the cpu_online_map is stable.
> 			 *
> 			 * However,  a cpu might have been offlined _just_ before
> 			 * we disabled irqs while entering here.
> 			 * And rcu subsystem might not yet have handled the CPU_DEAD
> 			 * notification, leading to the offlined cpu's bit
> 			 * being set in the rcp->cpumask.
> 			 *
> 			 * Hence cpumask = (rcp->cpumask & cpu_online_map) to prevent
> 			 * sending smp_reschedule() to an offlined CPU.
> 			 */
> 			cpus_and(cpumask, rcp->cpumask, cpu_online_map);
> 			cpu_clear(rdp->cpu, cpumask);
> 			for_each_cpu_mask_nr(cpu, cpumask)
> 				smp_send_reschedule(cpu);
> 
> However,
> 
> 	// called by __stop_machine take_cpu_down()
> 	arch/x86/kernel/smpboot.c:cpu_disable_common()
> 
> 		/*
> 		 * HACK:
> 		 * Allow any queued timer interrupts to get serviced
> 		 * This is only a temporary solution until we cleanup
> 		 * fixup_irqs as we do for IA64.
> 		 */
> 		local_irq_enable();
> 		mdelay(1);
> 		local_irq_disable();
> 		...
> 		remove_cpu_from_maps(cpu);
> 
> So it is possible to send the ipi to the dying CPU. I know nothing
> about this low-level irq code, most probably this is harmless. We
> already did clear_local_APIC(), but I don't understand what it does.

Indeed, some of the things I am doing as part of the hierarchical RCU
implementation need to be applied to preemptable RCU.  :-/

							Thanx, Paul

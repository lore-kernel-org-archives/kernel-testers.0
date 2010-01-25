From: Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #14859] System timer firing too much without cause
Date: Mon, 25 Jan 2010 11:53:58 -0500
Message-ID: <201001251153.59084.shawn.starr@rogers.com>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera> <201001241734.50803.shawn.starr@rogers.com> <alpine.LFD.2.00.1001251103200.2906@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.1001251103200.2906-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Monday 25 January 2010 05:35:50 Thomas Gleixner wrote:
> On Sun, 24 Jan 2010, Shawn Starr wrote:
> > On Sunday 24 January 2010 17:04:33 Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a report
> > > of recent regressions.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.32.  Please verify if it still should be listed and let me
> > > know (either way).
> 
> Why is this on the regression list at all ? The report says that this
> is happening with 33-rcX, but there is no comparison to the behaviour
> of 32 or earlier kernels on that machine. Instead we have a comparison
> 
> of apples and oranges:
> > As a comparsion my quad core box has no such issue: (Running 2.6.32-rc7)
> > x86_64
> > 
> >   0:         42          4          1          1   IO-APIC-edge     
> >   timer
> > 
> > my Lenovo ThinkPad W500 (latest BIOS 3.11) laptop shows the system timer
> > flooding the bus (Running 2.6.33-rc1) x86_64
> > 
> >   0:      66775      70429   IO-APIC-edge      timer <-- keeps rising,
> >   rapidly
> 
> So we look at a quad core desktop machine which probably has no deeper
> power states and therefor does not use the broadcast timer and compare
> it to a laptop which has deeper power states and needs to use the
> broadcast timer, which of course increases the number of IRQ0
> events. What a surprise.
> 
> Can we please remove this from the regression list unless Shawn
> confirms that 32 or earlier kernels do not show that behaviour on the
> laptop?
> 

> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14859
> > > Subject		: System timer firing too much without cause
> > > Submitter	: Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
> > > Date		: 2009-12-21 19:16 (35 days old)
> > 
> > Continues with -rc5, I  really cannot use Dynamic ticks at all, it has to
> > be disabled.
> 
> Shawn, why can't you use dynamic ticks ? In the bugzilla I just see
> that you worry about the IRQ0 interrupts (which are correct and
> necessary when the system is in nohz mode) and the extra rescheduling
> interrupts. How is the system misbehaving ?
> 

Well,  this all stems from trying to use Radeon KMS with IRQs on. Doing so I 
see system stalls and this is quite noticeable however, I am able to show this 
same stall on the quad core with the same GPU. 

Right now, it is unclear to me if there is a underlying irq issue or a bug in 
the radeon driver code that is showing these stalls. Since the radeon folks - 
at the moment - do not think it is a coding problem in their driver

My impression was using dynamic ticks meant ticks were on demand and not 
continuous. On the quad core box, with dynamic ticks on, the broadcasts are 
not increasing IRQ 0 events this only happens on the laptop.

Thanks, 
Shawn.

> Thanks,
> 
> 	tglx

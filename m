From: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Subject: Re: [Bug #14859] System timer firing too much without cause
Date: Mon, 25 Jan 2010 11:35:50 +0100 (CET)
Message-ID: <alpine.LFD.2.00.1001251103200.2906@localhost.localdomain>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera> <hE3x9c-4KZM.A.Z6G.gLMXLB@chimera> <201001241734.50803.shawn.starr@rogers.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201001241734.50803.shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sun, 24 Jan 2010, Shawn Starr wrote:

> On Sunday 24 January 2010 17:04:33 Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.32.  Please verify if it still should be listed and let me know
> > (either way).

Why is this on the regression list at all ? The report says that this
is happening with 33-rcX, but there is no comparison to the behaviour
of 32 or earlier kernels on that machine. Instead we have a comparison
of apples and oranges:

> As a comparsion my quad core box has no such issue: (Running 2.6.32-rc7) 
> x86_64
>   0:         42          4          1          1   IO-APIC-edge      timer
>
> my Lenovo ThinkPad W500 (latest BIOS 3.11) laptop shows the system timer 
> flooding the bus (Running 2.6.33-rc1) x86_64
>   0:      66775      70429   IO-APIC-edge      timer <-- keeps rising, rapidly 

So we look at a quad core desktop machine which probably has no deeper
power states and therefor does not use the broadcast timer and compare
it to a laptop which has deeper power states and needs to use the
broadcast timer, which of course increases the number of IRQ0
events. What a surprise.

Can we please remove this from the regression list unless Shawn
confirms that 32 or earlier kernels do not show that behaviour on the
laptop?

> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14859
> > Subject		: System timer firing too much without cause
> > Submitter	: Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
> > Date		: 2009-12-21 19:16 (35 days old)
> 
> Continues with -rc5, I  really cannot use Dynamic ticks at all, it has to be 
> disabled.

Shawn, why can't you use dynamic ticks ? In the bugzilla I just see
that you worry about the IRQ0 interrupts (which are correct and
necessary when the system is in nohz mode) and the extra rescheduling
interrupts. How is the system misbehaving ?

Thanks,

	tglx

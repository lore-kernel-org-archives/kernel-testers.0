From: Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #14859] System timer firing too much without cause
Date: Mon, 25 Jan 2010 12:30:22 -0500
Message-ID: <201001251230.23109.shawn.starr@rogers.com>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera> <201001251153.59084.shawn.starr@rogers.com> <alpine.LFD.2.00.1001251808480.5926@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.1001251808480.5926-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jerome Glisse <jglisse-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Monday 25 January 2010 12:20:38 Thomas Gleixner wrote:
> On Mon, 25 Jan 2010, Shawn Starr wrote:
> > On Monday 25 January 2010 05:35:50 Thomas Gleixner wrote:
> > > Shawn, why can't you use dynamic ticks ? In the bugzilla I just see
> > > that you worry about the IRQ0 interrupts (which are correct and
> > > necessary when the system is in nohz mode) and the extra rescheduling
> > > interrupts. How is the system misbehaving ?
> > 
> > Well, this all stems from trying to use Radeon KMS with IRQs
> > on. Doing so I see system stalls and this is quite noticeable
> > however, I am able to show this same stall on the quad core with the
> 
> x> same GPU.  Right now, it is unclear to me if there is a underlying
> 
> > irq issue or a bug in the radeon driver code that is showing these
> > stalls. Since the radeon folks - at the moment - do not think it is
> > a coding problem in their driver
> 
> Does the stall go away, when you disable dynticks ?
> 

It does not, no. 

> > My impression was using dynamic ticks meant ticks were on demand and
> 
> Dynamic ticks are providing a continuous tick long as the machine is
> busy. When a core becomes idle, we programm the timer to go off at the
> next scheduled timer event, if the event is longer away than the next
> tick. When the core goes out of idle (due to the timer or some other
> event) we restart the tick.
> 
> So you see less timer interrupts (IRQ0 + Local timer interrupts)

With dynamic ticks on or off, LOC increments rapidly, but I assume that is 
normal behavour.

So if none of this really is a kernel issue, I defer it to the radeon folks to 
comment further.

Please remove from regression list, I'll close the original bug.

> 
> > not continuous. On the quad core box, with dynamic ticks on, the
> > broadcasts are not increasing IRQ 0 events this only happens on the
> > laptop.
> 
> Right, that is expected as I explained already. Your desktop does not
> use deeper power states. Check /proc/acpi/processor/CPU0/power on both
> machines to see the difference. You _cannot_ compare a desktop and a
> laptop machine and deduce a regression.
> 
> The broadcast mechanism is necessary because the local APIC timer
> stops in deeper power states. That's a hardware problem. So if the
> core goes into a deeper power state then we arm the broadcast timer
> which fires on IRQ0 to wake us up. It is a single timer which is used
> by all cores in a system to work around this hardware stupidity. It's
> named broadcast because it broadcasts the event to the other cores
> when necessary. Your desktop does not use deeper power states,
> therefor it does not use the broadcast timer either.
> 
> So the timer IRQ0 increasing is neither a Linux BUG nor a regression.
> 
> Thanks,
> 
> 	tglx

From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #14859] System timer firing too much without cause
Date: Mon, 25 Jan 2010 21:59:33 +0100
Message-ID: <201001252159.33120.rjw@sisk.pl>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera> <alpine.LFD.2.00.1001251808480.5926@localhost.localdomain> <201001251230.23109.shawn.starr@rogers.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753397Ab0AYU6r@vger.kernel.org>
In-Reply-To: <201001251230.23109.shawn.starr@rogers.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Shawn Starr <shawn.starr@rogers.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Jerome Glisse <jglisse@redhat.com>

On Monday 25 January 2010, Shawn Starr wrote:
> On Monday 25 January 2010 12:20:38 Thomas Gleixner wrote:
> > On Mon, 25 Jan 2010, Shawn Starr wrote:
> > > On Monday 25 January 2010 05:35:50 Thomas Gleixner wrote:
> > > > Shawn, why can't you use dynamic ticks ? In the bugzilla I just see
> > > > that you worry about the IRQ0 interrupts (which are correct and
> > > > necessary when the system is in nohz mode) and the extra rescheduling
> > > > interrupts. How is the system misbehaving ?
> > > 
> > > Well, this all stems from trying to use Radeon KMS with IRQs
> > > on. Doing so I see system stalls and this is quite noticeable
> > > however, I am able to show this same stall on the quad core with the
> > 
> > x> same GPU.  Right now, it is unclear to me if there is a underlying
> > 
> > > irq issue or a bug in the radeon driver code that is showing these
> > > stalls. Since the radeon folks - at the moment - do not think it is
> > > a coding problem in their driver
> > 
> > Does the stall go away, when you disable dynticks ?
> > 
> 
> It does not, no. 
> 
> > > My impression was using dynamic ticks meant ticks were on demand and
> > 
> > Dynamic ticks are providing a continuous tick long as the machine is
> > busy. When a core becomes idle, we programm the timer to go off at the
> > next scheduled timer event, if the event is longer away than the next
> > tick. When the core goes out of idle (due to the timer or some other
> > event) we restart the tick.
> > 
> > So you see less timer interrupts (IRQ0 + Local timer interrupts)
> 
> With dynamic ticks on or off, LOC increments rapidly, but I assume that is 
> normal behavour.
> 
> So if none of this really is a kernel issue, I defer it to the radeon folks to 
> comment further.
> 
> Please remove from regression list, I'll close the original bug.

OK, closing it right now.

Rafael

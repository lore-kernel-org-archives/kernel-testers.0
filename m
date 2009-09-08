From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #13819] system freeze when switching to console
Date: Tue, 8 Sep 2009 12:26:45 -0700 (PDT)
Message-ID: <alpine.LFD.2.01.0909081219130.7458@localhost.localdomain>
References: <2ehA7xoGvXL.A.4PB.3eBpKB@chimera> <Vm51Upp4EV.A.r-D.mgBpKB@chimera> <1252427375.14735.130.camel@rc-desk> <alpine.LFD.2.01.0909080943030.7458@localhost.localdomain> <1252431375.14735.139.camel@rc-desk> <alpine.LFD.2.01.0909081039300.7458@localhost.localdomain>
 <20090908112014.002a35af@jbarnes-g45>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090908112014.002a35af@jbarnes-g45>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: reinette chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, "Ma, Ling" <ling.ma-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "bugzilla-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org" <bugzilla-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org>



On Tue, 8 Sep 2009, Jesse Barnes wrote:
> 
> Theoretically i915_gem_idle should prevent any user interrupts from
> coming in.

That is _entirely_ immaterial.

The thing is, interrupts can be shared. So it does not matter ONE WHIT 
that you are trying to idle the hardware - there may be _other_ hardware 
in the machine that is not idle, and that raises the same shared 
interrupt. End result: the irq handler will be called, whether your 
particular hardware is idle or not.

So if you tear down data structures that the interrupt handler needs, you 
_ABSOLUTELY_ must first unregister the whole interrupt.

Also, even if there are no shared interrupts or any other devices, there 
can easily be old pending interrupts still queued up on IO-APIC's etc. So 
even though you quiesce the hardware, there is no guarantee that there 
aren't some pending interrupts that happened just before you turned off 
the interrupt from the hardware side, and are still "en route" to the CPU.

Which gets us exactly the same rule as if there were shared interrupts: if 
your interrupt handler depends on some data structure, you must tear down 
the interrupt handler _before_ you tear down the data structures it 
depends on (and in the reverse order when setting things up, of course).

> If we uninstall the IRQ first we i915_gem_idle probably
> won't work anymore, since it queues an interrupt and waits for it.

So then you'd better fix that. Because the code as is is very 
fundamentally buggy.

> Eric, any thoughts on this?  We shouldn't be racing to queue new work
> after the idle call since we suspend GEM at that point, so we must be
> failing to manage our active lists properly somehow?

See my previous email. The bug is that you do

  i915_gem_cleanup_ringbuffer ->
    i915_gem_cleanup_hws ->
      dev_priv->hw_status_page = NULL;

while interrupts are still enabled and coming in. And the interrupt path 
wants to access that hw_status_page. Which you just destroyed.

			Linus

From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #13306] hibernate slow on _second_ run
Date: Thu, 04 Jun 2009 09:19:57 +1000
Message-ID: <1244071197.27194.39.camel@pasglop>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera>
	 <200906032210.54854.rjw@sisk.pl> <1244067926.27194.35.camel@pasglop>
	 <200906040100.35254.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200906040100.35254.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jan Scholz <scholz-wOpdxP1gw6Cc+IqHO83+wjjhTm2NLCe8@public.gmane.org>

On Thu, 2009-06-04 at 01:00 +0200, Rafael J. Wysocki wrote:
> 
> > I'll try to tackle the trackpad problem.
> 
> Perhaps the VIA-PMU interrupt shouldn't be disabled in
> suspend_device_irqs()?

Possibly, but then we did use to have all interrupts disabled
at some stage before going to suspend_late anyway no ? So it shouldn't
make a big difference.

The VIA interrupt must not be HW masked in the PIC on some machines
because it's the wakeup source, so we may have to force re-enable it
since it can be lazy-disabled, but those aren't the machines with the
trackpad problem so I think I'll need to have a closer look at what's
going on and get my head around it.

Haven't had a chance yet, hopefully today or tomorrow.

Ben.


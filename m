From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #12667] Badness at kernel/time/timekeeping.c:98 in pmud
 (timekeeping_suspended)
Date: Fri, 20 Feb 2009 08:51:43 +1100
Message-ID: <1235080303.8805.50.camel@pasglop>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera>
	 <sWhNs83kKPE.A.p4D.L20jJB@chimera>
	 <878wognj00.fsf@burly.wgtn.ondioline.org> <200902142342.59186.rjw@sisk.pl>
	 <87hc2u26m5.fsf@burly.wgtn.ondioline.org>
	 <1234775410.26036.122.camel@pasglop>
	 <87d4di1wwr.fsf@burly.wgtn.ondioline.org>
	 <87r61uzv95.fsf@burly.wgtn.ondioline.org>
	 <1235032710.8805.37.camel@pasglop>
	 <alpine.LFD.2.00.0902192114150.3523@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0902192114150.3523-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Cc: Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Thu, 2009-02-19 at 21:17 +0100, Thomas Gleixner wrote:
> 
> Well, harsh or not is not the question here. 
> 
> Fact is that you call gettimeofday() _before_ the timekeeping code has
> resumed.
> 
> That's a simple ordering problem. timekeeping is in the sysdev class
> as well and it's not the only sysdev which has explicit ordering
> requirements.

And how do I control that ordering ?

I find that a bit fishy ... What about making gettimeofday() in the
timekeeping code work, just return a frozen snapshot of the value on
suspend instead ?

Ben.


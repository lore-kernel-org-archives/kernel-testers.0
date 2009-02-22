From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #12667] Badness at kernel/time/timekeeping.c:98 in pmud
 (timekeeping_suspended)
Date: Mon, 23 Feb 2009 07:46:32 +1100
Message-ID: <1235335592.8805.214.camel@pasglop>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera>
	 <sWhNs83kKPE.A.p4D.L20jJB@chimera>
	 <878wognj00.fsf@burly.wgtn.ondioline.org> <200902142342.59186.rjw@sisk.pl>
	 <87hc2u26m5.fsf@burly.wgtn.ondioline.org>
	 <1234775410.26036.122.camel@pasglop>
	 <87d4di1wwr.fsf@burly.wgtn.ondioline.org>
	 <87r61uzv95.fsf@burly.wgtn.ondioline.org>
	 <1235032710.8805.37.camel@pasglop>
	 <alpine.LFD.2.00.0902192114150.3523@localhost.localdomain>
	 <1235080303.8805.50.camel@pasglop>
	 <alpine.LFD.2.00.0902222026410.3523@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0902222026410.3523-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Cc: Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Sun, 2009-02-22 at 20:31 +0100, Thomas Gleixner wrote:
> We had problems in the past where we just returned frozen time and the
> calling code got surprised when the time jumped 5 hours ahead just a
> few microseconds later.
> 
> What I find more fishy is the fact that the lid switch needs to be a
> sysdev. It's a simple input event, which causes the user space code to
> trigger the suspend sequence when the lid is shut.
> 
Well, the PMU is a sysdev for lots of good reasons.. then it -also-
happens to provide us with the lid switch event.

I'm a bit surprised by the explanation about the code that is surprised
to see the time jump. IE. Code -will- see the time jump anyway. IE. I
don't see how making gtod blow instead of returning a frozen time will
make any difference whatsoever for code who get the time some time
before suspend and then some time after resume and see a 5 hours gap...

Cheers,
Ben.


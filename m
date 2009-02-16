From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #12667] Badness at kernel/time/timekeeping.c:98 in pmud
 (timekeeping_suspended)
Date: Mon, 16 Feb 2009 20:10:10 +1100
Message-ID: <1234775410.26036.122.camel@pasglop>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera>
	 <sWhNs83kKPE.A.p4D.L20jJB@chimera>
	 <878wognj00.fsf@burly.wgtn.ondioline.org> <200902142342.59186.rjw@sisk.pl>
	 <87hc2u26m5.fsf@burly.wgtn.ondioline.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <87hc2u26m5.fsf-D7l3p2TGOOdLdt5/z87VRY6ehsQQaF5K@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

On Mon, 2009-02-16 at 20:17 +1300, Paul Collins wrote:
> It turns out I didn't test this properly.  The warning is only
> triggered
> when I close and open the lid, not when I run 'snooze' to suspend and
> hit Return to resume, as I did for my so-called testing of 2.6.29-rc4.
> 
> Whatever is triggering the warning is still present in 2.6.29-rc5.

Right, we probably need to stop sending input events from the PMU driver
when it's "suspended".

Ping me if I don't produce a patch tomorrow (ie, I forgot :-)

Cheers,
Ben.

From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11035] System hangs on 2.6.26-rc8
Date: Sat, 19 Jul 2008 00:25:12 +0200
Message-ID: <20080718222512.GD31073@elte.hu>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik> <uBi7uNfg81L.A.xt.SzLcIB@albercik> <4878D259.7050403@r000n.net> <487CA8E5.8020208@r000n.net> <20080718071121.GB6875@elte.hu> <19f34abd0807180028y2be61c06ueab5fcc305956f80@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <19f34abd0807180028y2be61c06ueab5fcc305956f80-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Roman Mindalev <lists-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>


* Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:

> BTW, I didn't consider that argument (of continuing as far as 
> possible) before, but it's a good one; if we don't crash completely, 
> the user can still copy the log we have a better report of it. I guess 
> kerneloops.org is currently missing out a great deal of reports which 
> all shut down the machine immediately without a chance to go into the 
> log.

yes. There are two techniques to improve the 'yield' of kerneloops.org: 
1) make a better job of getting the logs off the box 2) make a better 
job of not crashing the box when we can do better.

For example lockdep tries very hard to never crash the box. It is a 
feature that warns about a chance of a lockup, not about a lockup itself 
- so crashing the box at the point of the bug detection is 
counter-productive.

The same applies to DEBUG_PAGEALLOC as well: technically nobody (but the 
buggy code itself) is hurt by accessing already freed data. So we could 
try and let it run.

(Btw., this might be a way to share a mechanism between kmemcheck and 
DEBUG_PAGEALLOC, and make kmemcheck more useful to the general kernel as 
a whole.)

	Ingo

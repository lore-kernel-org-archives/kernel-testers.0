From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from 2.6.22
 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 12:30:00 -0800 (PST)
Message-ID: <alpine.LFD.2.00.0811171218470.18283@nehalem.linux-foundation.org>
References: <20081117184951.GA5585@elte.hu> <20081117.113936.81699150.davem@davemloft.net> <alpine.LFD.2.00.0811171149100.18283@nehalem.linux-foundation.org> <20081117.121641.167690467.davem@davemloft.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117.121641.167690467.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: mingo-X9Un+BFzKDI@public.gmane.org, dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org



On Mon, 17 Nov 2008, David Miller wrote:
> 
> It's on my workstation which is a much simpler 2 processor
> UltraSPARC-IIIi (1.5Ghz) system.

Ok. It could easily be something like a cache footprint issue. And while I 
don't know my sparc cpu's very well, I think the Ultrasparc-IIIi is super- 
scalar but does no out-of-order and speculation, no? So I could easily see 
that the indirect branches in the scheduler hurt much more, and might 
explain why the x86 profile looks so different.

One thing that non-NMI profiles also tend to show is "clumping", which in 
turn tends to rather excessively pinpoint code sequences that release the 
irq flag - just because those points show up in profiles, rather than 
being a spread-out-mush. So it's possible that Ingo's profile did show the 
scheduler more, but it was in the form of much more spread out "noise" 
rather than the single spike you saw. 

		Linus

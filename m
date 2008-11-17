From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from 2.6.22
 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 11:55:35 -0800 (PST)
Message-ID: <alpine.LFD.2.00.0811171149100.18283@nehalem.linux-foundation.org>
References: <alpine.LFD.2.00.0811170937540.3468@nehalem.linux-foundation.org> <20081117182320.GA26844@elte.hu> <20081117184951.GA5585@elte.hu> <20081117.113936.81699150.davem@davemloft.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117.113936.81699150.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: mingo-X9Un+BFzKDI@public.gmane.org, dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org



On Mon, 17 Nov 2008, David Miller wrote:
> 
> Again, do a non-NMI profile and the top (at least for me)
> looks like this:

Can _you_ please do a NMI profile and see what your real problem is?

I can't imagine that Niagara (or whatever) is so weak that it can't do 
NMI's. 

The fact is, David, that Ingo just posted a profile that was _better_ than 
anything you have ever posted, and it doesn't show what you complain 
about. So he's not seeing it. Asking him to do a _stupid_ profile is just 
that: stupid.

So try to figure out why his (better) profile doesn't match your 
(inferior) one, instead of asking him to do stupid things. It's some 
difference in architectures, likely: maybe the sparc timekeeping is crap, 
maybe it's a cache issue and sparc caches are crap, maybe it's something 
where Niagara (is it niagara) has some oddness that shows up because it 
has that odd four-threads+four-cores or whatever.

			Linus

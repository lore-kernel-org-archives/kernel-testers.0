From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
 2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 12:16:41 -0800 (PST)
Message-ID: <20081117.121641.167690467.davem@davemloft.net>
References: <20081117184951.GA5585@elte.hu>
	<20081117.113936.81699150.davem@davemloft.net>
	<alpine.LFD.2.00.0811171149100.18283@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0811171149100.18283-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org
Cc: mingo-X9Un+BFzKDI@public.gmane.org, dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org

From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Date: Mon, 17 Nov 2008 11:55:35 -0800 (PST)

> So try to figure out why his (better) profile doesn't match your 
> (inferior) one, instead of asking him to do stupid things. It's some 
> difference in architectures, likely: maybe the sparc timekeeping is crap, 
> maybe it's a cache issue and sparc caches are crap, maybe it's something 
> where Niagara (is it niagara) has some oddness that shows up because it 
> has that odd four-threads+four-cores or whatever.

It's on my workstation which is a much simpler 2 processor
UltraSPARC-IIIi (1.5Ghz) system.

And yes I will investigate, it's all I've been doing in my
spare time these past few weeks.

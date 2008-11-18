From: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from 2.6.22 -&gt; 2.6.28
Date: Tue, 18 Nov 2008 20:44:10 +1100
Message-ID: <200811182044.11055.nickpiggin@yahoo.com.au>
References: <alpine.LFD.2.00.0811171149100.18283@nehalem.linux-foundation.org> <alpine.LFD.2.00.0811171218470.18283@nehalem.linux-foundation.org> <20081117.125826.193693115.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117.125826.193693115.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, mingo-X9Un+BFzKDI@public.gmane.org, dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org

On Tuesday 18 November 2008 07:58, David Miller wrote:
> From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
> Date: Mon, 17 Nov 2008 12:30:00 -0800 (PST)
>
> > On Mon, 17 Nov 2008, David Miller wrote:
> > > It's on my workstation which is a much simpler 2 processor
> > > UltraSPARC-IIIi (1.5Ghz) system.
> >
> > Ok. It could easily be something like a cache footprint issue. And while
> > I don't know my sparc cpu's very well, I think the Ultrasparc-IIIi is
> > super- scalar but does no out-of-order and speculation, no?
>
> I does only very simple speculation, but you're description is accurate.

Surely it would do branch prediction, but maybe not indirect branch?
I did wonder why those indirect function calls were added everywhere
in the scheduler...

They didn't show up in the newest generation of x86 CPUs, but simpler
implementations won't handle them as well.

I wouldn't expect that to cause such a big regression on its own, but
it would still be interesting to test changing them to direct calls.

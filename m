From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from 2.6.22
 -&gt; 2.6.28
Date: Tue, 18 Nov 2008 07:58:49 -0800 (PST)
Message-ID: <alpine.LFD.2.00.0811180731480.18283@nehalem.linux-foundation.org>
References: <alpine.LFD.2.00.0811171149100.18283@nehalem.linux-foundation.org> <alpine.LFD.2.00.0811171218470.18283@nehalem.linux-foundation.org> <20081117.125826.193693115.davem@davemloft.net> <200811182044.11055.nickpiggin@yahoo.com.au>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200811182044.11055.nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, mingo-X9Un+BFzKDI@public.gmane.org, dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org



On Tue, 18 Nov 2008, Nick Piggin wrote:

> On Tuesday 18 November 2008 07:58, David Miller wrote:
> > From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
> > >
> > > Ok. It could easily be something like a cache footprint issue. And while
> > > I don't know my sparc cpu's very well, I think the Ultrasparc-IIIi is
> > > super- scalar but does no out-of-order and speculation, no?
> >
> > I does only very simple speculation, but you're description is accurate.
> 
> Surely it would do branch prediction, but maybe not indirect branch?

That would be "branch target prediction" (and a BTB - "Branch Target 
Buffer" to hold it), and no, I don't think Sparc does that. You can 
certainly do it for in-order machines too, but I think it's fairly rare.

It's sufficiently different from the regular "pick up the address from the 
static instruction stream, and also yank the kill-chain on mispredicted 
direction" to be real work to do. Unlike a compare or test instruction, 
it's not at all likely that you can resolve the final address in just a 
single pipeline stage, and without that, it's usually too late to yank the 
kill-chain.

(And perhaps equally importantly, indirect branches are relatively rare on 
old-style Unix benchmarks - ie SpecInt/FP - or in databases. So it's not 
something that Sparc would necessarily have spent the effort on.)

There is obviously one very special indirect jump: "ret". That's the one 
that is common, and that tends to have a special branch target buffer that 
is a pure stack. And for that, there is usually a special branch target 
register that needs to be set up 'x' cycles before the ret in order to 
avoid the stall (then the predition is checking that register against the 
branch target stack, which is somewhat akin to a regular conditional 
branch comparison).

So I strongly suspect that an indirect (non-ret) branch flushes the 
pipeline on sparc. It is possible that there is a "prepare to jump" 
instruction that prepares the indirect branch stack (kind of a "push 
prediction information"). I suspect Java sees a lot more indirect 
branches than traditional Unix loads, so maybe Sun did do that.

			Linus

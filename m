From: Nick Piggin <nickpiggin@yahoo.com.au>
Subject: Re: [Bug #11308] tbench regression on each kernel release from 2.6.22 -&gt; 2.6.28
Date: Wed, 19 Nov 2008 15:31:41 +1100
Message-ID: <200811191531.41652.nickpiggin@yahoo.com.au>
References: <alpine.LFD.2.00.0811171149100.18283@nehalem.linux-foundation.org> <200811182044.11055.nickpiggin@yahoo.com.au> <alpine.LFD.2.00.0811180731480.18283@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752470AbYKSEcD@vger.kernel.org>
In-Reply-To: <alpine.LFD.2.00.0811180731480.18283@nehalem.linux-foundation.org>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: David Miller <davem@davemloft.net>, mingo@elte.hu, dada1@cosmosbay.com, rjw@sisk.pl, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, cl@linux-foundation.org, efault@gmx.de, a.p.zijlstra@chello.nl, shemminger@vyatta.com

On Wednesday 19 November 2008 02:58, Linus Torvalds wrote:
> On Tue, 18 Nov 2008, Nick Piggin wrote:
> > On Tuesday 18 November 2008 07:58, David Miller wrote:
> > > From: Linus Torvalds <torvalds@linux-foundation.org>
> > >
> > > > Ok. It could easily be something like a cache footprint issue. And
> > > > while I don't know my sparc cpu's very well, I think the
> > > > Ultrasparc-IIIi is super- scalar but does no out-of-order and
> > > > speculation, no?
> > >
> > > I does only very simple speculation, but you're description is
> > > accurate.
> >
> > Surely it would do branch prediction, but maybe not indirect branch?
>
> That would be "branch target prediction" (and a BTB - "Branch Target
> Buffer" to hold it), and no, I don't think Sparc does that. You can
> certainly do it for in-order machines too, but I think it's fairly rare.
>
> It's sufficiently different from the regular "pick up the address from the
> static instruction stream, and also yank the kill-chain on mispredicted
> direction" to be real work to do. Unlike a compare or test instruction,
> it's not at all likely that you can resolve the final address in just a
> single pipeline stage, and without that, it's usually too late to yank the
> kill-chain.
>
> (And perhaps equally importantly, indirect branches are relatively rare on
> old-style Unix benchmarks - ie SpecInt/FP - or in databases. So it's not
> something that Sparc would necessarily have spent the effort on.)
>
> There is obviously one very special indirect jump: "ret". That's the one
> that is common, and that tends to have a special branch target buffer that
> is a pure stack. And for that, there is usually a special branch target
> register that needs to be set up 'x' cycles before the ret in order to
> avoid the stall (then the predition is checking that register against the
> branch target stack, which is somewhat akin to a regular conditional
> branch comparison).
>
> So I strongly suspect that an indirect (non-ret) branch flushes the
> pipeline on sparc. It is possible that there is a "prepare to jump"
> instruction that prepares the indirect branch stack (kind of a "push
> prediction information"). I suspect Java sees a lot more indirect
> branches than traditional Unix loads, so maybe Sun did do that.

Probably true. OTOH, I've seen indirect branches get compiled to direct
branches or the common-case special cased into a direct branch

if (object->fn == default_object_fn)
  default_object_fn();

That might be an easy way to test suspicions about CPU scheduler
slowdowns... (adding a likely() there, and using likely profiling would
help ensure you got the defualt case right).

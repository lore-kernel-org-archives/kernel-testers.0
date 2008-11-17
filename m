From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: skb_release_head_state(): Re: [Bug #11308] tbench regression on
 each kernel release from 2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 13:34:33 -0800 (PST)
Message-ID: <alpine.LFD.2.00.0811171325260.18283@nehalem.linux-foundation.org>
References: <20081117110119.GL28786@elte.hu> <4921539B.2000002@cosmosbay.com> <20081117161135.GE12081@elte.hu> <49219D36.5020801@cosmosbay.com> <20081117170844.GJ12081@elte.hu> <20081117172549.GA27974@elte.hu> <4921AAD6.3010603@cosmosbay.com>
 <alpine.LFD.2.00.0811170937540.3468@nehalem.linux-foundation.org> <20081117182320.GA26844@elte.hu> <20081117184951.GA5585@elte.hu> <20081117205530.GE12020@elte.hu>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117205530.GE12020-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>



On Mon, 17 Nov 2008, Ingo Molnar wrote:
> 
> this function _really_ hurts from a 16-bit op:
> 
> ffffffff8048943e:     6503 	66 c7 83 a8 00 00 00 	movw   $0x0,0xa8(%rbx)
> ffffffff80489445:        0 	00 00 
> ffffffff80489447:   174101 	5b                   	pop    %rbx

I don't think that is it, actually. The 16-bit store just before it had a 
zero count, even though anything that executes the second one will always 
execute the first one too.

The fact is, x86 profiles are subtle at an instruction level, and you tend 
to get profile hits _after_ the instruction that caused the cost because 
an interrupt (even an NMI) is always delayed to the next instruction (the 
one that didn't complete). And since the core will execute out-of-order, 
you don't even know what that one is, since there could easily be 
branches, but even in the absense of branches you have many instructions 
executing together.

For example, in many situations the two 16-bit stores will happily execute 
together, and what you see may simply be a cache miss on the line that was 
stored to. The store buffer needs to resolve the read of the "pop" in 
order to complete, so having a big count in between stores and a 
subsequent load is not all that unlikely.

So doing per-instruction profiling is not useful unless you start looking 
at what preceded the instruction, and because of the out-of-order nature, 
you really almost have to look for cache misses or branch mispredicts.

One common reason for such a big count on an instruction that looks 
perfectly simple is often that there is a branch to that instruction that 
was mispredicted. Or that there was an instruction that was costly _long_ 
before, and that other instructions were in the shadow of that one 
completing (ie they had actually completed first, but didn't retire until 
the earlier instruction did).

So you really should never just look at the previous instruction or 
anythign as simplistic as that. The time of in-order execution is long 
past.

		Linus

From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
 2.6.22 -&gt; 2.6.28
Date: Thu, 20 Nov 2008 01:14:13 -0800 (PST)
Message-ID: <20081120.011413.02371461.davem@davemloft.net>
References: <20081117.125826.193693115.davem@davemloft.net>
	<200811182044.11055.nickpiggin@yahoo.com.au>
	<alpine.LFD.2.00.0811180731480.18283@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0811180731480.18283-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org
Cc: nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org, mingo-X9Un+BFzKDI@public.gmane.org, dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org

From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Date: Tue, 18 Nov 2008 07:58:49 -0800 (PST)

> There is obviously one very special indirect jump: "ret". That's the one 
> that is common, and that tends to have a special branch target buffer that 
> is a pure stack. And for that, there is usually a special branch target 
> register that needs to be set up 'x' cycles before the ret in order to 
> avoid the stall (then the predition is checking that register against the 
> branch target stack, which is somewhat akin to a regular conditional 
> branch comparison).

Yes, UltraSPARC has a RAS or Return Address Stack.  I think it has
effectively zero latency (ie. you can call some function, immediately
"ret" and it hits the RAS).  This is probably because, due to delay slots,
there is always going to be one instruction in between anyways. :)

> So I strongly suspect that an indirect (non-ret) branch flushes the 
> pipeline on sparc. It is possible that there is a "prepare to jump" 
> instruction that prepares the indirect branch stack (kind of a "push 
> prediction information").

It doesn't flush the pipeline, it just stalls it waiting for the
address computation.

Branches are predicted and can execute in the same cycle as the
condition-code setting instruction they depend upon.

> I suspect Java sees a lot more indirect branches than traditional
> Unix loads, so maybe Sun did do that.

There really isn't anything special done here for indirect jumps,
other than pushing onto the RAS.  Indirects just suck :)

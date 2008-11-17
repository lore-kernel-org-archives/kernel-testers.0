From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
 2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 11:52:58 -0800 (PST)
Message-ID: <20081117.115258.227376348.davem@davemloft.net>
References: <20081117110119.GL28786@elte.hu>
	<20081117.112157.146825192.davem@davemloft.net>
	<alpine.LFD.2.00.0811171147380.18283@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0811171147380.18283-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org
Cc: mingo-X9Un+BFzKDI@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org

From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Date: Mon, 17 Nov 2008 11:48:33 -0800 (PST)

> We've asked _you_ to do NMI profiling, it shouldn't be the other way 
> around.

I wasn't able to on these systems, so instead I did cycle level
evaluation of the parts that have to run with interrupts disabled.

And as a result I found that wake_up() is now 4 times slower than it
was in 2.6.22, I even analyzed this for every single kernel release
till now.

It could be a sparc specific issue, because the call chain is deeper
and we eat a lot more register window spills onto the stack.

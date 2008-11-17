From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
	2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 23:47:51 +0100
Message-ID: <20081117224751.GA19905@elte.hu>
References: <20081117110119.GL28786@elte.hu> <4921539B.2000002@cosmosbay.com> <20081117161135.GE12081@elte.hu> <20081117.113158.200497613.davem@davemloft.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20081117.113158.200497613.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org


* David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org> wrote:

> From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> Date: Mon, 17 Nov 2008 17:11:35 +0100
> 
> > Ouch, +4% from a oneliner networking change? That's a _huge_ speedup 
> > compared to the things we were after in scheduler land.
> 
> The scheduler has accounted for at least %10 of the tbench 
> regressions at this point, what are you talking about?

yeah, you are probably right when it comes to task migration policy 
impact - that can have effects in that range. (and that, you have to 
accept, is a fundamentally hard and fragile job to get right, as it 
involves observing the past and predicting the future out of it - at 
1.3 million events per second)

So above i was just talking about straight scheduling code overhead. 
(that cannot have been +10% of the total - as the whole scheduler only 
takes 7% total - TLB flush and FPU restore overhead included. Even the 
hrtimer bits were about 1% of the total.)

	Ingo

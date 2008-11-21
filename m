From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
 2.6.22 -&gt; 2.6.28
Date: Fri, 21 Nov 2008 01:05:08 -0800 (PST)
Message-ID: <20081121.010508.40225532.davem@davemloft.net>
References: <Pine.LNX.4.64.0811201727070.9089@quilx.com>
	<20081121083044.GL16242@elte.hu>
	<49267694.1030506@cosmosbay.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <49267694.1030506-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org
Cc: mingo-X9Un+BFzKDI@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org

From: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Date: Fri, 21 Nov 2008 09:51:32 +0100

> Now, I wish sockets and pipes not going through dcache, not tbench affair
> of course but real workloads...
> 
> running 8 processes on a 8 way machine doing a 
> 
> for (;;)
> 	close(socket(AF_INET, SOCK_STREAM, 0));
> 
> is slow as hell, we hit so many contended cache lines ...
> 
> ticket spin locks are slower in this case (dcache_lock for example
> is taken twice when we allocate a socket(), once in d_alloc(), another one
> in d_instantiate())

As you of course know, this used to be a ton worse.  At least now
these things are unhashed. :)

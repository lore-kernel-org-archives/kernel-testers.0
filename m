From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: eth_type_trans(): Re: [Bug #11308] tbench regression on each
 kernel release from 2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 21:16:45 -0800 (PST)
Message-ID: <20081117.211645.193706814.davem@davemloft.net>
References: <20081117182320.GA26844@elte.hu>
	<20081117184951.GA5585@elte.hu>
	<20081117212657.GH12020@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117212657.GH12020-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: mingo-X9Un+BFzKDI@public.gmane.org
Cc: torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org

From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Date: Mon, 17 Nov 2008 22:26:57 +0100

> eth->h_proto access.

Yes, this is the first time a packet is touched on receive.

> Given that this workload does localhost networking, my guess would be 
> that eth->h_proto is bouncing around between 16 CPUs? At minimum this 
> read-mostly field should be separated from the bouncing bits.

It's the packet contents, there is no way to "seperate it".

And it should be unlikely bouncing on your system under tbench,
the senders and receivers should hang out on the same cpu unless
the something completely stupid is happening.

That's why I like running tbench with a num_threads command
line argument equal to the number of cpus, every cpu gets
the two thread talking to eachother over the TCP socket.

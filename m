From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
	2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 17:11:35 +0100
Message-ID: <20081117161135.GE12081@elte.hu>
References: <1ScKicKnTUE.A.VxH.DIHIJB@chimera> <NjF0-fuClJC.A.73B.cLHIJB@chimera> <20081117090648.GG28786@elte.hu> <20081117.011403.06989342.davem@davemloft.net> <20081117110119.GL28786@elte.hu> <4921539B.2000002@cosmosbay.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <4921539B.2000002-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>


* Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org> wrote:

>> It all looks like pure old-fashioned straight overhead in the 
>> networking layer to me. Do we still touch the same global cacheline 
>> for every localhost packet we process? Anything like that would 
>> show up big time.
>
> Yes we do, I find strange we dont see dst_release() in your NMI 
> profile
>
> I posted a patch ( commit 5635c10d976716ef47ae441998aeae144c7e7387 
> net: make sure struct dst_entry refcount is aligned on 64 bytes) (in 
> net-next-2.6 tree) to properly align struct dst_entry refcounter and 
> got 4% speedup on tbench on my machine.

Ouch, +4% from a oneliner networking change? That's a _huge_ speedup 
compared to the things we were after in scheduler land. A lot of 
scheduler folks worked hard to squeeze the last 1-2% out of the 
scheduler fastpath (which was not trivial at all). The _full_ 
scheduler accounts for only about 7% of the total system overhead here 
on a 16-way box...

So why should we be handling this anything but a plain networking 
performance regression/weakness? The localhost scalability bottleneck 
has been reported a _long_ time ago.

	Ingo

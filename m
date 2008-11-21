From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
 2.6.22 -&gt; 2.6.28
Date: Fri, 21 Nov 2008 01:03:20 -0800 (PST)
Message-ID: <20081121.010320.73660585.davem@davemloft.net>
References: <Pine.LNX.4.64.0811191341570.23502@quilx.com>
	<Pine.LNX.4.64.0811201727070.9089@quilx.com>
	<20081121083044.GL16242@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081121083044.GL16242-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: mingo-X9Un+BFzKDI@public.gmane.org
Cc: cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org

From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Date: Fri, 21 Nov 2008 09:30:44 +0100

> 
> * Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
> 
> > hmmm... Well we are almost there.
> > 
> > 2.6.22:
> > 
> > Throughput 2526.15 MB/sec 8 procs
> > 
> > 2.6.28-rc5:
> > 
> > Throughput 2486.2 MB/sec 8 procs
> > 
> > 8p Dell 1950 and the number of processors specified on the tbench 
> > command line.
> 
> And with net-next we might even be able to get past that magic limit? 
> net-next is linus-latest plus the latest and greatest networking bits:

In any event I'm happy to toss this from the regression list.

My sparc still shows the issues and I'll profile that independently.
I'm pretty sure it's the indirect calls and the deeper stack frames
(which == 128 bytes of extra stores at each level to save the register
window), but I need to prove that first.

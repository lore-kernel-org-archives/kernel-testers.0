From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
	2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 20:53:16 +0100
Message-ID: <20081117195316.GA8235@elte.hu>
References: <20081117110119.GL28786@elte.hu> <4921539B.2000002@cosmosbay.com> <20081117161135.GE12081@elte.hu> <20081117.113158.200497613.davem@davemloft.net> <alpine.LFD.2.00.0811171134480.18283@nehalem.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0811171134480.18283-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org


* Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:

> On Mon, 17 Nov 2008, David Miller wrote:
> > 
> > The scheduler has accounted for at least %10 of the tbench 
> > regressions at this point, what are you talking about?
> 
> I'm wondering if you're not looking at totally different issues.
> 
> For example, if I recall correctly, David had a big hit on the 
> hrtimers. And I wonder if perhaps Ingo's numbers are without 
> hrtimers or something?

hrtimers should not be an issue anymore since this commit:

| commit 0c4b83da58ec2e96ce9c44c211d6eac5f9dae478
| Author: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
| Date:   Mon Oct 20 14:27:43 2008 +0200
|
|     sched: disable the hrtick for now
|    
|     David Miller reported that hrtick update overhead has tripled the
|     wakeup overhead on Sparc64.
|    
|     That is too much - disable the HRTICK feature for now by default,
|     until a faster implementation is found.
|    
|     Reported-by: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
|     Acked-by: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
|     Signed-off-by: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

Which was included in v2.6.28-rc1 already.

	Ingo

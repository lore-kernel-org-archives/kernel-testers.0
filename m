From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
	2.6.22 -&gt; 2.6.28
Date: Tue, 18 Nov 2008 09:45:41 +0100
Message-ID: <20081118084541.GJ17838@elte.hu>
References: <20081117184951.GA5585@elte.hu> <20081117220828.GB6398@elte.hu> <4921ED16.9050307@cosmosbay.com> <20081117.212352.77940634.davem@davemloft.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20081117.212352.77940634.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org


* David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org> wrote:

> From: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
> Date: Mon, 17 Nov 2008 23:15:50 +0100
> 
> > Yes, I mentioned it later. But apparently you dont read my mails, 
> > so I will just stop now.
> 
> Yeah I was going to mention this too :-/

I spent hours profiling the networking code, and no, i didnt read all 
the incoming emails in parallel - i read them after that.

I have established it beyond reasonable doubt that the scheduler is 
doing the right thing with the config i've posted. Your "wakeup is two 
orders of magnitude more expensive" claim, which got me to measure and 
profile this stuff, is not reproducible here and this regression 
should not be listed as a scheduler regression.

	Ingo

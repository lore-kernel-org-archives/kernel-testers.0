From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
 2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 12:18:44 -0800 (PST)
Message-ID: <20081117.121844.56281291.davem@davemloft.net>
References: <alpine.LFD.2.00.0811171147380.18283@nehalem.linux-foundation.org>
	<20081117.115258.227376348.davem@davemloft.net>
	<alpine.LFD.2.00.0811171156080.18283@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0811171156080.18283-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org
Cc: mingo-X9Un+BFzKDI@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org

From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Date: Mon, 17 Nov 2008 11:57:55 -0800 (PST)

> On Mon, 17 Nov 2008, David Miller wrote:
> > And as a result I found that wake_up() is now 4 times slower than it
> > was in 2.6.22, I even analyzed this for every single kernel release
> > till now.
> 
> ..and that's the one where you then pointed to hrtimers, and now you claim 
> that was fixed?

That was a huge increase going from 2.6.26 to 2.6.27, and has
been fixed.

The rest of the gradual release-to-release cost increase, however,
remains.

> At least I haven't seen any new analysis since then.

I will find time ot make it after I get back from Portland.

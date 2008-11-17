From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from 2.6.22
 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 11:57:55 -0800 (PST)
Message-ID: <alpine.LFD.2.00.0811171156080.18283@nehalem.linux-foundation.org>
References: <20081117110119.GL28786@elte.hu> <20081117.112157.146825192.davem@davemloft.net> <alpine.LFD.2.00.0811171147380.18283@nehalem.linux-foundation.org> <20081117.115258.227376348.davem@davemloft.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117.115258.227376348.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: mingo-X9Un+BFzKDI@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org



On Mon, 17 Nov 2008, David Miller wrote:
> 
> And as a result I found that wake_up() is now 4 times slower than it
> was in 2.6.22, I even analyzed this for every single kernel release
> till now.

..and that's the one where you then pointed to hrtimers, and now you claim 
that was fixed?

At least I haven't seen any new analysis since then.

> It could be a sparc specific issue, because the call chain is deeper
> and we eat a lot more register window spills onto the stack.

Oh, easily. In-order machines tend to have serious problems with indirect 
function calls in particular. x86, in contrast, tends to not even notice, 
especially if the indirect function is fairly static per call-site, and 
predicts well.

There is a reason my machine is 15-20 times faster than yours.

			Linus

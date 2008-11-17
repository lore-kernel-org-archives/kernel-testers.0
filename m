From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from 2.6.22
 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 11:48:33 -0800 (PST)
Message-ID: <alpine.LFD.2.00.0811171147380.18283@nehalem.linux-foundation.org>
References: <20081117090648.GG28786@elte.hu> <20081117.011403.06989342.davem@davemloft.net> <20081117110119.GL28786@elte.hu> <20081117.112157.146825192.davem@davemloft.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117.112157.146825192.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: mingo-X9Un+BFzKDI@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org



On Mon, 17 Nov 2008, David Miller wrote:

> From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> Date: Mon, 17 Nov 2008 12:01:19 +0100
> 
> > The scheduler's overhead barely even registers on a 16-way x86 system 
> > i'm running tbench on. Here's the NMI profile during 64 threads tbench 
> > on a 16-way x86 box with an v2.6.28-rc5 kernel [config attached]:
> 
> Try a non-NMI profile.
> 
> It's the whole of the try_to_wake_up() path that's the problem.

David, that makes no sense. A NMI profile is going to be a _lot_ more 
accurate than a non-NMI one. Asking somebody to do a clearly inferior 
profile to get "better numbers" is insane.

We've asked _you_ to do NMI profiling, it shouldn't be the other way 
around.

		Linus

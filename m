From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
 2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 11:21:57 -0800 (PST)
Message-ID: <20081117.112157.146825192.davem@davemloft.net>
References: <20081117090648.GG28786@elte.hu>
	<20081117.011403.06989342.davem@davemloft.net>
	<20081117110119.GL28786@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117110119.GL28786-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: mingo-X9Un+BFzKDI@public.gmane.org
Cc: rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org

From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Date: Mon, 17 Nov 2008 12:01:19 +0100

> The scheduler's overhead barely even registers on a 16-way x86 system 
> i'm running tbench on. Here's the NMI profile during 64 threads tbench 
> on a 16-way x86 box with an v2.6.28-rc5 kernel [config attached]:

Try a non-NMI profile.

It's the whole of the try_to_wake_up() path that's the problem.

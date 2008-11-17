From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
 2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 11:36:37 -0800 (PST)
Message-ID: <20081117.113637.72930858.davem@davemloft.net>
References: <20081117161135.GE12081@elte.hu>
	<49219D36.5020801@cosmosbay.com>
	<20081117170844.GJ12081@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117170844.GJ12081-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: mingo-X9Un+BFzKDI@public.gmane.org
Cc: dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org

From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Date: Mon, 17 Nov 2008 18:08:44 +0100

> Mike Galbraith has been spending months trying to pin down all the 
> issues.

Yes Mike has been doing tireless good work.

Another thing I noticed is that because all of the scheduler
core operations are now function pointer callbacks, the
call chain is deeper for core operations like wake_up().

Much of it used to be completely inlined into try_to_wake_up()

With the addition of the RB tree stuff, that adds yet another
unavoidable depth of function call.

wake_up() is usually at the deepest part of the call chain,
so this is a big deal

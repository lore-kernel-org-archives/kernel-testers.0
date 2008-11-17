From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
 2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 11:39:36 -0800 (PST)
Message-ID: <20081117.113936.81699150.davem@davemloft.net>
References: <alpine.LFD.2.00.0811170937540.3468@nehalem.linux-foundation.org>
	<20081117182320.GA26844@elte.hu>
	<20081117184951.GA5585@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117184951.GA5585-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: mingo-X9Un+BFzKDI@public.gmane.org
Cc: torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org

From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Date: Mon, 17 Nov 2008 19:49:51 +0100

> 
> * Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
> 
> 4> The place for the sock_rfree() hit looks a bit weird, and i'll 
> > investigate it now a bit more to place the real overhead point 
> > properly. (i already mapped the test-bit overhead: that comes from 
> > napi_disable_pending())
> 
> ok, here's a new set of profiles. (again for tbench 64-thread on a 
> 16-way box, with v2.6.28-rc5-19-ge14c8bf and with the kernel config i 
> posted before.)

Again, do a non-NMI profile and the top (at least for me)
looks like this:

samples  %        app name                 symbol name
473       6.3928  vmlinux                  finish_task_switch
349       4.7169  vmlinux                  tcp_v4_rcv
327       4.4195  vmlinux                  U3copy_from_user
322       4.3519  vmlinux                  tl0_linux32
178       2.4057  vmlinux                  tcp_ack
170       2.2976  vmlinux                  tcp_sendmsg
167       2.2571  vmlinux                  U3copy_to_user

That tcp_v4_rcv() hit is %98 on the wake_up() call it does.

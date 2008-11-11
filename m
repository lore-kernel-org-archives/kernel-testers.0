From: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [Bug #11989] Suspend failure on NForce4-based boards due to
 chanes in stop_machine
Date: Tue, 11 Nov 2008 14:49:01 +0100
Message-ID: <1226411341.7685.1779.camel@twins>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera>
	 <20081110120401.GA15518@osiris.boeblingen.de.ibm.com>
	 <200811101547.21325.rjw@sisk.pl> <200811102355.42389.rjw@sisk.pl>
	 <20081111105214.GA15645@elte.hu>
	 <19f34abd0811110536i71994436q4aa78a99d201c478@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <19f34abd0811110536i71994436q4aa78a99d201c478-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Tue, 2008-11-11 at 14:36 +0100, Vegard Nossum wrote:
> On Tue, Nov 11, 2008 at 11:52 AM, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
> > [ Cc:-ed workqueue/locking/suspend-race-condition experts. ]
> 
> Heh. I am not expert, but I looked at the code. The obvious suspicious
> thing to see is the use of unpaired barriers? Maybe like this:
> 
>  47 static void set_state(enum stopmachine_state newstate)
> 48 {
> 49         /* Reset ack counter. */
> 50         atomic_set(&thread_ack, num_threads);
> 51         smp_wmb();
> 
> + /* force ordering between thread_ack/state */
> 
> 52         state = newstate;
> 53 }
> 54
> 55 /* Last one to ack a state moves to the next state. */
> 56 static void ack_state(void)
> 57 {
> 58         if (atomic_dec_and_test(&thread_ack))
> 
> Maybe
> + /* force ordering between thread_ack/state */
> + smp_rmb();
> here?

all atomic ops that have return values imply a full barrier, iirc

> 59                 set_state(state + 1);
> 60 }
> 61
> 
> Or maybe I am wrong. But Documentation/memory-barriers.txt is rather
> explicit on this point.
> 
> 
> Vegard
> 

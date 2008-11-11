From: "Vegard Nossum" <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11989] Suspend failure on NForce4-based boards due to chanes in stop_machine
Date: Tue, 11 Nov 2008 14:36:19 +0100
Message-ID: <19f34abd0811110536i71994436q4aa78a99d201c478@mail.gmail.com>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera>
	 <20081110120401.GA15518@osiris.boeblingen.de.ibm.com>
	 <200811101547.21325.rjw@sisk.pl> <200811102355.42389.rjw@sisk.pl>
	 <20081111105214.GA15645@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=FsQpZrIyW5EYuBtjc4DsWjXHtSmLhhFNcpBdewybujI=;
        b=CRGZlBpanwBuQlBTFZR45/1cdJ/PZzSkjEO4tcyx4BGsp/o5zuCO8t97emSgTbyE3X
         j8nD9bJmQ4i4lwwkXyPlff224G9YGhcoAVLBM8nymbq5GCdWfNUwuY0a/62me8a93jt5
         zADMycP9kBpI+7yfxp9h/sUolBUCjH28TzSr8=
In-Reply-To: <20081111105214.GA15645-X9Un+BFzKDI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Tue, Nov 11, 2008 at 11:52 AM, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
> [ Cc:-ed workqueue/locking/suspend-race-condition experts. ]

Heh. I am not expert, but I looked at the code. The obvious suspicious
thing to see is the use of unpaired barriers? Maybe like this:

 47 static void set_state(enum stopmachine_state newstate)
48 {
49         /* Reset ack counter. */
50         atomic_set(&thread_ack, num_threads);
51         smp_wmb();

+ /* force ordering between thread_ack/state */

52         state = newstate;
53 }
54
55 /* Last one to ack a state moves to the next state. */
56 static void ack_state(void)
57 {
58         if (atomic_dec_and_test(&thread_ack))

Maybe
+ /* force ordering between thread_ack/state */
+ smp_rmb();
here?

59                 set_state(state + 1);
60 }
61

Or maybe I am wrong. But Documentation/memory-barriers.txt is rather
explicit on this point.


Vegard

-- 
"The animistic metaphor of the bug that maliciously sneaked in while
the programmer was not looking is intellectually dishonest as it
disguises that the error is the programmer's own creation."
	-- E. W. Dijkstra, EWD1036

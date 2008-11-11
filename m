From: "Vegard Nossum" <vegard.nossum@gmail.com>
Subject: Re: [Bug #11989] Suspend failure on NForce4-based boards due to chanes in stop_machine
Date: Tue, 11 Nov 2008 14:46:38 +0100
Message-ID: <19f34abd0811110546s39b39b96ka41b7d0d24eaec03@mail.gmail.com>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera>
	 <20081110120401.GA15518@osiris.boeblingen.de.ibm.com>
	 <200811101547.21325.rjw@sisk.pl> <200811102355.42389.rjw@sisk.pl>
	 <20081111105214.GA15645@elte.hu>
	 <19f34abd0811110536i71994436q4aa78a99d201c478@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756625AbYKKNqv@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=Y/AKcBQUuOktmJk8MZp9lBAnFSPG1Z8klIgyhp3PZm4=;
        b=UeppB1jUWZNaInf2KOmDgkSniuqKT84ZitFSW1qXcIyH0sjQKQXRus2KzxmYMAF4GM
         nCXHG1MJtoAEaxbqlDpaU6U2I8P/RpM1ycxWlnUh9CgwAgakMGr3dZyHwnYKyTKB9L3k
         Ez1W7FbbKvgmoPj+QM3gwO8mFKv8I2P8XWBGg=
In-Reply-To: <19f34abd0811110536i71994436q4aa78a99d201c478@mail.gmail.com>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo@elte.hu>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Heiko Carstens <heiko.carstens@de.ibm.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Rusty Russell <rusty@rustcorp.com.au>, Peter Zijlstra <a.p.zijlstra@chello.nl>, Oleg Nesterov <oleg@redhat.com>, Dmitry Adamushko <dmitry.adamushko@gmail.com>, Andrew Morton <akpm@linux-foundation.org>

On Tue, Nov 11, 2008 at 2:36 PM, Vegard Nossum <vegard.nossum@gmail.com> wrote:
> On Tue, Nov 11, 2008 at 11:52 AM, Ingo Molnar <mingo@elte.hu> wrote:
>> [ Cc:-ed workqueue/locking/suspend-race-condition experts. ]
>
> Heh. I am not expert, but I looked at the code. The obvious suspicious
> thing to see is the use of unpaired barriers? Maybe like this:

...

> 55 /* Last one to ack a state moves to the next state. */
> 56 static void ack_state(void)
> 57 {
> 58         if (atomic_dec_and_test(&thread_ack))
>
> Maybe
> + /* force ordering between thread_ack/state */
> + smp_rmb();
> here?

Oops, I am wrong (after a small investigation).

"1490 Any atomic operation that modifies some state in memory and
returns information
1491 about the state (old or new) implies an SMP-conditional general
memory barrier
1492 (smp_mb()) on each side of the actual operation (with the exception of
1493 explicit lock operations, described later).  These include:
1494
...
1503         atomic_dec_and_test();"

Won't fix the problem at hand, but maybe something like this would be
nice for future generations :-)

diff --git a/kernel/stop_machine.c b/kernel/stop_machine.c
index 0e688c6..6796bb1 100644
--- a/kernel/stop_machine.c
+++ b/kernel/stop_machine.c
@@ -55,6 +55,7 @@ static void set_state(enum stopmachine_state newstate)
 /* Last one to ack a state moves to the next state. */
 static void ack_state(void)
 {
+       /* Implicit memory barrier; no smp_rmb() needed */
        if (atomic_dec_and_test(&thread_ack))
                set_state(state + 1);
 }


Vegard

-- 
"The animistic metaphor of the bug that maliciously sneaked in while
the programmer was not looking is intellectually dishonest as it
disguises that the error is the programmer's own creation."
	-- E. W. Dijkstra, EWD1036

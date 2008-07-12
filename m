From: Roman Mindalev <lists-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org>
Subject: Re: [Bug #11035] System hangs on 2.6.26-rc8
Date: Sat, 12 Jul 2008 19:48:41 +0400
Message-ID: <4878D259.7050403@r000n.net>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik> <uBi7uNfg81L.A.xt.SzLcIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <uBi7uNfg81L.A.xt.SzLcIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.25.  Please verify if it still should be listed.
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11035
> Subject		: System hangs on 2.6.26-rc8
> Submitter	: Roman Mindalev <lists-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org>
> Date		: 2008-07-02 14:25 (5 days old)
> References	: http://marc.info/?l=linux-kernel&m=121500871414995&w=4
> 
> 
> --
> To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> 

Announce: It is long history, if you don't want to read it, go directly
to assumption ;)

Short description of problem: SIGSEGV on high I/O load (reading packages
database, kernel untaring) without any records in logs

Prehistory: 2.6.26-rc7 works, 2.6.26-rc8 buggy, configs very simular.

History: In last days I compiled some 2.6.25 kernels (took it, because
it is stable) with different configs (step-by-step disabling options,
not equals in -rc7 and -rc8) and got next results:

2.6.25 (preemtible, preempt rcu, 300 Hz, snd_sequencer, snd_seq_dummy,
snd_rtctimer, snd_seq_rtctimer_default, debug_preempt, rcu_tortune_test)
- bug
2.6.25 (preemtible, preempt rcu, 300 Hz, snd_sequencer, snd_seq_dummy,
debug_preempt, rcu_tortune_test) - bug
2.6.25 (preemtible, preempt rcu, 300 Hz, snd_sequencer, debug_preempt,
rcu_tortune_test) - bug
2.6.25 (preemtible, preempt rcu, 300 Hz, debug_preempt,
rcu_tortune_test) - bug
2.6.25 (preemtible, preempt rcu, 250 Hz, debug_preempt,
rcu_tortune_test) - bug
2.6.25 (preemtible, preempt rcu, 250 Hz, snd_rtctimer, debug_preempt,
rcu_tortune_test) - bug
2.6.25 (preemtible, preempt rcu, 100 Hz, debug_preempt,
rcu_tortune_test) - bug
2.6.25 (preemtible, 250 Hz, debug_preempt, rcu_tortune_test) - bug
2.6.25 (250 Hz, rcu_tortune_test) - bug
2.6.25 (250 Hz) - bug

And I understand - problem not (only?) in kernel, problem in GCC too (I
updated whole system in June).

2.6.24 - one kernel (I'm tested from it to latest rc), which (with
time.patch) works with GCC 4.3.1
2.6.25 and above (tested with 2.6.26-rc7, 2.6.26-rc8, 2.6.26-rc9) don't
works, if compiled with this compiler version.

Then I look on my (working) kernels - 2.6.26-rc6 was compiled with GCC
4.2.4, and 2.6.26-rc7 too...

In testing purposes I took some listed kernels and recompiled them with
other GCC version.

Common results in table:
GCC 4.3.1, kernel 2.6.24 - works
GCC 4.2.4, kernel 2.6.25 - works
GCC 4.3.1, kernel 2.6.25 - bug
GCC 4.2.4, kernel 2.6.26-rc7 - works
GCC 4.3.1, kernel 2.6.26-rc7 - bug
GCC 4.2.4, kernel 2.6.26-rc8 - works
GCC 4.3.1, kernel 2.6.26-rc8 - bug

Assumption: new features (or new bugs:)) in GCC 4.3 conflicts with some
commit(s), included in kernel between 2.6.24 and 2.6.25

From: Damien Wyart <damien.wyart-GANU6spQydw@public.gmane.org>
Subject: Re: [Bug #12650] Strange load average and ksoftirqd behavior with 2.6.29-rc2-git1
Date: Mon, 16 Feb 2009 14:02:23 +0100
Message-ID: <87ljs6pmao.fsf@free.fr>
References: <20090215090026.GA31147@elte.hu>
	<20090215095128.GA3234@localhost.localdomain>
	<20090215101351.GA23274@elte.hu>
	<20090215103445.GA2335@localhost.localdomain>
	<20090215110104.GB31351@elte.hu>
	<20090215180355.GA2273@localhost.localdomain>
	<20090215193102.GA16873@elte.hu>
	<20090216084223.GA2641@localhost.localdomain>
	<20090216095059.GL6182@elte.hu> <87hc2u61e9.fsf@free.fr>
	<20090216122632.GA3158@elte.hu>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: "Paul E. McKenney" <paulmck-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, =?iso-8859-1?Q?Fr=E9d=E9ric?= Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

* Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> [090216 13:26]:
> We do get 0x100 which is 1 << RCU_SOFTIRQ, i.e. the RCU softirq. Paul, 
> this indeed seems to be a CONFIG_TREE_RCU=y bug.

> What is weird is that RCU_SOFTIRQ gets set again and again - but there's 
> no raise_softirq() calls. Could you please do a two-CPU trace too via:

>    echo 3 > /debug/tracing/tracing_cpumask

> So that we can see what's happening on the other CPU?

> Also, could you please apply the debug patch below (or update to the 
> very latest -tip tree), so that we get trace entries of softirq triggers 
> too?

Ok, the new trace with these additional modifications is here:
http://damien.wyart.free.fr/ksoftirqd_pb/trace_tip_2009.02.16_1300_ksoftirqd_pb_abstime_proc_mask3.txt.gz

-- 
Damien

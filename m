From: "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Subject: Re: [Bug #11989] Suspend failure on NForce4-based boards due to
	chanes in stop_machine
Date: Tue, 11 Nov 2008 08:45:23 -0800
Message-ID: <20081111164523.GB6736@linux.vnet.ibm.com>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera> <20081110120401.GA15518@osiris.boeblingen.de.ibm.com> <200811101547.21325.rjw@sisk.pl> <200811102355.42389.rjw@sisk.pl> <20081111105214.GA15645@elte.hu> <20081111113134.GA5653@osiris.boeblingen.de.ibm.com> <20081111124201.GA9459@osiris.boeblingen.de.ibm.com> <20081111143505.GA6923@linux.vnet.ibm.com> <20081111150225.GA10743@linux.vnet.ibm.com> <20081111161401.GC9459@osiris.boeblingen.de.ibm.com>
Reply-To: paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20081111161401.GC9459-Pmgahw53EmNLmI7Nx2oIsGnsbthNF6/HVpNB7YpNyf8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Steven Rostedt <srostedt-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Tue, Nov 11, 2008 at 05:14:01PM +0100, Heiko Carstens wrote:
> > > Could you please apply the following debug patch (due to Jiangshan and
> > > myself)?  Then you should be able to build with CONFIG_RCU_TRACE,
> > > then mount debugfs after boot, for example, on /debug.  This will
> > > create a /debug/rcu directory with three files, "rcucb", "rcu_data",
> > > and "rcu_bh_data".  Since you are still able to log in, could you
> > > please send the contents of these three files?
> > > 
> > > 							Thanx, Paul
> > 
> > This time with the patch actually attached...  Thanks to Peter Z.
> > for alerting me to my omission.
> 
> Well, your patch doesn't apply on git head. However I used preemptible
> RCU instead and had tracing enabled.

Were you using preemptible RCU earlier as well?  Raphael was using
classic RCU.  Don't get me wrong, all problems need fixing, just trying
to make sure I understand where the problems are occurring.

> This is the output of the three files after it stalled (and continued,
> because I caused an interrupt by sending a network packet) twice:
> 
> [root@h0545001 rcu]# cat rcuctrs 
> CPU last cur F M
>   1    0   0 1 1
>   3    0   0 1 1
>   4    0   0 0 0
>   5    0   0 0 1
>   6    0   0 0 0
> ggp = 1640, state = waitack
> 
> [root@h0545001 rcu]# cat rcugp 
> oldggp=1652  newggp=1655
> 
> [root@h0545001 rcu]# cat rcustats 
> na=33948 nl=3 wa=33945 wl=0 da=33945 dl=0 dr=33945 di=0
> 1=0 e1=0 i1=1674 ie1=4 g1=1670 a1=1920 ae1=251 a2=1669
> z1=1669 ze1=0 z2=1669 m1=4411 me1=2742 m2=1669

This hang also involved synchronize_sched()?  Or synchronize_rcu()?

The reason I ask is that the above stats are for the synchronize_rcu()
rather than synchronize_sched().

							Thanx, Paul

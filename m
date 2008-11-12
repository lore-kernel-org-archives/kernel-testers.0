From: Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #11989] Suspend failure on NForce4-based boards due to
	chanes in stop_machine
Date: Wed, 12 Nov 2008 10:05:08 +0100
Message-ID: <20081112090508.GA14329@osiris.boeblingen.de.ibm.com>
References: <200811101547.21325.rjw@sisk.pl> <200811102355.42389.rjw@sisk.pl> <20081111105214.GA15645@elte.hu> <20081111113134.GA5653@osiris.boeblingen.de.ibm.com> <20081111124201.GA9459@osiris.boeblingen.de.ibm.com> <20081111143505.GA6923@linux.vnet.ibm.com> <20081111150225.GA10743@linux.vnet.ibm.com> <20081111161401.GC9459@osiris.boeblingen.de.ibm.com> <20081111164523.GB6736@linux.vnet.ibm.com> <20081111173451.GA24720@linux.vnet.ibm.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20081111173451.GA24720-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Steven Rostedt <srostedt-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Tue, Nov 11, 2008 at 09:34:51AM -0800, Paul E. McKenney wrote:
> On Tue, Nov 11, 2008 at 08:45:23AM -0800, Paul E. McKenney wrote:
> > On Tue, Nov 11, 2008 at 05:14:01PM +0100, Heiko Carstens wrote:
> > > > > Could you please apply the following debug patch (due to Jiangshan and
> > > > > myself)?  Then you should be able to build with CONFIG_RCU_TRACE,
> > > > > then mount debugfs after boot, for example, on /debug.  This will
> > > > > create a /debug/rcu directory with three files, "rcucb", "rcu_data",
> > > > > and "rcu_bh_data".  Since you are still able to log in, could you
> > > > > please send the contents of these three files?
> > > > > 
> > > > > 							Thanx, Paul
> > > > 
> > > > This time with the patch actually attached...  Thanks to Peter Z.
> > > > for alerting me to my omission.
> > > 
> > > Well, your patch doesn't apply on git head. However I used preemptible
> > > RCU instead and had tracing enabled.
> > 
> > Were you using preemptible RCU earlier as well?  Raphael was using
> > classic RCU.  Don't get me wrong, all problems need fixing, just trying
> > to make sure I understand where the problems are occurring.

Indeed, my fault. I just try to reproduce a cpu hotplug bug with classic RCU
and cpu hotplug stress test, but no luck so far.

From: Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #11989] Suspend failure on NForce4-based boards due to
	chanes in stop_machine
Date: Wed, 12 Nov 2008 17:51:18 +0100
Message-ID: <20081112165118.GA30743@osiris.boeblingen.de.ibm.com>
References: <20081111105214.GA15645@elte.hu> <20081111113134.GA5653@osiris.boeblingen.de.ibm.com> <20081111124201.GA9459@osiris.boeblingen.de.ibm.com> <20081111143505.GA6923@linux.vnet.ibm.com> <20081111150225.GA10743@linux.vnet.ibm.com> <20081111161401.GC9459@osiris.boeblingen.de.ibm.com> <20081111164523.GB6736@linux.vnet.ibm.com> <20081111173451.GA24720@linux.vnet.ibm.com> <20081112090508.GA14329@osiris.boeblingen.de.ibm.com> <20081112160349.GA6667@linux.vnet.ibm.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20081112160349.GA6667-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Steven Rostedt <srostedt-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, manfred-nhLOkwUX5cPe2c5cEj3t2g@public.gmane.org

On Wed, Nov 12, 2008 at 08:03:49AM -0800, Paul E. McKenney wrote:
> On Wed, Nov 12, 2008 at 10:05:08AM +0100, Heiko Carstens wrote:
> > On Tue, Nov 11, 2008 at 09:34:51AM -0800, Paul E. McKenney wrote:
> > > > Were you using preemptible RCU earlier as well?  Raphael was using
> > > > classic RCU.  Don't get me wrong, all problems need fixing, just trying
> > > > to make sure I understand where the problems are occurring.
> > 
> > Indeed, my fault. I just try to reproduce a cpu hotplug bug with classic RCU
> > and cpu hotplug stress test, but no luck so far.
> 
> OK, then my next step will be to send Rafael an updated version of
> my hierarchical RCU, which is more robust than classic RCU against
> online/offline stress tests.  On the machines I have access to, anyway.  ;-)
> 
> Then I will look at preemptable RCU, which undoubtably needs some of the
> same help that I have been giving to hierarchical RCU.  Manfred thus
> wins the clairvoyance award!

Well, I tried all day long to reproduce a cpu hotplug/stop_machine hang
with classic RCU and a kernel configuration that is as close as possible
to Raphael's configuration, but it just continues to work without a bug.

One of the machines is a virtual machine with 8 virtual cpus mapped on
two real cpus. The real cpus are again shared with other guests. So I end
up with cpu steal times of 50-90%. That should have revealed races in the
stop_machine code, considering that thousands of cpu hotplug operations
happened.

I let these test machines running over night. Maybe something happens...
but at a first glance it looks more like the reworked stop_machine code
triggers a different bug that already is present. Hmmm...

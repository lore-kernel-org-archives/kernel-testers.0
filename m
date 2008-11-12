From: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
Subject: Re: [Bug #11989] Suspend failure on NForce4-based boards due to
	chanes in stop_machine
Date: Wed, 12 Nov 2008 08:03:49 -0800
Message-ID: <20081112160349.GA6667@linux.vnet.ibm.com>
References: <200811102355.42389.rjw@sisk.pl> <20081111105214.GA15645@elte.hu> <20081111113134.GA5653@osiris.boeblingen.de.ibm.com> <20081111124201.GA9459@osiris.boeblingen.de.ibm.com> <20081111143505.GA6923@linux.vnet.ibm.com> <20081111150225.GA10743@linux.vnet.ibm.com> <20081111161401.GC9459@osiris.boeblingen.de.ibm.com> <20081111164523.GB6736@linux.vnet.ibm.com> <20081111173451.GA24720@linux.vnet.ibm.com> <20081112090508.GA14329@osiris.boeblingen.de.ibm.com>
Reply-To: paulmck@linux.vnet.ibm.com
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754153AbYKLQET@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20081112090508.GA14329@osiris.boeblingen.de.ibm.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Ingo Molnar <mingo@elte.hu>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Rusty Russell <rusty@rustcorp.com.au>, Vegard Nossum <vegard.nossum@gmail.com>, Peter Zijlstra <a.p.zijlstra@chello.nl>, Oleg Nesterov <oleg@redhat.com>, Dmitry Adamushko <dmitry.adamushko@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, Steven Rostedt <srostedt@redhat.com>, manfred@colorfullife.com

On Wed, Nov 12, 2008 at 10:05:08AM +0100, Heiko Carstens wrote:
> On Tue, Nov 11, 2008 at 09:34:51AM -0800, Paul E. McKenney wrote:
> > On Tue, Nov 11, 2008 at 08:45:23AM -0800, Paul E. McKenney wrote:
> > > On Tue, Nov 11, 2008 at 05:14:01PM +0100, Heiko Carstens wrote:
> > > > > > Could you please apply the following debug patch (due to Jiangshan and
> > > > > > myself)?  Then you should be able to build with CONFIG_RCU_TRACE,
> > > > > > then mount debugfs after boot, for example, on /debug.  This will
> > > > > > create a /debug/rcu directory with three files, "rcucb", "rcu_data",
> > > > > > and "rcu_bh_data".  Since you are still able to log in, could you
> > > > > > please send the contents of these three files?
> > > > > > 
> > > > > > 							Thanx, Paul
> > > > > 
> > > > > This time with the patch actually attached...  Thanks to Peter Z.
> > > > > for alerting me to my omission.
> > > > 
> > > > Well, your patch doesn't apply on git head. However I used preemptible
> > > > RCU instead and had tracing enabled.
> > > 
> > > Were you using preemptible RCU earlier as well?  Raphael was using
> > > classic RCU.  Don't get me wrong, all problems need fixing, just trying
> > > to make sure I understand where the problems are occurring.
> 
> Indeed, my fault. I just try to reproduce a cpu hotplug bug with classic RCU
> and cpu hotplug stress test, but no luck so far.

OK, then my next step will be to send Rafael an updated version of
my hierarchical RCU, which is more robust than classic RCU against
online/offline stress tests.  On the machines I have access to, anyway.  ;-)

Then I will look at preemptable RCU, which undoubtably needs some of the
same help that I have been giving to hierarchical RCU.  Manfred thus
wins the clairvoyance award!

							Thanx, Paul

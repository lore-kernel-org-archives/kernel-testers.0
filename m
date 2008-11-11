From: Heiko Carstens <heiko.carstens@de.ibm.com>
Subject: Re: [Bug #11989] Suspend failure on NForce4-based boards due to
	chanes in stop_machine
Date: Tue, 11 Nov 2008 16:01:32 +0100
Message-ID: <20081111150132.GB9459@osiris.boeblingen.de.ibm.com>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera> <20081110120401.GA15518@osiris.boeblingen.de.ibm.com> <200811101547.21325.rjw@sisk.pl> <200811102355.42389.rjw@sisk.pl> <20081111105214.GA15645@elte.hu> <20081111113134.GA5653@osiris.boeblingen.de.ibm.com> <20081111124201.GA9459@osiris.boeblingen.de.ibm.com> <20081111143505.GA6923@linux.vnet.ibm.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756705AbYKKPCW@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20081111143505.GA6923@linux.vnet.ibm.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
Cc: Ingo Molnar <mingo@elte.hu>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Rusty Russell <rusty@rustcorp.com.au>, Vegard Nossum <vegard.nossum@gmail.com>, Peter Zijlstra <a.p.zijlstra@chello.nl>, Oleg Nesterov <oleg@redhat.com>, Dmitry Adamushko <dmitry.adamushko@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, Steven Rostedt <srostedt@redhat.com>

On Tue, Nov 11, 2008 at 06:35:05AM -0800, Paul E. McKenney wrote:
> > > A process that would do nothing but onlining/offlining cpus would get
> > > stuck after a while:
> > > 
> > >  0 schedule+842 [0x342522]
> > >  1 schedule_timeout+200 [0x342ec4]
> > >  2 wait_for_common+362 [0x341fd6]
> > >  3 wait_for_completion+54 [0x342146]
> > >  4 __synchronize_sched+80 [0x81670]
> > >  5 cpu_down+172 [0x33c030]
> > >  6 store_online+96 [0x33c488]
> > >  7 sysdev_store+52 [0x1bda84]
> > >  8 sysfs_write_file+242 [0x1350ba]
> > >  9 vfs_write+176 [0xd2028]
> > > 10 sys_write+82 [0xd21ea]
> > > 11 sysc_noemu+16 [0x269d8]
> > > 
> > > All cpus are in cpu_idle and no other task in state TASK_INTERRUPTIBLE
> > > or TASK_UNINTERRUPTIBLE. However it would continue to work as soon as
> > > I login into the system or generate a console interrupt.
> > > I'm going to look into the dump and see if I can figure out what is
> > > broken here.
> > > Dunno if it is the same bug or something else.
> > 
> > [Cc:-ed Steven and Paul, since this backtrace seems to be RCU specific]
> > 
> > Steven, Paul, any idea what could cause the hang? I think I would
> > get lost in the RCU code...
> 
> Hello, Heiko,
> 
> Could you please apply the following debug patch (due to Jiangshan and
> myself)?  Then you should be able to build with CONFIG_RCU_TRACE,
> then mount debugfs after boot, for example, on /debug.  This will
> create a /debug/rcu directory with three files, "rcucb", "rcu_data",
> and "rcu_bh_data".  Since you are still able to log in, could you
> please send the contents of these three files?

Hi Paul,

could you attach the patch please? :)

Does the patch also make sense if the system continues to work? That
is the machine isn't stalled anymore as soon as I log in.
On the other hand I do have a dump of the system and can look in
whatever data structures you want. If that helps.

Thanks,
Heiko

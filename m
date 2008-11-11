From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11989] Suspend failure on NForce4-based boards due to
	chanes in stop_machine
Date: Tue, 11 Nov 2008 14:13:19 +0100
Message-ID: <20081111131319.GF14989@elte.hu>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera> <20081110120401.GA15518@osiris.boeblingen.de.ibm.com> <200811101547.21325.rjw@sisk.pl> <200811102355.42389.rjw@sisk.pl> <20081111105214.GA15645@elte.hu> <20081111113134.GA5653@osiris.boeblingen.de.ibm.com> <20081111124201.GA9459@osiris.boeblingen.de.ibm.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20081111124201.GA9459-Pmgahw53EmNLmI7Nx2oIsGnsbthNF6/HVpNB7YpNyf8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Steven Rostedt <srostedt-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>


* Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org> wrote:

> On Tue, Nov 11, 2008 at 12:31:34PM +0100, Heiko Carstens wrote:
> > On Tue, Nov 11, 2008 at 11:52:14AM +0100, Ingo Molnar wrote:
> > > 
> > > * Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > > 
> > > > However, it is reproducible by doing
> > > > 
> > > > # echo core > /sys/power/pm_test
> > > > 
> > > > and repeating
> > > > 
> > > > # echo disk > /sys/power/state
> > > > 
> > > > for a couple of times, in which case the last two lines printed to the console
> > > > before a (solid) hang are:
> > > > 
> > > > SMP alternatives: switching to SMP code
> > > > Booting processor 1 APIC 0x1 ip 0x6000
> > > > 
> > > > So, it evidently fails while re-enabling the non-boot CPU and not 
> > > > during disabling it as I thought before.
> > > > 
> > > > With commit c9583e55fa2b08a230c549bd1e3c0bde6c50d9cc reverted the 
> > > > issue is not reproducible any more.
> > > 
> > > [ Cc:-ed workqueue/locking/suspend-race-condition experts. ]
> > > 
> > > Seems like the new kernel/stop_machine.c logic has a race for the test 
> > > sequence above. (Below is the bisected commit again, maybe the race is 
> > > visible via email review as well.)
> > 
> > FWIW, I tried to reproduce this on s390 and got the following:
> > 
> > A process that would do nothing but onlining/offlining cpus would get
> > stuck after a while:
> > 
> >  0 schedule+842 [0x342522]
> >  1 schedule_timeout+200 [0x342ec4]
> >  2 wait_for_common+362 [0x341fd6]
> >  3 wait_for_completion+54 [0x342146]
> >  4 __synchronize_sched+80 [0x81670]
> >  5 cpu_down+172 [0x33c030]
> >  6 store_online+96 [0x33c488]
> >  7 sysdev_store+52 [0x1bda84]
> >  8 sysfs_write_file+242 [0x1350ba]
> >  9 vfs_write+176 [0xd2028]
> > 10 sys_write+82 [0xd21ea]
> > 11 sysc_noemu+16 [0x269d8]
> > 
> > All cpus are in cpu_idle and no other task in state TASK_INTERRUPTIBLE
> > or TASK_UNINTERRUPTIBLE. However it would continue to work as soon as
> > I login into the system or generate a console interrupt.
> > I'm going to look into the dump and see if I can figure out what is
> > broken here.
> > Dunno if it is the same bug or something else.
> 
> [Cc:-ed Steven and Paul, since this backtrace seems to be RCU specific]
> 
> Steven, Paul, any idea what could cause the hang? I think I would
> get lost in the RCU code...

Cc:-ed Thomas - sometimes "RCU hangs" happen due to nohz confusion: 
because no timer IRQ happens so there's nothing to drive the RCU 
machinery.

	Ingo

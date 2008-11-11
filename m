From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11989] Suspend failure on NForce4-based boards due to chanes in stop_machine
Date: Wed, 12 Nov 2008 00:43:07 +0100
Message-ID: <200811120043.08377.rjw@sisk.pl>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera> <200811102355.42389.rjw@sisk.pl> <b647ffbd0811111328s6a0cd185we3316be5e8f5ce@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <b647ffbd0811111328s6a0cd185we3316be5e8f5ce-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>

On Tuesday, 11 of November 2008, Dmitry Adamushko wrote:
> 2008/11/10 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> > On Monday, 10 of November 2008, Rafael J. Wysocki wrote:
> >> On Monday, 10 of November 2008, Heiko Carstens wrote:
> >> > On Sun, Nov 09, 2008 at 06:59:16PM +0100, Rafael J. Wysocki wrote:
> >> > > This message has been generated automatically as a part of a report
> >> > > of recent regressions.
> >> > >
> >> > > The following bug entry is on the current list of known regressions
> >> > > from 2.6.27.  Please verify if it still should be listed and let me know
> >> > > (either way).
> >> > >
> >> > >
> >> > > Bug-Entry : http://bugzilla.kernel.org/show_bug.cgi?id=11989
> >> > > Subject           : Suspend failure on NForce4-based boards due to chanes in stop_machine
> >> > > Submitter : Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> >> > > Date              : 2008-11-03 0:28 (7 days old)
> >> > > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=c9583e55fa2b08a230c549bd1e3c0bde6c50d9cc
> >> > > References        : http://marc.info/?l=linux-kernel&m=122567187604356&w=4
> >> >
> >> > Hi Rafael,
> >>
> >> Hi,
> >>
> >> > could you provide more informations for this, please?
> >> >
> >> > What is your kernel configuration?
> >>
> >> Available at: http://www.sisk.pl/kernel/debug/mainline/2.6.28-rc3/kitty-config
> >>
> >> > Do you have any binary only modules (nvidia?) loaded?
> >>
> >> No, I don't.
> >>
> >> > Is it possible to recreate the bug by e.g. just doing something like
> >> >
> >> > echo 0 > /sys/devices/system/cpu/cpu1/online
> >>
> >> I haven't checked (yet), I'll do that later today and let you know.
> >>
> >> > (or any other online cpu)? Or does it trigger any lockdep warnings?
> >
> > It cannot be reproduced with offlining CPU1 and it doesn't trigger any
> > warnings from lockdep.
> >
> > However, it is reproducible by doing
> >
> > # echo core > /sys/power/pm_test
> >
> > and repeating
> >
> > # echo disk > /sys/power/state
> >
> > for a couple of times, in which case the last two lines printed to the console
> > before a (solid) hang are:
> >
> > SMP alternatives: switching to SMP code
> > Booting processor 1 APIC 0x1 ip 0x6000
> >
> > So, it evidently fails while re-enabling the non-boot CPU and not during
> > disabling it as I thought before.
> 
> Can you also provide the full log including the messages when a system
> goes down please?
> 
> At first glance, "Botting processor..." as the last message looks
> strange in this context.
> So either wakeup_secondary_cpu()'s completion failed for some reason
> (say, due to some kind of a problem that took place while disabling
> non-boot cpus... I'm purely speculating here so far) or the printk's
> output was not complete.
>
> Perhaps, redoing the test with pr_debug() in arch/x86/kernel/smpboot.c
> enabled would shed more light...

Will do tomorrow.

Thanks,
Rafael

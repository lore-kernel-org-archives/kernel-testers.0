From: "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: cpufreq cleanups - .30 vs .31
Date: Mon, 27 Jul 2009 09:31:06 -0700
Message-ID: <1248712266.11545.8824.camel@localhost.localdomain>
References: <200907061318.20839.trenn@suse.de>
	 <20090707015115.GB5310@redhat.com>  <20090727142532.GA22503@Krystal>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090727142532.GA22503@Krystal>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Cc: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>

On Mon, 2009-07-27 at 07:25 -0700, Mathieu Desnoyers wrote:
> * Dave Jones (davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org) wrote:
> > On Mon, Jul 06, 2009 at 01:18:18PM +0200, Thomas Renninger wrote:
> > 
> >  > So if not find too intrusive, I'd say:
> >  > Venkatesh's whole series of:
> >  > [patch 0/4] Take care of cpufreq lockdep issues (take 2)
> >  > should be seen in .31.
> >  >  ...
> >  > The one patch from Mathieu:
> >  > [patch 2.6.30 2/4] CPUFREQ: fix (utter) cpufreq_add_dev mess
> >  > is a separate, general cleanup which should show up in .31.
> > 
> > I came to the same conclusion after reading the thread, and looking
> > over the patches.  I merged the above, and sent Linus a pull request
> > a few minutes ago.
> > 
> > Thanks Mathieu and Venki for chasing this down.
> > 
> > 	Dave
> 
> Given I never got an answer to this question, I'm re-asking a question I
> asked in a previous thread about Venki's patchset:
> 
> [CPUFREQ] Cleanup locking in ondemand governor
> commit	5a75c82828e7c088ca6e7b4827911dc29cc8e774
> 
> From the earlier thread:
> Subject: Re: [patch 2.6.30 3/4] cpufreq add gov mutex
> 
> I am worried about potential races between add_dev/remove_dev, which
> currently lock the rwsem as mean of protection, and execution of timer
> handler that would not take the rwsem to protect itself anymore, due to
> your changes.
> 
> I'm especially worried about the call to
> 
>               __cpufreq_driver_target(dbs_info->cur_policy,
>                         dbs_info->freq_lo, CPUFREQ_RELATION_H);
> 
> which seems to depend on policy-level information, protected at the
> rwsem-level.
> 
> By removing the rwsem from the timer handler, I don't see how you plan
> to protect this information from add_dev/remove_dev execution.
> 

Sorry I missed the question earlier.

The invariant here is that the timer routine will not be running while
policy is inconsistent due to add/remove. The cpufreq layer calls START
at the end of add_dev when all policy stuff has been setup, which starts
the timer. And STOP along remove_dev before cleaning up policy which
stops the timer.

If you are thinking of races with other cpufreq sysfs interfaces, they
go through the per cpu rwsem along with add/remove.

Thanks,
Venki

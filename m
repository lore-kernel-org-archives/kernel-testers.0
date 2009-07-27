From: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Subject: Re: cpufreq cleanups - .30 vs .31
Date: Mon, 27 Jul 2009 10:25:32 -0400
Message-ID: <20090727142532.GA22503@Krystal>
References: <200907061318.20839.trenn@suse.de> <20090707015115.GB5310@redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090707015115.GB5310-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, R

* Dave Jones (davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org) wrote:
> On Mon, Jul 06, 2009 at 01:18:18PM +0200, Thomas Renninger wrote:
> 
>  > So if not find too intrusive, I'd say:
>  > Venkatesh's whole series of:
>  > [patch 0/4] Take care of cpufreq lockdep issues (take 2)
>  > should be seen in .31.
>  >  ...
>  > The one patch from Mathieu:
>  > [patch 2.6.30 2/4] CPUFREQ: fix (utter) cpufreq_add_dev mess
>  > is a separate, general cleanup which should show up in .31.
> 
> I came to the same conclusion after reading the thread, and looking
> over the patches.  I merged the above, and sent Linus a pull request
> a few minutes ago.
> 
> Thanks Mathieu and Venki for chasing this down.
> 
> 	Dave

Given I never got an answer to this question, I'm re-asking a question I
asked in a previous thread about Venki's patchset:

[CPUFREQ] Cleanup locking in ondemand governor
commit	5a75c82828e7c088ca6e7b4827911dc29cc8e774

From the earlier thread:
Subject: Re: [patch 2.6.30 3/4] cpufreq add gov mutex

I am worried about potential races between add_dev/remove_dev, which
currently lock the rwsem as mean of protection, and execution of timer
handler that would not take the rwsem to protect itself anymore, due to
your changes.

I'm especially worried about the call to

              __cpufreq_driver_target(dbs_info->cur_policy,
                        dbs_info->freq_lo, CPUFREQ_RELATION_H);

which seems to depend on policy-level information, protected at the
rwsem-level.

By removing the rwsem from the timer handler, I don't see how you plan
to protect this information from add_dev/remove_dev execution.


Mathieu

-- 
Mathieu Desnoyers
OpenPGP key fingerprint: 8CD5 52C3 8E3C 4140 715F  BA06 3F25 A8FE 3BAE 9A68

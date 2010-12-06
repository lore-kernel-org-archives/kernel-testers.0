From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #23902] [BUG] 2.6.37-rc3 massive interactivity regression on ARM
Date: Mon, 6 Dec 2010 23:28:59 +0100
Message-ID: <201012062328.59938.rjw@sisk.pl>
References: <1OMp3vU_qjP.A.JXG.uxC-MB@chimera> <19706.13300.115878.641839@pilspetsen.it.uu.se> <19706.39875.954626.75344@pilspetsen.it.uu.se>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <19706.39875.954626.75344-tgku4HJDRZih8lFjZTKsyTAV6s6igYVG@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Venkatesh Pallipadi <venki-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>

On Saturday, December 04, 2010, Mikael Pettersson wrote:
> Mikael Pettersson writes:
>  > Rafael J. Wysocki wrote:
>  > > This message has been generated automatically as a part of a summary report
>  > > of recent regressions.
>  > > 
>  > > The following bug entry is on the current list of known regressions
>  > > from 2.6.36.  Please verify if it still should be listed and let the tracking team
>  > > know (either way).
>  > > 
>  > > 
>  > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=23902
>  > > Subject		: [BUG] 2.6.37-rc3 massive interactivity regression on ARM
>  > > Submitter	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
>  > > Date		: 2010-11-27 15:16 (6 days old)
>  > > Message-ID	: <19697.8378.717761.236202-tgku4HJDRZih8lFjZTKsyTAV6s6igYVG@public.gmane.org>
>  > > References	: http://marc.info/?l=linux-kernel&m=129087098911837&w=2
>  > 
>  > The bug is still present in 2.6.37-rc4.  I'm currently trying to bisect it.
> 
> git bisect identified
> 
> [305e6835e05513406fa12820e40e4a8ecb63743c] sched: Do not account irq time to current task
> 
> as the cause of this regression.  Reverting it from 2.6.37-rc4 (requires some
> hackery due to subsequent changes in the same area) restores sane behaviour.
> 
> (Author of original patch cc:d.)
> 
> The original patch submission talks about irq-heavy scenarios.  My case is the
> exact opposite: UP, !PREEMPT, NO_HZ, very low irq rate, essentially 100% CPU
> bound in userspace but expected to schedule quickly when needed (e.g. running
> top or ps or just hitting CR in one shell while another runs a compile job).

Thanks, added the first bad commit information to the bug entry.

Rafael

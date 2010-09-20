From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #17752] 2.6.36-rc3: inconsistent lock state (iprune_sem, shrink_icache_memory)
Date: Mon, 20 Sep 2010 23:03:04 +0200
Message-ID: <201009202303.04793.rjw@sisk.pl>
References: <1fwtoy8sG5H.A.veG.9D7lMB@chimera> <Wn2eLj_6KZG.A._MH.jE7lMB@chimera> <4C97C7EC.5070907@s5r6.in-berlin.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4C97C7EC.5070907-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Stefan Richter <stefanr-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Monday, September 20, 2010, Stefan Richter wrote:
> Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.35.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=17752
> > Subject		: 2.6.36-rc3: inconsistent lock state (iprune_sem, shrink_icache_memory)
> > Submitter	: Stefan Richter <stefanr-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>
> > Date		: 2010-09-01 6:37 (20 days old)
> > Message-ID	: <tkrat.ed8eda6bc8ffe64e-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>
> > References	: http://marc.info/?l=linux-kernel&m=128332308528119&w=2
> 
> I think this should not be marked as a regression.  See the older reports of
> very similar issues (in my LKML mail from September 3, logged in bugzilla in
> comment #1)
> 	http://lkml.org/lkml/2010/1/15/76	(2.6.33-rc, xfs involved)
> 	http://lkml.org/lkml/2010/1/18/108	(2.6.32.y, ntfs involved)
> and hch's analysis in the first of these two threads
> 	http://lkml.org/lkml/2010/1/19/267	(several filesystems and
> 						 other code paths)
> So, unless my trace was a code path that only newly acquired that oldproblem
> of other code paths, this is an older issue.  Alas this is not obvious to me
> at least from the log that I got.
> 
> I did not have lockdep enabled on the machine which delivered the log during
> the last few months or so; I just remembered to re-enable it at the occasion
> of switching to 2.6.36-rc.

Thanks a lot for the info, I've dropped this bug from the list of recent regressions.

Rafael

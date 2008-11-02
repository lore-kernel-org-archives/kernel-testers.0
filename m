From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11907] NVRAM being corrupted on ppc64 preventing boot
Date: Sun, 2 Nov 2008 23:10:08 +0100
Message-ID: <200811022310.09056.rjw@sisk.pl>
References: <Sl8SUNhCbfL.A.O5H.yueDJB@chimera> <4xS1r6m15_B.A.2F.3ueDJB@chimera> <18702.8817.634094.493649@cargo.ozlabs.ibm.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <18702.8817.634094.493649-UYQwCShxghk5kJ7NmlRacFaTQe2KTcn/@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Mackerras <paulus-eUNUBHrolfbYtjvyW6yDsg@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>

On Sunday, 2 of November 2008, Paul Mackerras wrote:
> Rafael J. Wysocki writes:
> 
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.26 and 2.6.27.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.26 and 2.6.27.  Please verify if it still should
> > be listed and let me know (either way).
> 
> The commit that introduced the problem went into Linus' tree after
> 2.6.27, so it's not a regression from 2.6.26.  In other words, 2.6.27
> doesn't have the problem.  It's a firmware bug in some old firmware
> versions that got triggered by the kernel change, not a kernel bug per
> se.
> 
> The commit has been reverted in Linus' tree now, so there isn't a
> regression from 2.6.27 any more.

Thanks, updated and closed.

Rafael

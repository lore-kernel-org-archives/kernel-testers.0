From: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [Bug #13666] WARNING: at mm/page_alloc.c:1743
	__alloc_pages_nodemask
Date: Tue, 7 Jul 2009 10:39:07 +0100
Message-ID: <20090707093906.GC26532@csn.ul.ie>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera> <dWkuWjWDsSB.A.iyE.f0oUKB@chimera> <alpine.DEB.2.00.0907062101330.31794@chino.kir.corp.google.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.00.0907062101330.31794-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>, Arnaldo Carvalho de Melo <acme-f8uhVLnGfZaxAyOMLChx1axOck334EZe@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

On Mon, Jul 06, 2009 at 09:23:03PM -0700, David Rientjes wrote:
> On Tue, 7 Jul 2009, Rafael J. Wysocki wrote:
> 
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.30.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13666
> > Subject		: WARNING: at mm/page_alloc.c:1743 __alloc_pages_nodemask
> > Submitter	: Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>
> > Date		: 2009-06-27 16:15 (10 days old)
> > References	: http://lkml.org/lkml/2009/6/27/75
> > 
> 
> This should be suppressed with the patchset proposed by Mel on linux-mm:
> 
> 	http://marc.info/?l=linux-mm&m=124568542405734
> 	http://marc.info/?l=linux-mm&m=124568542605738
> 	http://marc.info/?l=linux-mm&m=124568542905750
> 	http://marc.info/?l=linux-mm&m=124568543305755
> 
> It doesn't appear that these are in linux-next, however.
> 

In the middle of all the discussions, a few candidate patches haven't
made it upstream. I'm waiting for an mmotm against 2.6.31-rc2 before
going back to see what has been missed that needs resending.

-- 
Mel Gorman
Part-time Phd Student                          Linux Technology Center
University of Limerick                         IBM Dublin Software Lab

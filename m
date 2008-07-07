From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11025] [problem] raid performance loss with 2.6.26-rc8 on 32-bit x86 (bisected)
Date: Tue, 8 Jul 2008 00:30:19 +0200
Message-ID: <200807080030.20347.rjw@sisk.pl>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik> <uBi7uNfg81L.A.z4.WzLcIB@albercik> <20080707161620.GA30381@csn.ul.ie>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080707161620.GA30381-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Andy Whitcroft <apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org>, Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Lee Schermerhorn <lee.schermerhorn-VXdhtT5mjnY@public.gmane.org>

On Monday, 7 of July 2008, Mel Gorman wrote:
> On (06/07/08 13:45), Rafael J. Wysocki didst pronounce:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.25.  Please verify if it still should be listed.
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11025
> > Subject		: [problem] raid performance loss with 2.6.26-rc8 on 32-bit x86 (bisected)
> > Submitter	: Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> > Date		: 2008-07-01 1:57 (6 days old)
> > References	: http://marc.info/?l=linux-kernel&m=121487749429883&w=4
> > Handled-By	: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
> > 		  Andy Whitcroft <apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org>
> > 
> 
> Fixed by commit 494de90098784b8e2797598cefdd34188884ec2e and should be
> closed.

Already closed.

Thanks,
Rafael

From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11275] [BUG] hugetlb: sleeping function called from invalid context
Date: Tue, 12 Aug 2008 16:58:50 +0200
Message-ID: <200808121658.51411.rjw@sisk.pl>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik> <cX_-nNkxKaF.A.Fm.6CjnIB@albercik> <20080812144841.GA16724@brain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080812144841.GA16724@brain>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andy Whitcroft <apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Gerald Schaefer <gerald.schaefer-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>

On Tuesday, 12 of August 2008, Andy Whitcroft wrote:
> On Sun, Aug 10, 2008 at 12:43:51AM +0200, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.26.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11275
> > Subject		: [BUG] hugetlb: sleeping function called from invalid context
> > Submitter	: Gerald Schaefer <gerald.schaefer-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
> > Date		: 2008-08-06 14:43 (4 days old)
> > References	: http://marc.info/?l=linux-mm&m=121803401427843&w=4
> > Handled-By	: Andy Whitcroft <apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org>
> > Patch		: http://marc.info/?l=linux-kernel&m=121804949526359&w=4
> 
> This patch was superceeded by a newer version:
> 	http://marc.info/?l=linux-kernel&m=121819389913563&w=2
> 
> Currently this is in -mm, awaiting merge.

I have updated the Bugzilla entry with the current patch link.

Thanks,
Rafael

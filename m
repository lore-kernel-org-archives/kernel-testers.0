From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13113] tiobench read 50% regression with 2.6.30-rc1
Date: Fri, 17 Apr 2009 23:22:23 +0200
Message-ID: <200904172322.23638.rjw@sisk.pl>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera> <nY3-4PrO6XH.A.szH.Pw85JB@chimera> <20090417062951.GA4593@kernel.dk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090417062951.GA4593-tSWWG44O7X1aa/9Udqfwiw@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Zhang, Yanmin" <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>

On Friday 17 April 2009, Jens Axboe wrote:
> On Thu, Apr 16 2009, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.29.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13113
> > Subject		: tiobench read 50% regression with 2.6.30-rc1
> > Submitter	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
> > Date		: 2009-04-09 8:29 (8 days old)
> > References	: http://marc.info/?l=linux-kernel&m=123926576802992&w=4
> > Handled-By	: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
> > Patch		: http://marc.info/?l=linux-kernel&m=123971130800697&w=4
> 
> It's fixed by d6ceb25e8d8bccf826848c2621a50d02c0a7f4ae, which is already
> merged.

Thanks, closed.

Rafael

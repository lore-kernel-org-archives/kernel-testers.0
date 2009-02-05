From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12591] NULL pointer dereference in blk_queue_io_stat
Date: Thu, 5 Feb 2009 02:21:19 +0100
Message-ID: <200902050221.19693.rjw@sisk.pl>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <pWZw1SZjMCH.A.OKF.BvYiJB@chimera> <20090204125320.GH30821@kernel.dk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090204125320.GH30821-tSWWG44O7X1aa/9Udqfwiw@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Petr Vandrovec <vandrove-hnqZr3NxcozrBKCeMvbIDA@public.gmane.org>

On Wednesday 04 February 2009, Jens Axboe wrote:
> On Wed, Feb 04 2009, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.28.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12591
> > Subject		: NULL pointer dereference in blk_queue_io_stat
> > Submitter	: Petr Vandrovec <vandrove-hnqZr3NxcozrBKCeMvbIDA@public.gmane.org>
> > Date		: 2009-01-31 23:58 (5 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=bc58ba9468d94d62c56ab9b47173583ec140b165
> > Handled-By	: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
> 
> This one is already fixed in -git by commit
> fb8ec18c316d869271137c97320dbfd2def56569.

Thanks, closed.

Rafael

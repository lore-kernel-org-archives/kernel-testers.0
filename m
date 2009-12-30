From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14940] cfq-iosched: tiobench regression
Date: Wed, 30 Dec 2009 22:53:53 +0100
Message-ID: <200912302253.53285.rjw@sisk.pl>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <NJVdobuNFNK.A.1VG.EnhOLB@chimera> <20091230091818.GW4489@kernel.dk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091230091818.GW4489-tSWWG44O7X1aa/9Udqfwiw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Corrado Zoccolo <czoccolo-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Gui Jianfeng <guijianfeng-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>, Shaohua Li <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Wednesday 30 December 2009, Jens Axboe wrote:
> On Tue, Dec 29 2009, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.32.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14940
> > Subject		: cfq-iosched: tiobench regression
> > Submitter	: Shaohua Li <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> > Date		: 2009-12-24 0:55 (6 days old)
> > References	: http://marc.info/?l=linux-kernel&m=126161612401994&w=4
> 
> I don't think this should be labelled as a regression. It was already
> known that we'd have less throughput for the many clients cases, it was
> a trade off that was made to improve latencies.

OK, I've closed it as "documented".

Rafael

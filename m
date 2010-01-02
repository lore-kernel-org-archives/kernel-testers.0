From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14940] cfq-iosched: tiobench regression
Date: Sat, 2 Jan 2010 14:46:17 +0100
Message-ID: <201001021446.17801.rjw@sisk.pl>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <200912302253.53285.rjw@sisk.pl> <ea6602021001011757y21c6b859ocdbea233070fb31c@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <ea6602021001011757y21c6b859ocdbea233070fb31c-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Vikram Dhillon <dhillonv10-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Corrado Zoccolo <czoccolo-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Gui Jianfeng <guijianfeng-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>, Shaohua Li <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Saturday 02 January 2010, Vikram Dhillon wrote:
> On Wed, Dec 30, 2009 at 4:53 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > On Wednesday 30 December 2009, Jens Axboe wrote:
> >> On Tue, Dec 29 2009, Rafael J. Wysocki wrote:
> >> > This message has been generated automatically as a part of a report
> >> > of recent regressions.
> >> >
> >> > The following bug entry is on the current list of known regressions
> >> > from 2.6.32.  Please verify if it still should be listed and let me know
> >> > (either way).
> >> >
> >> >
> >> > Bug-Entry   : http://bugzilla.kernel.org/show_bug.cgi?id=14940
> >> > Subject             : cfq-iosched: tiobench regression
> >> > Submitter   : Shaohua Li <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> >> > Date                : 2009-12-24 0:55 (6 days old)
> >> > References  : http://marc.info/?l=linux-kernel&m=126161612401994&w=4
> >>
> >> I don't think this should be labelled as a regression. It was already
> >> known that we'd have less throughput for the many clients cases, it was
> >> a trade off that was made to improve latencies.
> >
> > OK, I've closed it as "documented".
> >
> > Rafael
> > --
> > To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> > the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at  http://www.tux.org/lkml/
> >
> 
> Thanks for this update, I guess we I can make like a separate category
> of documented regressions because this could be helpful to other
> distributions as they update to the newer kernels :D

That actually is easy to get.  ;-)

* Go to bug #14885, which is a meta-bug for post-2.6.32 regressions.
* Go to the dependency tree.
* Click on "Show resolved".
* Click on "view as bug list".
* Search for "DOCU".

Rafael

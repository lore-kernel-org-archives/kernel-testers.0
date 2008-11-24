From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #12031] DRM enabled kernel hangs hard on resume on x60
Date: Mon, 24 Nov 2008 09:50:31 -0800
Message-ID: <200811240950.31829.jbarnes@virtuousgeek.org>
References: <sBqd4qMeLzC.A.mgB.B7HKJB@chimera> <vyitTh0pP2N.A.ATC.i7HKJB@chimera> <200811241436.21457.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754017AbYKXRu6@vger.kernel.org>
In-Reply-To: <200811241436.21457.rjw@sisk.pl>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Jens Axboe <jens.axboe@oracle.com>, Dave Airlie <airlied@linux.ie>, Andrew Morton <akpm@linux-foundation.org>, Linus Torvalds <torvalds@linux-foundation.org>

On Monday, November 24, 2008 5:36 am Rafael J. Wysocki wrote:
> On Saturday, 22 of November 2008, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.27.  Please verify if it still should be listed and let me know
> > (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12031
> > Subject		: DRM enabled kernel hangs hard on resume on x60
> > Submitter	: Jens Axboe <jens.axboe@oracle.com>
> > Date		: 2008-11-12 18:42 (11 days old)
> > References	: http://marc.info/?l=linux-kernel&m=122651551216820&w=4
> > Handled-By	: Jesse Barnes <jbarnes@virtuousgeek.org>
>
> I can reproduce this problem on Toshiba Portege R500, with the same
> symptoms (please see the bug entry for details).
>
> Well, we have at lease three DRM-related regressions in 2.6.28-rc and no
> visible reaction from the developers/maintainers of the code in question.
> :-(

Sorry, I've been away for awhile.  I'll dig through the latest info on these 
regressions today.

-- 
Jesse Barnes, Intel Open Source Technology Center

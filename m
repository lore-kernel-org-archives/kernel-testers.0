From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12031] DRM enabled kernel hangs hard on resume on x60
Date: Mon, 24 Nov 2008 14:36:20 +0100
Message-ID: <200811241436.21457.rjw@sisk.pl>
References: <sBqd4qMeLzC.A.mgB.B7HKJB@chimera> <vyitTh0pP2N.A.ATC.i7HKJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <vyitTh0pP2N.A.ATC.i7HKJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Dave Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Saturday, 22 of November 2008, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12031
> Subject		: DRM enabled kernel hangs hard on resume on x60
> Submitter	: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
> Date		: 2008-11-12 18:42 (11 days old)
> References	: http://marc.info/?l=linux-kernel&m=122651551216820&w=4
> Handled-By	: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

I can reproduce this problem on Toshiba Portege R500, with the same symptoms
(please see the bug entry for details).

Well, we have at lease three DRM-related regressions in 2.6.28-rc and no
visible reaction from the developers/maintainers of the code in question. :-(

Thanks,
Rafael

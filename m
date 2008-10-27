From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11835] 2.6.27-git8: max1111_read_channel and corgi_ssp_ads7846_putget missing
Date: Mon, 27 Oct 2008 12:46:07 +0100
Message-ID: <200810271246.08373.rjw@sisk.pl>
References: <nw2Y6lk-0lG.A.VUB.RV5AJB@chimera> <t1C3RWL0r7M.A.xbC.tV5AJB@chimera> <20081027085640.GC30526@atrey.karlin.mff.cuni.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081027085640.GC30526-jyMamyUUXNJG4ohzP4jBZS1Fcj925eT/@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Monday, 27 of October 2008, Pavel Machek wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.27.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11835
> > Subject		: 2.6.27-git8: max1111_read_channel and corgi_ssp_ads7846_putget missing
> > Submitter	: Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>
> > Date		: 2008-10-20 12:10 (6 days old)
> > References	: http://marc.info/?l=linux-kernel&m=122450475101945&w=4
> 
> ...seems to be fixed in 2.6.28-rc1. Unfortunately, resulting kernel
> still will not boot :-(.

-rc2 should be better at that. :-)

Thanks,
Rafael

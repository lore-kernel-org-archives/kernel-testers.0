From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13770] System freeze on XFS filesystem recovery on an external disk
Date: Mon, 3 Aug 2009 22:55:54 +0200
Message-ID: <200908032255.54907.rjw@sisk.pl>
References: <Su1q3S6JjyO.A.jeB.hcgdKB@chimera> <iZB3Pj-uj3M.A.OpD.ZdgdKB@chimera> <alpine.DEB.2.01.0908031331190.5831@bogon.housecafe.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.01.0908031331190.5831-uKsf7x9sgtqQ/Pez2Lbyp4QuADTiUCJX@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jean-Luc Coulon <jean.luc.coulon-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Monday 03 August 2009, Christian Kujau wrote:
> On Sun, 2 Aug 2009 at 20:58, Rafael J. Wysocki wrote:
> > The following bug entry is on the current list of known regressions
> > from 2.6.30.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13770
> > Subject		: System freeze on XFS filesystem recovery on an external disk
> > Submitter	: Jean-Luc Coulon <jean.luc.coulon-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2009-07-14 10:31 (20 days old)
> 
> Jean-Luc points out in http://bugzilla.kernel.org/show_bug.cgi?id=13770#c4
> 
>   > I thought it was a regression but doing quite intensive tests, I had a
>   > problem with 2.6.30 as well and eventually the system was frozen.
> 
> So, maybe it can be dropped from the regression list?

For now I moved it to the list of regressions introduced between 2.6.29 and
2.6.30.

Thanks,
Rafael

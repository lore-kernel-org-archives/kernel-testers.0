From: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>
Subject: Re: [Bug #13770] System freeze on XFS filesystem recovery on an
 external disk
Date: Mon, 3 Aug 2009 13:34:11 -0700 (PDT)
Message-ID: <alpine.DEB.2.01.0908031331190.5831@bogon.housecafe.de>
References: <Su1q3S6JjyO.A.jeB.hcgdKB@chimera> <iZB3Pj-uj3M.A.OpD.ZdgdKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <iZB3Pj-uj3M.A.OpD.ZdgdKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jean-Luc Coulon <jean.luc.coulon-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, 2 Aug 2009 at 20:58, Rafael J. Wysocki wrote:
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me know
> (either way).
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13770
> Subject		: System freeze on XFS filesystem recovery on an external disk
> Submitter	: Jean-Luc Coulon <jean.luc.coulon-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-07-14 10:31 (20 days old)

Jean-Luc points out in http://bugzilla.kernel.org/show_bug.cgi?id=13770#c4

  > I thought it was a regression but doing quite intensive tests, I had a
  > problem with 2.6.30 as well and eventually the system was frozen.

So, maybe it can be dropped from the regression list?

@Jean-Luc: did you ask on the XFS list for comments on this?

Christian.
-- 
BOFH excuse #182:

endothermal recalibration

From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #15716] ata2: lost interrupt with kernel 2.6.34-rc1
Date: Wed,  7 Apr 2010 23:13:53 +0200 (CEST)
Message-ID: <JVS2s9dmTsP.A.g3F.4sPvLB@chimera>
References: <6Pphclm24fK.A.lSF.qsPvLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <6Pphclm24fK.A.lSF.qsPvLB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Benton <b3nton-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.33.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15716
Subject		: ata2: lost interrupt with kernel 2.6.34-rc1
Submitter	: Andrew Benton <b3nton-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2010-03-11 16:57 (28 days old)
Message-ID	: <4B992110.2090300-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=126832670609705&w=4
Handled-By	: Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>


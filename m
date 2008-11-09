From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11985] 2.6.28-rc3 truncates nfsd results
Date: Sun,  9 Nov 2008 18:59:15 +0100 (CET)
Message-ID: <wnN9HICUAgP.A.DUF.W4zFJB@chimera>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Doug Nazar <nazard-9NxrcwDPlTov2OKnPYDugg@public.gmane.org>, "J. Bruce Fields" <bfields-uC3wQj2KruNg9hUCZPvPmw@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.27.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11985
Subject		: 2.6.28-rc3 truncates nfsd results
Submitter	: Doug Nazar <nazard-9NxrcwDPlTov2OKnPYDugg@public.gmane.org>
Date		: 2008-11-04 18:27 (6 days old)
References	: http://marc.info/?l=linux-kernel&m=122582366509153&w=4
Handled-By	: Doug Nazar <nazard-9NxrcwDPlTov2OKnPYDugg@public.gmane.org>
		  J. Bruce Fields <bfields-uC3wQj2KruNg9hUCZPvPmw@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=122592648119790&w=4


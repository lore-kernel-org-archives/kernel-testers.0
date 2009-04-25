From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13136] possible circular locking dependency detected while suspending laptop to S3
Date: Sat, 25 Apr 2009 21:31:48 +0200 (CEST)
Message-ID: <Fg2zLW93smL.A.YMD.Id48JB@chimera>
References: <47KgT3nlbjD.A.lnB.jc48JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <47KgT3nlbjD.A.lnB.jc48JB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Christian Casteyde <casteyde.christian-GANU6spQydw@public.gmane.org>, Oliver Neukum <oliver-GvhC2dPhHPQdnm+yROfE0A@public.gmane.org>, "Oliver Neukum (none)" <oneukum-zBgqemgeNazSfrWR8XJAn9Ui29CwQgaX@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.29.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13136
Subject		: possible circular locking dependency detected while suspending laptop to S3
Submitter	: Christian Casteyde <casteyde.christian-GANU6spQydw@public.gmane.org>
Date		: 2009-04-18 11:17 (8 days old)
Handled-By	: Oliver Neukum <oliver-GvhC2dPhHPQdnm+yROfE0A@public.gmane.org>
Patch		: http://bugzilla.kernel.org/show_bug.cgi?id=13136#c1


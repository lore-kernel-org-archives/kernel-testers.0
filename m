From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12869] BUG when disabled ipv6 module is unloaded
Date: Sat, 14 Mar 2009 20:05:37 +0100 (CET)
Message-ID: <GCLaknAim2M.A.DjC.O4BvJB@chimera>
References: <MiincthRUSI.A.eKC.F4BvJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <MiincthRUSI.A.eKC.F4BvJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, John Dykstra <john.dykstra1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Thomas Backlund <tmb-4qZELD6Fgxhg9hUCZPvPmw@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.28.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12869
Subject		: BUG when disabled ipv6 module is unloaded
Submitter	: Thomas Backlund <tmb-4qZELD6Fgxhg9hUCZPvPmw@public.gmane.org>
Date		: 2009-03-10 20:15 (5 days old)
References	: http://marc.info/?l=linux-kernel&m=123671614621097&w=4
Handled-By	: John Dykstra <john.dykstra1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=123672746905127&w=4


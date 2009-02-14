From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12650] Strange load average and ksoftirqd behavior with 2.6.29-rc2-git1
Date: Sat, 14 Feb 2009 21:38:20 +0100 (CET)
Message-ID: <rjPbZ5GRJPO.A.1kE.ur0lJB@chimera>
References: <juADNmcceYF.A.mdD.Mr0lJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <juADNmcceYF.A.mdD.Mr0lJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Damien Wyart <damien.wyart-GANU6spQydw@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.28.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12650
Subject		: Strange load average and ksoftirqd behavior with 2.6.29-rc2-git1
Submitter	: Damien Wyart <damien.wyart-GANU6spQydw@public.gmane.org>
Date		: 2009-01-20 16:25 (26 days old)
References	: http://marc.info/?l=linux-kernel&m=123246937207675&w=2


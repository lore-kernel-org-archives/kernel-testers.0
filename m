From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13690] nodes_clear cause hugepage unusable on non-NUMA machine
Date: Tue,  7 Jul 2009 01:49:30 +0200 (CEST)
Message-ID: <dWkuWjWDsSB.A.VeE.Z0oUKB@chimera>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <35kKlbXMqWN.A.RXD.D0oUKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, alexs <alex.shi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.30.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13690
Subject		: nodes_clear cause hugepage unusable on non-NUMA machine
Submitter	: alexs <alex.shi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Date		: 2009-07-02 01:22 (5 days old)


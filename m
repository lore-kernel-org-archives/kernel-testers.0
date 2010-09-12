From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #17752] 2.6.36-rc3: inconsistent lock state (iprune_sem, shrink_icache_memory)
Date: Sun, 12 Sep 2010 20:14:29 +0200 (CEST)
Message-ID: <0c5PAlgnPrH.A.pAB.0rRjMB@chimera>
References: <EP3NUDNWMO.A.O0.rrRjMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <EP3NUDNWMO.A.O0.rrRjMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Stefan Richter <stefanr-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.35.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=17752
Subject		: 2.6.36-rc3: inconsistent lock state (iprune_sem, shrink_icache_memory)
Submitter	: Stefan Richter <stefanr-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>
Date		: 2010-09-01 6:37 (12 days old)
Message-ID	: <tkrat.ed8eda6bc8ffe64e-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=128332308528119&w=2


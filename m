From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11824] raw1394: possible deadlock if accessed by multithreaded app
Date: Sat, 25 Oct 2008 22:06:44 +0200 (CEST)
Message-ID: <t1C3RWL0r7M.A.B0C.7V5AJB@chimera>
References: <nw2Y6lk-0lG.A.VUB.RV5AJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <nw2Y6lk-0lG.A.VUB.RV5AJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Stefan Richter <stefan-r-bz-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.27.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11824
Subject		: raw1394: possible deadlock if accessed by multithreaded app
Submitter	: Stefan Richter <stefan-r-bz-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>
Date		: 2008-10-25 02:08 (1 days old)


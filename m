From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11330] int3: 0000 in tsc_read_refs when using powernow_k7
Date: Sat, 16 Aug 2008 21:02:54 +0200 (CEST)
Message-ID: <sNRO-BDDjQL.A.v-E.dazpIB@albercik>
References: <DLWXHEp37wB.A.duD.yZzpIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <DLWXHEp37wB.A.duD.yZzpIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alok Kataria <akataria-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org>, Alok N Kataria <akataria-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org>, Dan Hecht <dhecht-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Mikko Vinni <mmvinni-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.26.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11330
Subject		: int3: 0000 in tsc_read_refs when using powernow_k7
Submitter	: Mikko Vinni <mmvinni-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-14 04:21 (3 days old)
Patch		: http://bugzilla.kernel.org/show_bug.cgi?id=11330#c2


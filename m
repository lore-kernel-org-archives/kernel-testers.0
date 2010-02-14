From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #15192] netperf ~50% regression with 2.6.33-rc1, bisect to 1b9508f
Date: Mon, 15 Feb 2010 00:38:31 +0100 (CET)
Message-ID: <4un6Gst5rKB.A.KuH.KjIeLB@chimera>
References: <Z5cmiqDComP.A.gyF.OiIeLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Z5cmiqDComP.A.gyF.OiIeLB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15192
Subject		: netperf ~50% regression with 2.6.33-rc1, bisect to 1b9508f
Submitter	: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Date		: 2010-01-25 10:03 (21 days old)
First-Bad-Commit: http://git.kernel.org/git/linus/1b9508f6831e10d53256825de8904caa22d1ca2c
References	: http://marc.info/?l=linux-kernel&m=126441481427331&w=4
Handled-By	: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
		  Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>


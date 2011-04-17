From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #33252] [regression 2.6.39-rc2][bisected] "perf, x86: P4 PMU - Read proper MSR register to catch" and NMIs
Date: Sun, 17 Apr 2011 14:57:13 +0200 (CEST)
Message-ID: <_H4l51C1wXN.A.WiB.dGuqNB@chimera>
References: <OlQwC5HnRsN.A.ULB.OGuqNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <OlQwC5HnRsN.A.ULB.OGuqNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Cyrill Gorcunov <gorcunov-GEFAQzZX7r8dnm+yROfE0A@public.gmane.org>, Don Zickus <dzickus-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Shaun Ruffell <sruffell-mYLhy7Md7uHQT0dZR+AlfA@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.38.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=33252
Subject		: [regression 2.6.39-rc2][bisected] "perf, x86: P4 PMU - Read proper MSR register to catch" and NMIs
Submitter	: Shaun Ruffell <sruffell-mYLhy7Md7uHQT0dZR+AlfA@public.gmane.org>
Date		: 2011-04-06 22:30 (12 days old)
First-Bad-Commit: http://git.kernel.org/linus/242214f9c1eeaae40eca11e3b4d37bfce960a7cd
Message-ID	: <20110406223036.GA15721-mYLhy7Md7uHQT0dZR+AlfA@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=130212907032580&w=2
Handled-By	: Don Zickus <dzickus-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Patch		: http://cache.gmane.org//gmane/linux/kernel/1125621-001.bin


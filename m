From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12505] 2.6.29-rc1 Firefox crashing on page load
Date: Wed,  4 Feb 2009 11:24:00 +0100 (CET)
Message-ID: <pWZw1SZjMCH.A.nXG.evYiJB@chimera>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Hiroshi Shimamoto <h-shimamoto-ehU+Cx/zZe18UrSeD/g0lQ@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Justin Madru <jdm64-u1xxEuL7cY4AvxtiuMwx3w@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.28.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12505
Subject		: 2.6.29-rc1 Firefox crashing on page load
Submitter	: Justin Madru <jdm64-u1xxEuL7cY4AvxtiuMwx3w@public.gmane.org>
Date		: 2009-01-16 20:56 (20 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=4217458dafaa57d8e26a46f5d05ab8c53cf64191
References	: http://marc.info/?l=linux-kernel&m=123213941914274&w=4
Handled-By	: Justin P. Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


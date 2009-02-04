From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12427] cpumask change causes sparc build bustage
Date: Wed,  4 Feb 2009 11:23:56 +0100 (CET)
Message-ID: <pWZw1SZjMCH.A.64H.HwYiJB@chimera>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.28.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12427
Subject		: cpumask change causes sparc build bustage
Submitter	: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Date		: 2009-01-11 8:31 (25 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=588235bb53f2c215f0d4b08fd30b461fedc3338e
References	: http://marc.info/?l=linux-kernel&m=123166268013838&w=4
Handled-By	: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=123167571525706&w=4


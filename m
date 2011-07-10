From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #38732] Linux 3.0-rc5 doesnt boot and hangs at rcu_sched_state ()
Date: Sun, 10 Jul 2011 12:38:24 +0200 (CEST)
Message-ID: <XNkIyhV6dgF.A._cG.6BYGOB@chimera>
References: <Y7LyOsOBwFM.A.kJG.kBYGOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Y7LyOsOBwFM.A.kJG.kBYGOB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, RKK <kulkarni.ravi4-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.39.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=38732
Subject		: Linux 3.0-rc5 doesnt boot and hangs at rcu_sched_state ()
Submitter	: RKK <kulkarni.ravi4-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2011-06-29 13:38 (12 days old)
Message-ID	: <BANLkTikW6Xk8UMsOHLCnLn7STRzy8RaiJA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=130935402722869&w=2


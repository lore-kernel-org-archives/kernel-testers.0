From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #27022] [REPORT] BUG: spinlock recursion on CPU#0, init/1
Date: Sun,  6 Mar 2011 13:08:15 +0100 (CET)
Message-ID: <GTlFTeOGjrB.A.7mF.Ss3cNB@chimera>
References: <t0W8Ea1iKeB.A.6xD.Lp3cNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <t0W8Ea1iKeB.A.6xD.Lp3cNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Santosh Shilimkar <santosh.shilimkar-l0cyMroinI0@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.37.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=27022
Subject		: [REPORT] BUG: spinlock recursion on CPU#0, init/1
Submitter	: Santosh Shilimkar <santosh.shilimkar-l0cyMroinI0@public.gmane.org>
Date		: 2011-01-10 15:33 (56 days old)
Message-ID	: <a7a9bdaa5936630925fb7ffd1a1795b1-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=129467294808655&w=2


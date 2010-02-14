From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #15304] SMT scheduler regression in find_busiest_queue()
Date: Mon, 15 Feb 2010 00:52:52 +0100 (CET)
Message-ID: <Xv2rBFCTXTH.A.cdB.NyIeLB@chimera>
References: <fQEllunEdO.A.-LB.HyIeLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <fQEllunEdO.A.-LB.HyIeLB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Suresh Siddha <suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.31 and 2.6.32.

The following bug entry is on the current list of known regressions
introduced between 2.6.31 and 2.6.32.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15304
Subject		: SMT scheduler regression in find_busiest_queue()
Submitter	: Suresh Siddha <suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Date		: 2010-02-13 1:14 (2 days old)
First-Bad-Commit: http://git.kernel.org/git/linus/bdb94aa5dbd8b55e75f5a50b61312fe589e2c2d1
Message-ID	: <1266023662.2808.118.camel-H4kgHbQyNB/mO6KZMuUCQVaTQe2KTcn/@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=126602374511831&w=4
Handled-By	: Suresh Siddha <suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Patch		: http://patchwork.kernel.org/patch/79039/


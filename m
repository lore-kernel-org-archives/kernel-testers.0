From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16199] 2.6.35-rc2-git1 - include/linux/cgroup.h:534 invoked rcu_dereference_check() without protection!
Date: Mon, 21 Jun 2010 00:17:40 +0200 (CEST)
Message-ID: <W8JfMs9cZw.A.sSF.DNpHMB@chimera>
References: <lc60d4toGTL.A.QzD._LpHMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <lc60d4toGTL.A.QzD._LpHMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Miles Lane <miles.lane-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.34.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16199
Subject		: 2.6.35-rc2-git1 - include/linux/cgroup.h:534 invoked rcu_dereference_check() without protection!
Submitter	: Miles Lane <miles.lane-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2010-06-07 18:14 (14 days old)
Message-ID	: <AANLkTin2pPqOUx--9fIX3BH3e-cU6oCRufijcx_4ozx5-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=127593447812015&w=2


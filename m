From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12261] kernel panics with net_rx_action on kernels above 2.6.26
Date: Sat, 20 Dec 2008 23:16:15 +0100 (CET)
Message-ID: <CMMRhk39O-L.A.tMC.TkYTJB@chimera>
References: <_EB9bLpq_z.A.hAC.NkYTJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <_EB9bLpq_z.A.hAC.NkYTJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexander Huemer <alexander.huemer-CeK7gDkSoXheoWH0uzbU5w@public.gmane.org>, Jarek Poplawski <jarkao2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.26 and 2.6.27.

The following bug entry is on the current list of known regressions
introduced between 2.6.26 and 2.6.27.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12261
Subject		: kernel panics with net_rx_action on kernels above 2.6.26
Submitter	: Alexander Huemer <alexander.huemer-CeK7gDkSoXheoWH0uzbU5w@public.gmane.org>
Date		: 2008-12-13 18:43 (8 days old)
References	: http://marc.info/?l=linux-kernel&m=122919424932016&w=4
Handled-By	: Jarek Poplawski <jarkao2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Patch		: http://marc.info/?l=linux-net&m=122934825227768&w=4


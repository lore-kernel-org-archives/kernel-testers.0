From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #40262] PROBLEM: I/O storm from hell on kernel 3.0.0 when touch swap (swapfile or partition)
Date: Sun, 28 Aug 2011 21:01:14 +0200 (CEST)
Message-ID: <gUVi6eNP8RE.A.ibG.qepWOB@chimera>
References: <Sm7qbRR0zn.A.yAG.LepWOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Sm7qbRR0zn.A.yAG.LepWOB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, g0re <g0re-ifvz4xmYPRU@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.39 and 3.0.

The following bug entry is on the current list of known regressions
introduced between 2.6.39 and 3.0.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=40262
Subject		: PROBLEM: I/O storm from hell on kernel 3.0.0 when touch swap (swapfile or partition)
Submitter	: g0re <g0re-ifvz4xmYPRU@public.gmane.org>
Date		: 2011-07-28 12:40 (32 days old)


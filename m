From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16265] Why is kslowd accumulating so much CPU time?
Date: Mon, 30 Aug 2010 01:13:28 +0200 (CEST)
Message-ID: <ByD_7B96czP.A.bnD.EhueMB@chimera>
References: <c1_O4wHrlB.A.63.mbueMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <c1_O4wHrlB.A.63.mbueMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Theodore Ts'o <tytso-3s7WtUTddSA@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.34 and 2.6.35.

The following bug entry is on the current list of known regressions
introduced between 2.6.34 and 2.6.35.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16265
Subject		: Why is kslowd accumulating so much CPU time?
Submitter	: Theodore Ts'o <tytso-3s7WtUTddSA@public.gmane.org>
Date		: 2010-06-09 18:36 (82 days old)
First-Bad-Commit: http://git.kernel.org/linus/fbf81762e385d3d45acad057b654d56972acf58c
Message-ID	: <E1OMQ88-0002a1-Gb-UK71uKi2zisAobODsErMgNi2O/JbrIOy@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=127610857819033&w=4


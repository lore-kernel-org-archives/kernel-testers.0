From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12409] NULL pointer dereference at get_stats()
Date: Mon, 23 Feb 2009 23:03:02 +0100 (CET)
Message-ID: <LLno3yT_fnC.A.jjH.nzzoJB@chimera>
References: <HFSEX4uppGO.A.JSG.2yzoJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <HFSEX4uppGO.A.JSG.2yzoJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Frederik Deweerdt <frederik.deweerdt-kjvbsxwSFqI@public.gmane.org>, Tetsuo Handa <penguin-kernel-1yMVhJb1mP/7nzcFbJAaVXf5DAMn2ifp@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.27 and 2.6.28.

The following bug entry is on the current list of known regressions
introduced between 2.6.27 and 2.6.28.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12409
Subject		: NULL pointer dereference at get_stats()
Submitter	: Tetsuo Handa <penguin-kernel-1yMVhJb1mP/7nzcFbJAaVXf5DAMn2ifp@public.gmane.org>
Date		: 2008-12-30 12:53 (56 days old)
References	: http://marc.info/?l=linux-kernel&m=123064167008695&w=4
Handled-By	: Frederik Deweerdt <frederik.deweerdt-kjvbsxwSFqI@public.gmane.org>


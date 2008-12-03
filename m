From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11970] gettimeofday return a old time in mmbench
Date: Wed,  3 Dec 2008 22:57:59 +0100 (CET)
Message-ID: <bfPM5B8Tx2B.A.Qi.7pxNJB@chimera>
References: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, alexs <alex.shi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Yanmin Zhang <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.27.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11970
Subject		: gettimeofday return a old time in mmbench
Submitter	: alexs <alex.shi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Date		: 2008-11-06 23:57 (28 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=99ebcf8285df28f32fd2d1c19a7166e70f00309c
Handled-By	: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
		  Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
		  Yanmin Zhang <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>


From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11903] regression: vmalloc easily fail
Date: Sun, 16 Nov 2008 17:35:14 +0100 (CET)
Message-ID: <Q7OAnAv0V3D.A.KiG.gBGIJB@chimera>
References: <VwdsQNEjR_C.A.CiD.9_FIJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <VwdsQNEjR_C.A.CiD.9_FIJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Glauber Costa <glommer-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.27.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11903
Subject		: regression: vmalloc easily fail
Submitter	: Glauber Costa <glommer-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Date		: 2008-10-28 20:59 (20 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=db64fe02258f1507e13fe5212a989922323685ce
References	: http://marc.info/?l=linux-kernel&m=122522755530998&w=4
Handled-By	: Glauber Costa <glommer-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
		  Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>
		  Glauber Costa <glommer-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=122609055221549&w=4


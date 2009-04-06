From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12961] Kernel panics in early boot: IO-APIC + timer doesn't work
Date: Mon,  6 Apr 2009 21:05:41 +0200 (CEST)
Message-ID: <AsKNxFx2juN.A.PxH.FGn2JB@chimera>
References: <n4io5wq70ZO.A.gzG.rFn2JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <n4io5wq70ZO.A.gzG.rFn2JB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andreas Herrmann <andreas.herrmann3-5C7GfCeVMHo@public.gmane.org>, Daniel Vetter <daniel-/w4YWyX8dFk@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.28.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12961
Subject		: Kernel panics in early boot: IO-APIC + timer doesn't work
Submitter	: Daniel Vetter <daniel-/w4YWyX8dFk@public.gmane.org>
Date		: 2009-03-28 19:00 (10 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=8d6f0c8214928f7c5083dd54ecb69c5d615b516e


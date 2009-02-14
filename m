From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12645] DMI low-memory-protect quirk causes resume hang on Samsung NC10
Date: Sat, 14 Feb 2009 21:50:26 +0100 (CET)
Message-ID: <ROx6X68CGJG.A.MMH.c40lJB@chimera>
References: <sTyoMUwdm9B.A.QCH.U40lJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <sTyoMUwdm9B.A.QCH.U40lJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Patrick Walton <pcwalton-764C0pRuGfqVc3sceRu5cw@public.gmane.org>, Philipp Kohlbecher <xt28-Mmb7MZpHnFY@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.27 and 2.6.28.

The following bug entry is on the current list of known regressions
introduced between 2.6.27 and 2.6.28.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12645
Subject		: DMI low-memory-protect quirk causes resume hang on Samsung NC10
Submitter	: Patrick Walton <pcwalton-764C0pRuGfqVc3sceRu5cw@public.gmane.org>
Date		: 2009-02-06 18:35 (9 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=0af40a4b1050c050e62eb1dc30b82d5ab22bf221


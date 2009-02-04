From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12538] xfs_fsr fails on 2.6.29-rc kernels
Date: Wed,  4 Feb 2009 11:24:02 +0100 (CET)
Message-ID: <pWZw1SZjMCH.A.EYF.IvYiJB@chimera>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Sandeen <sandeen-+82itfer+wXR7s880joybQ@public.gmane.org>, Lachlan McIlroy <lachlan-sJ/iWh9BUns@public.gmane.org>, Paul Martin <pm-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>, sandeen-+82itfer+wXR7s880joybQ@public.gmane.org

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.28.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12538
Subject		: xfs_fsr fails on 2.6.29-rc kernels
Submitter	: Paul Martin <pm-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>
Date		: 2009-01-25 13:02 (11 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=743bb4650da9e2595d6cedd01c680b5b9398c74a
Handled-By	: Eric Sandeen <sandeen-+82itfer+wXR7s880joybQ@public.gmane.org>
Patch		: http://bugzilla.kernel.org/attachment.cgi?id=19986&action=view


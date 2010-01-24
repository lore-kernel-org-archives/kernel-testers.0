From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #15133] Wake on LAN doesn't work in sky2
Date: Sun, 24 Jan 2010 23:04:41 +0100 (CET)
Message-ID: <hE3x9c-4KZM.A.I_E.6JMXLB@chimera>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <md-TZL3UUvL.A.FiE.xJMXLB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, stephen hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>, Tino Keitel <tino.keitel-rAwCM5oiXHA@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15133
Subject		: Wake on LAN doesn't work in sky2
Submitter	: Tino Keitel <tino.keitel-rAwCM5oiXHA@public.gmane.org>
Date		: 2010-01-15 9:10 (10 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=166a0fd4c788ec7f10ca8194ec6d526afa12db75
References	: http://marc.info/?l=linux-kernel&m=126354704815848&w=4
Handled-By	: Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>


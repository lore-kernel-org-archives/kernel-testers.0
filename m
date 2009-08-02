From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13872] cpufreq bug (null pointer dereference)
Date: Sun,  2 Aug 2009 20:58:32 +0200 (CEST)
Message-ID: <iZB3Pj-uj3M.A.jCC.ucgdKB@chimera>
References: <Su1q3S6JjyO.A.jeB.hcgdKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Su1q3S6JjyO.A.jeB.hcgdKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Christophe Lermytte <christophe.lermytte-L+G57L1VLRbR7s880joybQ@public.gmane.org>, Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.30.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13872
Subject		: cpufreq bug (null pointer dereference)
Submitter	: Christophe Lermytte <christophe.lermytte-L+G57L1VLRbR7s880joybQ@public.gmane.org>
Date		: 2009-07-21 22:07 (13 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=ee88415caf736b89500f16e0a545614541a45005
References	: http://marc.info/?l=linux-kernel&m=124820689011112&w=4
Handled-By	: Pallipadi, Venkatesh <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Patch		: http://patchwork.kernel.org/patch/38229/


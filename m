From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13293] Kernel BUG under network load with gianfar
Date: Sat, 16 May 2009 21:20:42 +0200 (CEST)
Message-ID: <385Pu-agh7M.A.F_.wYzDKB@chimera>
References: <_AjETDMbIoL.A.DcH.RYzDKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <_AjETDMbIoL.A.DcH.RYzDKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andy Fleming <afleming-KZfg59tc24xl57MIdRCFDg@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Michael Guntsche <mike-Z92qn3yYq0hWk0Htik3J/w@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.29.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13293
Subject		: Kernel BUG under network load with gianfar
Submitter	: Michael Guntsche <mike-Z92qn3yYq0hWk0Htik3J/w@public.gmane.org>
Date		: 2009-05-03 13:36 (14 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=0fd56bb5be6455d0d42241e65aed057244665e5e
References	: http://marc.info/?l=linux-kernel&m=124135824600924&w=4


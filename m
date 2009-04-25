From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13111] Linux 2.6.30-rc1 tg3 endian issues with MAC addresses on BCM5701
Date: Sat, 25 Apr 2009 21:31:45 +0200 (CEST)
Message-ID: <Fg2zLW93smL.A.ScE.fd48JB@chimera>
References: <47KgT3nlbjD.A.lnB.jc48JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <47KgT3nlbjD.A.lnB.jc48JB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Benjamin Li <benli-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Matt Carlson <mcarlson-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, Michael Chan <mchan-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, Robin Holt <holt-sJ/iWh9BUns@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.29.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13111
Subject		: Linux 2.6.30-rc1 tg3 endian issues with MAC addresses on BCM5701
Submitter	: Robin Holt <holt-sJ/iWh9BUns@public.gmane.org>
Date		: 2009-04-08 7:12 (18 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=e4f341103e4a2b35f56a0f89802f1b1448e8d04b
References	: http://marc.info/?l=linux-kernel&m=123917477312823&w=4
		  http://lkml.org/lkml/2009/4/16/471
Handled-By	: Matt Carlson <mcarlson-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>


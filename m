From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12177] [memcg BUG ?] failed to boot on IA64 with CONFIG_DISCONTIGMEM=y
Date: Sun,  7 Dec 2008 21:32:57 +0100 (CET)
Message-ID: <07Xes05z25M.A.b-E.SsEPJB@chimera>
References: <6VnlupFpCsN.A.2rE.MsEPJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <6VnlupFpCsN.A.2rE.MsEPJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Li Zefan <lizf-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.27.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12177
Subject		: [memcg BUG ?] failed to boot on IA64 with CONFIG_DISCONTIGMEM=y
Submitter	: Li Zefan <lizf-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>
Date		: 2008-12-05 3:09 (3 days old)
References	: http://marc.info/?l=linux-kernel&m=122844668532752&w=4
Handled-By	: KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=122844757701505&w=4


From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11699] 2.6.27-rc-7: BUG: scheduling while atomic, c1e_idle+0x98/0xe0
Date: Sat,  4 Oct 2008 19:32:57 +0200 (CEST)
Message-ID: <yWwteD.A.pdG.P475IB@wind>
References: <0pOgGB.A.uLG.E475IB@wind>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <0pOgGB.A.uLG.E475IB@wind>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Prakash Punnoor <prakash-HU31jPUvoIKELgA04lAiVw@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.26.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11699
Subject		: 2.6.27-rc-7: BUG: scheduling while atomic, c1e_idle+0x98/0xe0
Submitter	: Prakash Punnoor <prakash-HU31jPUvoIKELgA04lAiVw@public.gmane.org>
Date		: 2008-09-28 17:45 (7 days old)
References	: http://marc.info/?l=linux-kernel&m=122262403415629&w=4
Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>


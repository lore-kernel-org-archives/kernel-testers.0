From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12518] BUG: using smp_processor_id() in preemptible [00000000] code:  dellWirelessCtl/...
Date: Wed,  4 Feb 2009 11:24:02 +0100 (CET)
Message-ID: <pWZw1SZjMCH.A.NpF.OvYiJB@chimera>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alex Riesen <fork0-iA+eEnwkJgzk1uMJSBkQmQ@public.gmane.org>, Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.28.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12518
Subject		: BUG: using smp_processor_id() in preemptible [00000000] code:  dellWirelessCtl/...
Submitter	: Alex Riesen <fork0-iA+eEnwkJgzk1uMJSBkQmQ@public.gmane.org>
Date		: 2009-01-21 14:21 (15 days old)


From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12041] 2.6.28-rc4 mem_cgroup_charge_common panic
Date: Sun, 16 Nov 2008 17:35:22 +0100 (CET)
Message-ID: <Q7OAnAv0V3D.A.AEE.HAGIJB@chimera>
References: <VwdsQNEjR_C.A.CiD.9_FIJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <VwdsQNEjR_C.A.CiD.9_FIJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Badari Pulavarty <pbadari-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.27.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12041
Subject		: 2.6.28-rc4 mem_cgroup_charge_common panic
Submitter	: Badari Pulavarty <pbadari-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>
Date		: 2008-11-10 21:43 (7 days old)
References	: http://marc.info/?l=linux-kernel&m=122635343008147&w=4
Handled-By	: KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>


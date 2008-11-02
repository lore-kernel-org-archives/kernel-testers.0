From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11849] default IRQ affinity change in v2.6.27 (breaking several SMP PPC based systems)
Date: Sun,  2 Nov 2008 17:07:01 +0100 (CET)
Message-ID: <wOAXuecskPD.A.O0G.skeDJB@chimera>
References: <603i_OdVYPF.A.7_D.mjeDJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <603i_OdVYPF.A.7_D.mjeDJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Chris Snook <csnook-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Kumar Gala <galak-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>, Scott Wood <scottwood-KZfg59tc24xl57MIdRCFDg@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.27.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11849
Subject		: default IRQ affinity change in v2.6.27 (breaking several SMP PPC based systems)
Submitter	: Kumar Gala <galak-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Date		: 2008-10-24 12:45 (10 days old)
References	: http://marc.info/?l=linux-kernel&m=122485245924125&w=4
Handled-By	: Chris Snook <csnook-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
		  Scott Wood <scottwood-KZfg59tc24xl57MIdRCFDg@public.gmane.org>


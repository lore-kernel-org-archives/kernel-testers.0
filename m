From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13812] Ooops on uplug
Date: Sun,  2 Aug 2009 20:58:27 +0200 (CEST)
Message-ID: <iZB3Pj-uj3M.A.thD.TdgdKB@chimera>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Daniel Mack <daniel-rDUAYElUppE@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.30.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13812
Subject		: Ooops on uplug
Submitter	: Daniel Mack <daniel-rDUAYElUppE@public.gmane.org>
Date		: 2009-07-20 17:51 (14 days old)
References	: http://marc.info/?l=linux-kernel&m=124811234302786&w=4
Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
		  Alan Cox <alan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>


From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12082] IRQ and MSI allocations broken without sparse irq
Date: Sat, 22 Nov 2008 21:28:20 +0100 (CET)
Message-ID: <vyitTh0pP2N.A.BoB.H7HKJB@chimera>
References: <sBqd4qMeLzC.A.mgB.B7HKJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <sBqd4qMeLzC.A.mgB.B7HKJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jesper Dangaard Brouer <hawk-dAYI7NvHqcQ@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.27.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12082
Subject		: IRQ and MSI allocations broken without sparse irq
Submitter	: Jesper Dangaard Brouer <hawk-dAYI7NvHqcQ@public.gmane.org>
Date		: 2008-11-20 19:48 (3 days old)
References	: http://marc.info/?l=linux-kernel&m=122721060501073&w=4
Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=122722773824802&w=4


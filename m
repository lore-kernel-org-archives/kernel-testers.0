From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #10906] repeatable slab corruption with LTP msgctl08
Date: Sun, 13 Jul 2008 20:00:46 +0200 (CEST)
Message-ID: <c6ZRbn0adb.A.Oy.lIleIB@albercik>
References: <Y1jK9GMA8kJ.A.qOH.7GleIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Y1jK9GMA8kJ.A.qOH.7GleIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Christoph Lameter <clameter-sJ/iWh9BUns@public.gmane.org>, Manfred Spraul <manfred-nhLOkwUX5cPe2c5cEj3t2g@public.gmane.org>, Pekka J Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.25.  Please verify if it still should be listed.


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=10906
Subject		: repeatable slab corruption with LTP msgctl08
Submitter	: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Date		: 2008-06-12 5:13 (32 days old)
References	: http://marc.info/?l=linux-kernel&m=121324775927704&w=4
Handled-By	: Pekka J Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
		  Christoph Lameter <clameter-sJ/iWh9BUns@public.gmane.org>
		  Manfred Spraul <manfred-nhLOkwUX5cPe2c5cEj3t2g@public.gmane.org>
		  Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>


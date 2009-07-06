From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13643] Touchpad lost synchronization after resume from suspend to RAM
Date: Tue,  7 Jul 2009 01:49:28 +0200 (CEST)
Message-ID: <dWkuWjWDsSB.A.pqF.x0oUKB@chimera>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <35kKlbXMqWN.A.RXD.D0oUKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>, Cijoml Cijomlovic Cijomlov <cijoml-VIXq6x/3rUk@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Thadeu Lima de Souza Cascardo <cascardo-DmMZpsCg3uxeGPcbtGPokg@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.30.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13643
Subject		: Touchpad lost synchronization after resume from suspend to RAM
Submitter	: Cijoml Cijomlovic Cijomlov <cijoml-VIXq6x/3rUk@public.gmane.org>
Date		: 2009-06-28 10:42 (9 days old)
References	: http://lkml.org/lkml/2009/6/23/365
		  2.6.30-rc1: touchpad disabled
		  http://lkml.org/lkml/2009/6/25/256
Handled-By	: Thadeu Lima de Souza Cascardo <cascardo-DmMZpsCg3uxeGPcbtGPokg@public.gmane.org>
Patch		: http://patchwork.kernel.org/patch/34075/


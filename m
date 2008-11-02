From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11852] v2.6.28-rc1: Regression in ext3/jbd
Date: Sun,  2 Nov 2008 17:07:01 +0100 (CET)
Message-ID: <wOAXuecskPD.A.JtG.pkeDJB@chimera>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Hidehiro Kawai <hidehiro.kawai.ez-FCd8Q96Dh0JBDgjK7y7TUQ@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.27.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11852
Subject		: v2.6.28-rc1: Regression in ext3/jbd
Submitter	: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-10-25 11:22 (9 days old)
References	: http://marc.info/?l=linux-kernel&m=122493379905812&w=4
Handled-By	: Hidehiro Kawai <hidehiro.kawai.ez-FCd8Q96Dh0JBDgjK7y7TUQ@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=122510792614388&w=4
		  http://marc.info/?l=linux-kernel&m=122510828015045&w=4


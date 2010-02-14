From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #14998] Caught 32-bit read from uninitialized memory in acpi_system_read_event -- 2.6.31 regression
Date: Mon, 15 Feb 2010 00:52:47 +0100 (CET)
Message-ID: <Xv2rBFCTXTH.A.JuC.FzIeLB@chimera>
References: <fQEllunEdO.A.-LB.HyIeLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <fQEllunEdO.A.-LB.HyIeLB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, al <al-Hw8kHWpJyTIyNUjFW1aW+odd74u8MsAO@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Christian Casteyde <casteyde.christian-GANU6spQydw@public.gmane.org>, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.31 and 2.6.32.

The following bug entry is on the current list of known regressions
introduced between 2.6.31 and 2.6.32.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14998
Subject		: Caught 32-bit read from uninitialized memory in acpi_system_read_event -- 2.6.31 regression
Submitter	: Christian Casteyde <casteyde.christian-GANU6spQydw@public.gmane.org>
Date		: 2010-01-06 21:40 (40 days old)
First-Bad-Commit: http://git.kernel.org/git/linus/eca6f534e61919b28fb21aafbd1c2983deae75be


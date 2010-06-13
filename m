From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16147] ksoftirq hogs the CPU
Date: Sun, 13 Jun 2010 16:49:05 +0200 (CEST)
Message-ID: <YPGdyfWGvNK.A.nEG.i5OFMB@chimera>
References: <g77CuMUl7QI.A.5wF.V5OFMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <g77CuMUl7QI.A.5wF.V5OFMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Corey Minyard <cminyard-Igf4POYTYCDQT0dZR+AlfA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Martin Wilck <martin.wilck-RJz4owOZxyXQFUHtdCDX3A@public.gmane.org>, Thomas Jarosch <thomas.jarosch-XXsH3GEs1jrby3iVrkZq2A@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.33 and 2.6.34.

The following bug entry is on the current list of known regressions
introduced between 2.6.33 and 2.6.34.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16147
Subject		: ksoftirq hogs the CPU
Submitter	: Thomas Jarosch <thomas.jarosch-XXsH3GEs1jrby3iVrkZq2A@public.gmane.org>
Date		: 2010-06-07 15:17 (7 days old)
First-Bad-Commit: http://git.kernel.org/linus/ae74e823cb7d4cd476f623fce9a38f625f6c09a8
Handled-By	: Martin Wilck <martin.wilck-RJz4owOZxyXQFUHtdCDX3A@public.gmane.org>
Patch		: https://bugzilla.kernel.org/attachment.cgi?id=26732


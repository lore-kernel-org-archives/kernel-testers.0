From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #15713] hackbench regression due to commit 9dfc6e68bfe6e
Date: Sun, 13 Jun 2010 16:48:57 +0200 (CEST)
Message-ID: <YPGdyfWGvNK.A.Y9.U8OFMB@chimera>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Alex Shi <alex.shi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.33 and 2.6.34.

The following bug entry is on the current list of known regressions
introduced between 2.6.33 and 2.6.34.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15713
Subject		: hackbench regression due to commit 9dfc6e68bfe6e
Submitter	: Alex Shi <alex.shi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Date		: 2010-03-25 8:40 (81 days old)
First-Bad-Commit: http://git.kernel.org/linus/9dfc6e68bfe6ee452efb1a4e9ca26a9007f2b864
Message-ID	: <1269506457.4513.141.camel-c8rhgrCDLIED0+JXs3kMbRL4W9x8LtSr@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=126950632920682&w=4
Handled-By	: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
		  Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>


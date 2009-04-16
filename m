From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13120] BUG: using rootfstype=ext4 causes oops
Date: Thu, 16 Apr 2009 23:45:07 +0200 (CEST)
Message-ID: <nY3-4PrO6XH.A.zGH.Fw85JB@chimera>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Price <andy-QvJ1taJFSUQwEI6hhNFqhFpr/1R2p/CL@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.29.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13120
Subject		: BUG: using rootfstype=ext4 causes oops
Submitter	: Andrew Price <andy-QvJ1taJFSUQwEI6hhNFqhFpr/1R2p/CL@public.gmane.org>
Date		: 2009-04-15 20:59 (2 days old)
References	: http://marc.info/?l=linux-kernel&m=123982932807371&w=4
Handled-By	: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=123991090816794&w=4


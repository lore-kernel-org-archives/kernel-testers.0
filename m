From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12422] 2.6.28-git can't resume from str
Date: Mon, 19 Jan 2009 22:32:12 +0100 (CET)
Message-ID: <2QN7KFic7LG.A.pF.59QdJB@chimera>
References: <0GOi9pntEoL.A.iGF.B9QdJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <0GOi9pntEoL.A.iGF.B9QdJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Daniel Drake <dsd-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>, Greg Kroah-Hartman <gregkh-l3A5Bk7waGM@public.gmane.org>, Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Phil Dibowitz <phil-LijsOF1cAEA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.28.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12422
Subject		: 2.6.28-git can't resume from str
Submitter	: Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2009-01-10 1:39 (10 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=a0d4922da2e4ccb0973095d8d29f36f6b1b5f703
References	: http://marc.info/?l=linux-kernel&m=123155157909282&w=4
		  http://marc.info/?l=linux-kernel&m=123167815028388&w=4
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
Patch		: http://lkml.org/lkml/2009/1/13/144


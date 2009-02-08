From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12606] fb_mmap: circular locking dependency on hibernation
Date: Sun,  8 Feb 2009 20:21:43 +0100 (CET)
Message-ID: <sWhNs83kKPE.A.bKG.120jJB@chimera>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <AIghyjFgMFP.A.uZD._10jJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrea Righi <righi.andrea-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrey Borzenkov <arvidjaar-JGs/UdohzUI@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.28.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12606
Subject		: fb_mmap: circular locking dependency on hibernation
Submitter	: Andrey Borzenkov <arvidjaar-JGs/UdohzUI@public.gmane.org>
Date		: 2009-01-27 18:37 (13 days old)
References	: http://marc.info/?l=linux-kernel&m=123308162731408&w=4
Handled-By	: Andrea Righi <righi.andrea-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=123365581406194&w=2


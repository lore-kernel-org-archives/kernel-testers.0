From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12664] viafb triggers BUG at mm/vmalloc.c:294
Date: Sun,  8 Feb 2009 20:21:49 +0100 (CET)
Message-ID: <sWhNs83kKPE.A.7EE.O20jJB@chimera>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, wixor <wixorpeek-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.28.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12664
Subject		: viafb triggers BUG at mm/vmalloc.c:294
Submitter	: wixor <wixorpeek-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2009-02-07 19:44 (2 days old)
References	: http://marc.info/?l=linux-kernel&m=123403591109515&w=4
Handled-By	: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11277] BUG kmalloc-64: Object already free
Date: Sun, 10 Aug 2008 00:43:52 +0200 (CEST)
Message-ID: <cX_-nNkxKaF.A.TX.0CjnIB@albercik>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Parag Warudkar <parag.warudkar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.26.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11277
Subject		: BUG kmalloc-64: Object already free
Submitter	: Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-06 21:21 (4 days old)
References	: http://marc.info/?l=linux-kernel&m=121805862910241&w=4
Handled-By	: Parag Warudkar <parag.warudkar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=121814402609514&w=4


From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13016] consistent oops from request_key in 2.6.29
Date: Mon,  6 Apr 2009 21:05:44 +0200 (CEST)
Message-ID: <AsKNxFx2juN.A.YdH.3Fn2JB@chimera>
References: <n4io5wq70ZO.A.gzG.rFn2JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <n4io5wq70ZO.A.gzG.rFn2JB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Howells <dhowells-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Jeff Layton <jlayton-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.28.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13016
Subject		: consistent oops from request_key in 2.6.29
Submitter	: Jeff Layton <jlayton-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Date		: 2009-03-31 12:45 (7 days old)
References	: http://marc.info/?l=linux-kernel&m=123850360107293&w=4
Handled-By	: David Howells <dhowells-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=123852150806814&w=4


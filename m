From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13522] BUG: scheduling while atomic
Date: Mon, 29 Jun 2009 01:51:09 +0200 (CEST)
Message-ID: <6JJ2m5kyucK.A.D2D.VJASKB@chimera>
References: <ij4ZQY4URcP.A.F3B.vIASKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <ij4ZQY4URcP.A.F3B.vIASKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Sergey Senozhatsky <sergey.senozhatsky-A/MS7pq9VAU@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.30.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13522
Subject		: BUG: scheduling while atomic
Submitter	: Sergey Senozhatsky <sergey.senozhatsky-A/MS7pq9VAU@public.gmane.org>
Date		: 2009-06-12 19:29 (17 days old)


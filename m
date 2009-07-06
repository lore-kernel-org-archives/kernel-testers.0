From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13729] kernel BUG at fs/notify/notification.c:93!
Date: Tue,  7 Jul 2009 01:49:32 +0200 (CEST)
Message-ID: <dWkuWjWDsSB.A.i5D.N0oUKB@chimera>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <35kKlbXMqWN.A.RXD.D0oUKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Paris <eparis-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Mikko C." <mikko.cal-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.30.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13729
Subject		: kernel BUG at fs/notify/notification.c:93!
Submitter	: Mikko C. <mikko.cal-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2009-06-04 10:16 (33 days old)
References	: http://lkml.org/lkml/2009/7/4/12
Handled-By	: Eric Paris <eparis-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>


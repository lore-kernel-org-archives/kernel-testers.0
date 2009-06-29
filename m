From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13666] WARNING: at mm/page_alloc.c:1743 __alloc_pages_nodemask
Date: Mon, 29 Jun 2009 02:11:50 +0200 (CEST)
Message-ID: <6JJ2m5kyucK.A.cBC.0IASKB@chimera>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.30.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13666
Subject		: WARNING: at mm/page_alloc.c:1743 __alloc_pages_nodemask
Submitter	: Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>
Date		: 2009-06-27 16:15 (2 days old)
References	: http://lkml.org/lkml/2009/6/27/75


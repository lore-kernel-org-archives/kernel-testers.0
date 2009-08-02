From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13838] kernel BUG at include/net/netns/generic.h:41!
Date: Sun,  2 Aug 2009 20:58:29 +0200 (CEST)
Message-ID: <iZB3Pj-uj3M.A.OmC.-cgdKB@chimera>
References: <Su1q3S6JjyO.A.jeB.hcgdKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Su1q3S6JjyO.A.jeB.hcgdKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Dumazet <eric.dumazet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Luca Tettamanti <kronos.it-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.30.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13838
Subject		: kernel BUG at include/net/netns/generic.h:41!
Submitter	: Luca Tettamanti <kronos.it-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2009-07-20 15:27 (14 days old)
References	: http://lkml.org/lkml/2009/7/20/105
Handled-By	: Eric Dumazet <eric.dumazet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Patch		: http://patchwork.kernel.org/patch/37779/


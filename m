From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12663] Commit 8c7e58e690ae60ab4215b025f433ed4af261e103 breaks resume
Date: Sat, 14 Feb 2009 21:38:21 +0100 (CET)
Message-ID: <rjPbZ5GRJPO.A.kME.jr0lJB@chimera>
References: <juADNmcceYF.A.mdD.Mr0lJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <juADNmcceYF.A.mdD.Mr0lJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Brian Gerst <brgerst-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jiri Slaby <jirislaby-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.28.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12663
Subject		: Commit 8c7e58e690ae60ab4215b025f433ed4af261e103 breaks resume
Submitter	: Jiri Slaby <jirislaby-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2009-02-07 18:40 (8 days old)
References	: http://lkml.org/lkml/2009/2/7/100
Handled-By	: Brian Gerst <brgerst-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Patch		: http://lkml.org/lkml/2009/2/7/100
		  http://lkml.org/lkml/2009/2/8/59


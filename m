From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16054] UML broken for CONFIG_SLAB
Date: Mon, 21 Jun 2010 00:34:28 +0200 (CEST)
Message-ID: <rHrHQMIU4rI.A.h6.rapHMB@chimera>
References: <g77CuMUl7QI.A.qMH.4ZpHMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <g77CuMUl7QI.A.qMH.4ZpHMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Borislav Petkov <bp-Gina5bIWoIWzQB+pC5nmwQ@public.gmane.org>, Parag Warudkar <parag.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.33 and 2.6.34.

The following bug entry is on the current list of known regressions
introduced between 2.6.33 and 2.6.34.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16054
Subject		: UML broken for CONFIG_SLAB
Submitter	: Parag Warudkar <parag.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2010-05-23 21:40 (29 days old)
Message-ID	: <alpine.DEB.2.00.1005231149100.605@parag-laptop>
References	: http://marc.info/?l=linux-kernel&m=127465083806617&w=2
Handled-By	: Borislav Petkov <bp-Gina5bIWoIWzQB+pC5nmwQ@public.gmane.org>
Patch		: http://git.kernel.org/tip/055c47272b8f5679d08ccc57efea3cb4aaeb5fc6


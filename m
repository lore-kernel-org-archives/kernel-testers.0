From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #14891] Deadlock regression related to NFS root
Date: Sun, 24 Jan 2010 23:23:02 +0100 (CET)
Message-ID: <q60Z28d_9yH.A.d1.0ZMXLB@chimera>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <pYFNu11z2aM.A.pJH.CZMXLB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Stephen R. van den Berg" <srb-PCMv+cxZuL0@public.gmane.org>, Trond Myklebust <Trond.Myklebust-HgOvQuBEEgTQT0dZR+AlfA@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.31 and 2.6.32.

The following bug entry is on the current list of known regressions
introduced between 2.6.31 and 2.6.32.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14891
Subject		: Deadlock regression related to NFS root
Submitter	: Stephen R. van den Berg <srb-PCMv+cxZuL0@public.gmane.org>
Date		: 2009-11-24 0:24 (62 days old)
References	: http://marc.info/?l=linux-kernel&m=125902279909452&w=4
Handled-By	: Trond Myklebust <Trond.Myklebust-HgOvQuBEEgTQT0dZR+AlfA@public.gmane.org>


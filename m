From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12081] xen: pin correct PGD on suspend
Date: Wed,  3 Dec 2008 22:58:01 +0100 (CET)
Message-ID: <bfPM5B8Tx2B.A.o0H.DpxNJB@chimera>
References: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ian Campbell <Ian.Campbell-Sxgqhf6Nn4DQT0dZR+AlfA@public.gmane.org>, Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.27.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12081
Subject		: xen: pin correct PGD on suspend
Submitter	: Ian Campbell <Ian.Campbell-Sxgqhf6Nn4DQT0dZR+AlfA@public.gmane.org>
Date		: 2008-11-21 10:21 (13 days old)
References	: http://marc.info/?l=linux-kernel&m=122726293324850&w=4
Handled-By	: Ian Campbell <Ian.Campbell-Sxgqhf6Nn4DQT0dZR+AlfA@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=122726293324850&w=4


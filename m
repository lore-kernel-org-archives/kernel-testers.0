From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12669] 2.6.28.4 regression: mmap fails if mlockall used
Date: Sun,  8 Feb 2009 20:21:50 +0100 (CET)
Message-ID: <sWhNs83kKPE.A.jpD.H20jJB@chimera>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <AIghyjFgMFP.A.uZD._10jJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>, Sami Farin <safari-kernel-nmB1AuG+Lnw9NyIDpsMsJw@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.28.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12669
Subject		: 2.6.28.4 regression: mmap fails if mlockall used
Submitter	: Sami Farin <safari-kernel-nmB1AuG+Lnw9NyIDpsMsJw@public.gmane.org>
Date		: 2009-02-08 10:52 (1 days old)
References	: http://marc.info/?l=linux-kernel&m=123409037423068&w=4


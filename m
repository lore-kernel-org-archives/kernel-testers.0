From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16971] qla4xxx compile failure on 32-bit PowerPC: missing readq and writeq
Date: Mon, 20 Sep 2010 21:08:04 +0200 (CEST)
Message-ID: <Wn2eLj_6KZG.A.SpH.KF7lMB@chimera>
References: <1fwtoy8sG5H.A.veG.9D7lMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1fwtoy8sG5H.A.veG.9D7lMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Meelis Roos <mroos-Y27EyoLml9s@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.35.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16971
Subject		: qla4xxx compile failure on 32-bit PowerPC: missing readq and writeq
Submitter	: Meelis Roos <mroos-Y27EyoLml9s@public.gmane.org>
Date		: 2010-08-19 21:03 (33 days old)
Message-ID	: <alpine.SOC.1.00.1008192359310.19654-ptEonEWSGqKptlylMvRsHA@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=128225184900892&w=2


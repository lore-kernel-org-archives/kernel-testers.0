From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16971] qla4xxx compile failure on 32-bit PowerPC: missing readq and writeq
Date: Thu, 30 Dec 2010 00:21:19 +0100 (CET)
Message-ID: <LbeBv-BNQpL.A.QKB.MI8GNB@chimera>
References: <odW4v9b6arG.A.2bH.uE8GNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <odW4v9b6arG.A.2bH.uE8GNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Meelis Roos <mroos-Y27EyoLml9s@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.35 and 2.6.36.

The following bug entry is on the current list of known regressions
introduced between 2.6.35 and 2.6.36.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16971
Subject		: qla4xxx compile failure on 32-bit PowerPC: missing readq and writeq
Submitter	: Meelis Roos <mroos-Y27EyoLml9s@public.gmane.org>
Date		: 2010-08-19 21:03 (133 days old)
Message-ID	: <<<alpine.SOC.1.00.1008192359310.19654-ptEonEWSGqKptlylMvRsHA@public.gmane.org>>>
References	: http://marc.info/?l=linux-kernel&m=128225184900892&w=2
Patch		: http://marc.info/?l=linux-scsi&m=128590267608876&w=2


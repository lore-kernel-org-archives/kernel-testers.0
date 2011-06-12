From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #34662] Warning at block/genhd.c:1556 disk_clear_events
Date: Sun, 12 Jun 2011 23:12:08 +0200 (CEST)
Message-ID: <kTLfM29CaqB.A.guF.F1S9NB@chimera>
References: <9NVbY1BZ_5D.A.2lE.jzS9NB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <9NVbY1BZ_5D.A.2lE.jzS9NB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Meelis Roos <mroos-Y27EyoLml9s@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.38 and 2.6.39.

The following bug entry is on the current list of known regressions
introduced between 2.6.38 and 2.6.39.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=34662
Subject		: Warning at block/genhd.c:1556 disk_clear_events
Submitter	: Meelis Roos <mroos-Y27EyoLml9s@public.gmane.org>
Date		: 2011-05-02 9:59 (42 days old)
Message-ID	: <alpine.SOC.1.00.1105021255400.6200-ptEonEWSGqKptlylMvRsHA@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=130433037002610&w=2
Patch		: https://bugzilla.kernel.org/attachment.cgi?id=58262


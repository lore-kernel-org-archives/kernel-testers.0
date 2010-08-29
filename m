From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16396] [bisected] resume from suspend freezes system
Date: Mon, 30 Aug 2010 01:13:29 +0200 (CEST)
Message-ID: <ByD_7B96czP.A.lyC.qeueMB@chimera>
References: <c1_O4wHrlB.A.63.mbueMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <c1_O4wHrlB.A.63.mbueMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, tomas m <tmezzadra-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.34 and 2.6.35.

The following bug entry is on the current list of known regressions
introduced between 2.6.34 and 2.6.35.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16396
Subject		: [bisected] resume from suspend freezes system
Submitter	: tomas m <tmezzadra-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2010-07-15 02:32 (46 days old)
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>


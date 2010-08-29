From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16771] [Bisected Regression in 2.6.35] A full tmpfs filesystem causes hibernationto hang
Date: Mon, 30 Aug 2010 01:13:36 +0200 (CEST)
Message-ID: <ByD_7B96czP.A.oHB.0bueMB@chimera>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, "M. Vefa Bicakci" <bicave-qUEp0r/b3FNfOZc0+OmrVg@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.34 and 2.6.35.

The following bug entry is on the current list of known regressions
introduced between 2.6.34 and 2.6.35.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16771
Subject		: [Bisected Regression in 2.6.35] A full tmpfs filesystem causes hibernationto hang
Submitter	: M. Vefa Bicakci <bicave-qUEp0r/b3FNfOZc0+OmrVg@public.gmane.org>
Date		: 2010-08-15 5:25 (15 days old)
First-Bad-Commit: http://git.kernel.org/linus/bb21c7ce18eff8e6e7877ca1d06c6db719376e3c
Message-ID	: <4C677A49.4030904-qUEp0r/b3FNfOZc0+OmrVg@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=128184995401968&w=2


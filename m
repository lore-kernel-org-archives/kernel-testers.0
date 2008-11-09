From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11407] suspend: unable to handle kernel paging request
Date: Sun,  9 Nov 2008 20:43:18 +0100 (CET)
Message-ID: <4B0Eqx89uNG.A.8qD.rb1FJB@chimera>
References: <A3oCZU7cpuO.A.ChB.ZZ1FJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <A3oCZU7cpuO.A.ChB.ZZ1FJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.26 and 2.6.27.

The following bug entry is on the current list of known regressions
introduced between 2.6.26 and 2.6.27.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11407
Subject		: suspend: unable to handle kernel paging request
Submitter	: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2008-08-21 17:28 (81 days old)
References	: http://marc.info/?l=linux-kernel&m=121933974928881&w=4
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
		  Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
		  Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>


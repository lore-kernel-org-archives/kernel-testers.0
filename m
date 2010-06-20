From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #15589] 2.6.34-rc1: Badness at fs/proc/generic.c:316
Date: Mon, 21 Jun 2010 00:32:12 +0200 (CEST)
Message-ID: <rHrHQMIU4rI.A.5FD.vepHMB@chimera>
References: <g77CuMUl7QI.A.qMH.4ZpHMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <g77CuMUl7QI.A.qMH.4ZpHMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>, =?utf-8?q?Jind=C5=99ich=20Makovi=C4=8Dka?= <makovick-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Michael Ellerman <michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.33 and 2.6.34.

The following bug entry is on the current list of known regressions
introduced between 2.6.33 and 2.6.34.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D15589
Subject		: 2.6.34-rc1: Badness at fs/proc/generic.c:316
Submitter	: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>
Date		: 2010-03-13 23:53 (100 days old)
Message-ID	: < <AANLkTikNcCtUn9SQwKu2b3IE6NiAwAhciHsm1HVH4EJh-JsoAwUIsXov1KXRcyAk9cg@public.gmane.org=
l.com>>
References	: http://marc.info/?l=3Dlinux-kernel&m=3D126852442903680&w=3D=
2
Handled-By	: Michael Ellerman <michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org>
		  Jind=C5=99ich Makovi=C4=8Dka <makovick-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Patch		: http://patchwork.ozlabs.org/patch/52978/
		  http://lkml.indiana.edu/hypermail/linux/kernel/1006.0/00137.html


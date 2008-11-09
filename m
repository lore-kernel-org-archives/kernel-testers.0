From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11505] oltp ~10% regression with 2.6.27-rc5 on stoakley machine
Date: Sun,  9 Nov 2008 20:43:19 +0100 (CET)
Message-ID: <4B0Eqx89uNG.A.5YD._a1FJB@chimera>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Gregory Haskins <ghaskins-Et1tbQHTxzrQT0dZR+AlfA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.26 and 2.6.27.

The following bug entry is on the current list of known regressions
introduced between 2.6.26 and 2.6.27.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11505
Subject		: oltp ~10% regression with 2.6.27-rc5 on stoakley machine
Submitter	: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Date		: 2008-09-04 7:06 (67 days old)
References	: http://marc.info/?l=linux-kernel&m=122051202202373&w=4
		  http://marc.info/?t=122089704700005&r=1&w=4
Handled-By	: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
		  Gregory Haskins <ghaskins-Et1tbQHTxzrQT0dZR+AlfA@public.gmane.org>
		  Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=122194673932703&w=4


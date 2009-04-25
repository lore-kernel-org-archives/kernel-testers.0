From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13164] 2.6.30-rc2 soft lockups: ACPI?  clock source problem?
Date: Sat, 25 Apr 2009 21:31:49 +0200 (CEST)
Message-ID: <Fg2zLW93smL.A.A9C.6c48JB@chimera>
References: <47KgT3nlbjD.A.lnB.jc48JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <47KgT3nlbjD.A.lnB.jc48JB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Hansen <dave-gkUM19QKKo4@public.gmane.org>, john stultz <johnstul-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>, Len Brown <lenb-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.29.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13164
Subject		: 2.6.30-rc2 soft lockups: ACPI?  clock source problem?
Submitter	: Dave Hansen <dave-gkUM19QKKo4@public.gmane.org>
Date		: 2009-04-21 17:30 (5 days old)
References	: http://marc.info/?l=linux-kernel&m=124033550127455&w=4
Handled-By	: john stultz <johnstul-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>
		  Len Brown <lenb-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>


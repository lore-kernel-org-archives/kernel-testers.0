From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Mon, 23 Feb 2009 23:03:03 +0100 (CET)
Message-ID: <LLno3yT_fnC.A.-RH.ZzzoJB@chimera>
References: <HFSEX4uppGO.A.JSG.2yzoJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <HFSEX4uppGO.A.JSG.2yzoJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Kevin Shanahan <kmshanah-IiIpDuVlHfMLO379cgqW9odd74u8MsAO@public.gmane.org>, Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.27 and 2.6.28.

The following bug entry is on the current list of known regressions
introduced between 2.6.27 and 2.6.28.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12465
Subject		: KVM guests stalling on 2.6.28 (bisected)
Submitter	: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
Date		: 2009-01-17 03:37 (38 days old)


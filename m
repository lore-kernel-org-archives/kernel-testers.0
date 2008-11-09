From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11209] 2.6.27-rc1 process time accounting
Date: Sun,  9 Nov 2008 20:43:17 +0100 (CET)
Message-ID: <4B0Eqx89uNG.A.7lE.Ae1FJB@chimera>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>, Lukas Hejtmanek <xhejtman-8qz54MUs51PtwjQa/ONI9g@public.gmane.org>, Michael Lyle <mlyle-5BTmc8gx5pGvC65nV/DKjg@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.26 and 2.6.27.

The following bug entry is on the current list of known regressions
introduced between 2.6.26 and 2.6.27.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11209
Subject		: 2.6.27-rc1 process time accounting
Submitter	: Lukas Hejtmanek <xhejtman-8qz54MUs51PtwjQa/ONI9g@public.gmane.org>
Date		: 2008-07-31 10:43 (102 days old)
References	: http://marc.info/?l=linux-kernel&m=121750102917490&w=4
		  http://lkml.org/lkml/2008/9/30/199
		  http://marc.info/?l=linux-kernel&m=122470441624295&w=4
Handled-By	: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>


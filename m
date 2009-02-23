From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12393] debugging in dosemu causes lots of 'scheduling while atomic'
Date: Mon, 23 Feb 2009 23:03:00 +0100 (CET)
Message-ID: <LLno3yT_fnC.A.dl.6zzoJB@chimera>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Michal Suchanek <hramrach-aRb0bU7PRFPrBKCeMvbIDA@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.27 and 2.6.28.

The following bug entry is on the current list of known regressions
introduced between 2.6.27 and 2.6.28.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12393
Subject		: debugging in dosemu causes lots of 'scheduling while atomic'
Submitter	: Michal Suchanek <hramrach-aRb0bU7PRFPrBKCeMvbIDA@public.gmane.org>
Date		: 2009-01-09 07:28 (46 days old)
Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Patch		: http://lkml.org/lkml/2009/1/13/445


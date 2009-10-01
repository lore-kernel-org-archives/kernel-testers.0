From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #14254] Hibernation broken by clocksource: Save mult_orig in clocksource_disable()
Date: Thu,  1 Oct 2009 21:56:01 +0200 (CEST)
Message-ID: <COE24pZSBH.A.N-.ANTxKB@chimera>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <3onW63eFtRF.A.xXH.oMTxKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Magnus Damm <damm-AlSX/UN32fvPDbFq/vQRIQ@public.gmane.org>, Magnus Damm <magnus.damm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ondrej Zary <linux-ZCIryABCsrmttCpgsWEBFmD2FQJk+8+b@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.30 and 2.6.31.

The following bug entry is on the current list of known regressions
introduced between 2.6.30 and 2.6.31.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14254
Subject		: Hibernation broken by clocksource: Save mult_orig in clocksource_disable()
Submitter	: Ondrej Zary <linux-ZCIryABCsrmttCpgsWEBFmD2FQJk+8+b@public.gmane.org>
Date		: 2009-09-19 19:55 (13 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=c7121843685de2bf7f3afd3ae1d6a146010bf1fc
References	: http://marc.info/?l=linux-kernel&m=125339012527719&w=4


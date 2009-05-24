From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13371] s2disk hangs with kernel 2.6.29 and later, SATA, Gigabyte EG45M-DS2H
Date: Sun, 24 May 2009 21:31:20 +0200 (CEST)
Message-ID: <WCcYF-TAbJC.A.51C.SQcGKB@chimera>
References: <GtY7d2eWpoK.A.ioC.MQcGKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <GtY7d2eWpoK.A.ioC.MQcGKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Richard Atterer <richard-2/EmM+jwkBzwc4Swprx3xw@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.28 and 2.6.29.

The following bug entry is on the current list of known regressions
introduced between 2.6.28 and 2.6.29.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13371
Subject		: s2disk hangs with kernel 2.6.29 and later, SATA, Gigabyte EG45M-DS2H
Submitter	: Richard Atterer <richard-2/EmM+jwkBzwc4Swprx3xw@public.gmane.org>
Date		: 2009-05-16 22:51 (9 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=295f00042aaf6b553b5f37348f89bab463d4a469
References	: http://marc.info/?l=linux-kernel&m=124251446428166&w=4
Handled-By	: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


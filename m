From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #14466] EFI boot on x86 fails in .32
Date: Mon, 26 Oct 2009 19:55:57 +0100 (CET)
Message-ID: <6dRYo8ss7vL.A.7wF.Dre5KB@chimera>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Feng Tang <feng.tang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.31.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14466
Subject		: EFI boot on x86 fails in .32
Submitter	: Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>
Date		: 2009-10-20 0:34 (7 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=7bd867dfb4e0357e06a3211ab2bd0e714110def3
References	: http://marc.info/?l=linux-kernel&m=125599887314290&w=4
Handled-By	: Feng Tang <feng.tang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>


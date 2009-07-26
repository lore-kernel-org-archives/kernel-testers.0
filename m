From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13833] Kernel Oops when trying to suspend with ubifs mounted on block2mtd mtd device
Date: Sun, 26 Jul 2009 22:28:28 +0200 (CEST)
Message-ID: <3zAHs5O6maO.A.gfC.QHObKB@chimera>
References: <Jya1GruKQpD.A.16.2GObKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Jya1GruKQpD.A.16.2GObKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Brownell <david-b-yBeKhBN/0LDR7s880joybQ@public.gmane.org>, David Woodhouse <David.Woodhouse-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Eric Miao <eric.y.miao-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>, Tobias Diedrich <ranma-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.30.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13833
Subject		: Kernel Oops when trying to suspend with ubifs mounted on block2mtd mtd device
Submitter	: Tobias Diedrich <ranma-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org>
Date		: 2009-07-15 14:20 (12 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=15bce40cb3133bcc07d548013df97e4653d363c1
References	: http://marc.info/?l=linux-kernel&m=124766049207807&w=4
		  http://marc.info/?l=linux-kernel&m=124704927819769&w=4


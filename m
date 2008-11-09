From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11905] lots of extra timer interrupts costing 2W
Date: Sun,  9 Nov 2008 18:59:10 +0100 (CET)
Message-ID: <wnN9HICUAgP.A.ZQH.G5zFJB@chimera>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Lukas Hejtmanek <xhejtman-0hYGf3jDe+XrBKCeMvbIDA@public.gmane.org>, Theodore Ts'o <tytso-3s7WtUTddSA@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Venki Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.27.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11905
Subject		: lots of extra timer interrupts costing 2W
Submitter	: Theodore Ts'o <tytso-3s7WtUTddSA@public.gmane.org>
Date		: 2008-10-30 2:18 (11 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=fb02fbc14d17837b4b7b02dbb36142c16a7bf208
References	: http://marc.info/?l=linux-kernel&m=122533314305315&w=4
		  http://marc.info/?l=linux-kernel&m=122541849114444&w=4


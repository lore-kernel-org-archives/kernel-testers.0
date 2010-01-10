From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #14974] tg3 does not resume from hibernation properly on BCM5787M
Date: Sun, 10 Jan 2010 23:32:56 +0100 (CET)
Message-ID: <omZ8aBZReyD.A.46G.ANlSLB@chimera>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <wnS54-l8PVO.A.TlF.oMlSLB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Chow Loong Jin <hyperair-GeWIH/nMZzLQT0dZR+AlfA@public.gmane.org>, Matt Carlson <mcarlson-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14974
Subject		: tg3 does not resume from hibernation properly on BCM5787M
Submitter	: Chow Loong Jin <hyperair-GeWIH/nMZzLQT0dZR+AlfA@public.gmane.org>
Date		: 2010-01-02 05:30 (9 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=87668d352aa8d135bd695a050f18bbfc7b50b506
Handled-By	: Matt Carlson <mcarlson-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
Patch		: http://bugzilla.kernel.org/show_bug.cgi?id=14974#c12


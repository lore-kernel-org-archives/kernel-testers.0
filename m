From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13470] Machine doesn't boot due to mmconfig detection problem
Date: Sun,  7 Jun 2009 11:52:56 +0200 (CEST)
Message-ID: <D9VoutSOyXP.A.fRG._Y7KKB@chimera>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Pascal Terjan <pterjan-4qZELD6FgxhWk0Htik3J/w@public.gmane.org>, Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.29.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13470
Subject		: Machine doesn't boot due to mmconfig detection problem
Submitter	: Pascal Terjan <pterjan-4qZELD6FgxhWk0Htik3J/w@public.gmane.org>
Date		: 2009-05-29 19:35 (10 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=044cd80942e47b9de0915b627902adf05c52377f
References	: http://marc.info/?l=linux-kernel&m=124388792118481&w=4
Handled-By	: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Patch		: http://patchwork.kernel.org/patch/27613/


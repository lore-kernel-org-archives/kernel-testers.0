From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #14907] Commit "kbuild: fix bzImage build for x86" breaks build
Date: Tue, 29 Dec 2009 16:09:58 +0100 (CET)
Message-ID: <NJVdobuNFNK.A.YoH.XnhOLB@chimera>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Michael Tokarev <mjt-XAri/EZa3C4vJsYlp49lxw@public.gmane.org>, Michal Marek <mmarek-AlSwsSmVLrQ@public.gmane.org>, Oliver Hartkopp <oliver-fJ+pQTUTwRTk1uMJSBkQmQ@public.gmane.org>, Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14907
Subject		: Commit "kbuild: fix bzImage build for x86" breaks build
Submitter	: Oliver Hartkopp <oliver-fJ+pQTUTwRTk1uMJSBkQmQ@public.gmane.org>
Date		: 2009-12-19 19:21 (11 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=4a2ff67c88211026afcbdbc190c13f705dae1b59
References	: http://marc.info/?l=linux-kernel&m=126125050622195&w=4
		  http://marc.info/?l=linux-kernel&m=126114565103300&w=4


From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11988] Eliminate recursive mutex in compat fb ioctl path
Date: Sun,  9 Nov 2008 18:59:16 +0100 (CET)
Message-ID: <wnN9HICUAgP.A.Z-E.Q4zFJB@chimera>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Geert Uytterhoeven <Geert.Uytterhoeven-osDt5Q4Chk1BDgjK7y7TUQ@public.gmane.org>, Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.27.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11988
Subject		: Eliminate recursive mutex in compat fb ioctl path
Submitter	: Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>
Date		: 2008-11-03 7:06 (7 days old)
References	: http://marc.info/?l=linux-kernel&m=122569604828448&w=4
Handled-By	: Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>
		  Geert Uytterhoeven <Geert.Uytterhoeven-osDt5Q4Chk1BDgjK7y7TUQ@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=122569604828448&w=4
		  http://lkml.org/lkml/2008/10/31/162


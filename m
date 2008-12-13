From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12047] ACPI toshiba: only register rfkill if bt is enabled
Date: Sat, 13 Dec 2008 17:33:26 +0100 (CET)
Message-ID: <T1gm2CtAHBF.A.41H.M5_QJB@chimera>
References: <u7kfEgp36eE.A.qpG.Y4_QJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <u7kfEgp36eE.A.qpG.Y4_QJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrey Borzenkov <arvidjaar-JGs/UdohzUI@public.gmane.org>, Frederik Deweerdt <frederik.deweerdt-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.27.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12047
Subject		: ACPI toshiba: only register rfkill if bt is enabled
Submitter	: Andrey Borzenkov <arvidjaar-JGs/UdohzUI@public.gmane.org>
Date		: 2008-10-28 19:10 (47 days old)
References	: http://marc.info/?l=linux-kernel&m=122522113619025&w=2
Handled-By	: Frederik Deweerdt <frederik.deweerdt-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=122526843117478&w=2


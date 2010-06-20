From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16034] 2.6.34: dlm: possible circular locking dependency detected
Date: Mon, 21 Jun 2010 00:34:27 +0200 (CEST)
Message-ID: <rHrHQMIU4rI.A.dQB.2apHMB@chimera>
References: <g77CuMUl7QI.A.qMH.4ZpHMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <g77CuMUl7QI.A.qMH.4ZpHMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, CaT <cat-LJ1TwQYPT6cQrrorzV6ljw@public.gmane.org>, Joel Becker <joel.becker-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Wengang Wang <wen.gang.wang-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.33 and 2.6.34.

The following bug entry is on the current list of known regressions
introduced between 2.6.33 and 2.6.34.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16034
Subject		: 2.6.34: dlm: possible circular locking dependency detected
Submitter	: CaT <cat-LJ1TwQYPT6cQrrorzV6ljw@public.gmane.org>
Date		: 2010-05-21 6:59 (31 days old)
Message-ID	: <20100521065933.GH2657-LJ1TwQYPT6cQrrorzV6ljw@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=127442519608471&w=2


From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #33242] Lockdep splat in autofs with 2.6.39-rc2
Date: Mon, 27 Jun 2011 00:26:10 +0200 (CEST)
Message-ID: <Rm1pgFxEGUF.A.YZF.XP7BOB@chimera>
References: <fvHbBUhG0PD.A.IGE.HM7BOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <fvHbBUhG0PD.A.IGE.HM7BOB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Nick Bowler <nbowler-7BP4RkwGw0uXmMXjJBpWqg@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.38 and 2.6.39.

The following bug entry is on the current list of known regressions
introduced between 2.6.38 and 2.6.39.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=33242
Subject		: Lockdep splat in autofs with 2.6.39-rc2
Submitter	: Nick Bowler <nbowler-7BP4RkwGw0uXmMXjJBpWqg@public.gmane.org>
Date		: 2011-04-07 19:44 (81 days old)
Message-ID	: <20110407194403.GA29404-7BP4RkwGw0uXmMXjJBpWqg@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=130220545614682&w=2
Patch		: http://marc.info/?l=linux-kernel&m=130342115008659&w=2


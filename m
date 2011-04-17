From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #33242] Lockdep splat in autofs with 2.6.39-rc2
Date: Sun, 17 Apr 2011 14:57:13 +0200 (CEST)
Message-ID: <_H4l51C1wXN.A.UpB.gGuqNB@chimera>
References: <OlQwC5HnRsN.A.ULB.OGuqNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <OlQwC5HnRsN.A.ULB.OGuqNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Nick Bowler <nbowler-7BP4RkwGw0uXmMXjJBpWqg@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.38.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=33242
Subject		: Lockdep splat in autofs with 2.6.39-rc2
Submitter	: Nick Bowler <nbowler-7BP4RkwGw0uXmMXjJBpWqg@public.gmane.org>
Date		: 2011-04-07 19:44 (11 days old)
Message-ID	: <20110407194403.GA29404-7BP4RkwGw0uXmMXjJBpWqg@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=130220545614682&w=2


From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #19782] 2.6.36-rc6-git2 -- BUG dentry: Poison overwritten (after resume from hibernation)
Date: Sun,  5 Dec 2010 21:34:26 +0100 (CET)
Message-ID: <z3LGq_ncuOB.A.SeF.aB_-MB@chimera>
References: <jyQ21do2hOF.A.qwD.m_--MB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <jyQ21do2hOF.A.qwD.m_--MB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Miles Lane <miles.lane-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.35 and 2.6.36.

The following bug entry is on the current list of known regressions
introduced between 2.6.35 and 2.6.36.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=19782
Subject		: 2.6.36-rc6-git2 -- BUG dentry: Poison overwritten (after resume from hibernation)
Submitter	: Miles Lane <miles.lane-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2010-10-03 3:54 (64 days old)
Message-ID	: <AANLkTimrqtzBHAZSuDhEs_3CKA6pCbM35b1BtKH=MvC_-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=128607809314079&w=2


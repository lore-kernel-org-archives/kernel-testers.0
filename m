From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #14667] bisected 2.6.32 EC regression - Temperatures not correctly detected after suspend
Date: Mon,  8 Feb 2010 01:28:15 +0100 (CET)
Message-ID: <iuJeop2ribM.A.mpB.fa1bLB@chimera>
References: <2uzMDuY-7_O.A.M1G.7X1bLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <2uzMDuY-7_O.A.M1G.7X1bLB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Alexey Starikovskiy <astarikovskiy-l3A5Bk7waGM@public.gmane.org>, Federico Chiacchiaretta <federico.chia-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.31 and 2.6.32.

The following bug entry is on the current list of known regressions
introduced between 2.6.31 and 2.6.32.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14667
Subject		: bisected 2.6.32 EC regression - Temperatures not correctly detected after suspend
Submitter	: Federico Chiacchiaretta <federico.chia-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2009-11-22 20:42 (78 days old)
First-Bad-Commit: http://git.kernel.org/git/linus/6a63b06f3c494cc87eade97f081300bda60acec7


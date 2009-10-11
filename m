From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #14143] OOPS when setting nr_requests for md devices
Date: Mon, 12 Oct 2009 01:01:05 +0200 (CEST)
Message-ID: <L6tb-VyKHZK.A.0sD.N0l0KB@chimera>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, aCaB <acab-Vl9ZkupcxcOsTnJN9+BGXg@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.30 and 2.6.31.

The following bug entry is on the current list of known regressions
introduced between 2.6.30 and 2.6.31.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14143
Subject		: OOPS when setting nr_requests for md devices
Submitter	: aCaB <acab-Vl9ZkupcxcOsTnJN9+BGXg@public.gmane.org>
Date		: 2009-09-08 08:48 (34 days old)


From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12614] WOL with forcedeth broken since f55c21fd9a92a444e55ad1ca4e4732d56661bf2e
Date: Mon, 23 Feb 2009 23:03:04 +0100 (CET)
Message-ID: <LLno3yT_fnC.A._5G.LzzoJB@chimera>
References: <HFSEX4uppGO.A.JSG.2yzoJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <HFSEX4uppGO.A.JSG.2yzoJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Jeff Garzik <jgarzik-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Philipp Matthias Hahn <pmhahn-u4khhh1J0LzF41mA0N3lWw@public.gmane.org>, Tobias Diedrich <ranma+kernel-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.27 and 2.6.28.

The following bug entry is on the current list of known regressions
introduced between 2.6.27 and 2.6.28.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12614
Subject		: WOL with forcedeth broken since f55c21fd9a92a444e55ad1ca4e4732d56661bf2e
Submitter	: Philipp Matthias Hahn <pmhahn-u4khhh1J0LzF41mA0N3lWw@public.gmane.org>
Date		: 2009-01-29 6:31 (26 days old)
References	: http://marc.info/?l=linux-kernel&m=123321232825316&w=4
Handled-By	: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
		  Tobias Diedrich <ranma+kernel-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=123330459229248&w=4
		  http://marc.info/?l=linux-kernel&m=123411195117835&w=4


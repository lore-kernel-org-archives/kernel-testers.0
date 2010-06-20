From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16135] [BUG] kacpi_notify goes into an infinite loop (luckly it calls cond_resched)
Date: Mon, 21 Jun 2010 00:34:29 +0200 (CEST)
Message-ID: <rHrHQMIU4rI.A.Ie.dapHMB@chimera>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>, Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.33 and 2.6.34.

The following bug entry is on the current list of known regressions
introduced between 2.6.33 and 2.6.34.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16135
Subject		: [BUG] kacpi_notify goes into an infinite loop (luckly it calls cond_resched)
Submitter	: Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>
Date		: 2010-05-29 1:01 (23 days old)
First-Bad-Commit: http://git.kernel.org/linus/fa80945269f312bc609e8384302f58b03c916e12
Message-ID	: <1275094882.22648.607.camel-f9ZlEuEWxVcI6MkJdU+c8EEOCMrvLtNR@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=127509490405845&w=2


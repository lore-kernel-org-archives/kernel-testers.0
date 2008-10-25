From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11669] when CPU hotplugging is disabled, nr_cpu_ids does not get set properly during boot
Date: Sat, 25 Oct 2008 23:07:50 +0200 (CEST)
Message-ID: <gLTYxg3cC1.A.BHF.EK6AJB@chimera>
References: <3ZqdCuOdOqB.A.EPE.fJ6AJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <3ZqdCuOdOqB.A.EPE.fJ6AJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Chuck Ebbert <cebbert-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.26 and 2.6.27.

The following bug entry is on the current list of known regressions
introduced between 2.6.26 and 2.6.27.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11669
Subject		: when CPU hotplugging is disabled, nr_cpu_ids does not get set properly during boot
Submitter	: Chuck Ebbert <cebbert-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Date		: 2008-09-29 11:40 (27 days old)
References	: http://bugzilla.kernel.org/show_bug.cgi?id=11669
Handled-By	: Chuck Ebbert <cebbert-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Patch		: http://bugzilla.kernel.org/attachment.cgi?id=18105


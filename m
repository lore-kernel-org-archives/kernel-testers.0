From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13644] hibernation/swsusp lockup due to acpi-cpufreq
Date: Tue,  7 Jul 2009 02:00:50 +0200 (CEST)
Message-ID: <bXZeuxPQAWE.A.g4G.DApUKB@chimera>
References: <tSdKBEwEOhE.A.2wF.s_oUKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <tSdKBEwEOhE.A.2wF.s_oUKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Stezenbach <js-FF7aIK3TAVNeoWH0uzbU5w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.29 and 2.6.30.

The following bug entry is on the current list of known regressions
introduced between 2.6.29 and 2.6.30.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13644
Subject		: hibernation/swsusp lockup due to acpi-cpufreq
Submitter	: Johannes Stezenbach <js-FF7aIK3TAVNeoWH0uzbU5w@public.gmane.org>
Date		: 2009-06-16 01:27 (21 days old)
References	: http://lkml.org/lkml/2009/6/15/630
		  http://lkml.org/lkml/2009/6/29/504
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>


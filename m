From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13269] WARNING: at kernel/hrtimer.c:625 hres_timers_resume+0x3c/0x48() when resuming
Date: Sun,  7 Jun 2009 12:06:22 +0200 (CEST)
Message-ID: <AN6kEAA5GQ.A.neB.7j7KKB@chimera>
References: <sIiXQlfwS3D.A.81.dj7KKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <sIiXQlfwS3D.A.81.dj7KKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, cedric <cedric-x1Cn44Nr1HaZIoH1IeqzKA@public.gmane.org>, Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.28 and 2.6.29.

The following bug entry is on the current list of known regressions
introduced between 2.6.28 and 2.6.29.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13269
Subject		: WARNING: at kernel/hrtimer.c:625 hres_timers_resume+0x3c/0x48() when resuming
Submitter	: cedric <cedric-x1Cn44Nr1HaZIoH1IeqzKA@public.gmane.org>
Date		: 2009-05-08 08:48 (31 days old)


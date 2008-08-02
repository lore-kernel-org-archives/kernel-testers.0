From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11201] kernel BUG at arch/x86/kernel/io_apic_64.c:357!
Date: Sat,  2 Aug 2008 20:04:19 +0200 (CEST)
Message-ID: <5ZeQ4vXWqRC.A.NTE.bNLlIB@albercik>
References: <cbItfVMShGI.A.olC.UMLlIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <cbItfVMShGI.A.olC.UMLlIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dhaval Giani <dhaval-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, "Eric W. Biederman" <ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.26.  Please verify if it still should be listed
and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11201
Subject		: kernel BUG at arch/x86/kernel/io_apic_64.c:357!
Submitter	: Dhaval Giani <dhaval-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Date		: 2008-07-29 16:21 (5 days old)
References	: http://marc.info/?l=linux-kernel&m=121734804508255&w=4
Handled-By	: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
		  Eric W. Biederman <ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=121735924628623&w=4


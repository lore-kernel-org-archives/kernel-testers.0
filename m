From: ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org (Eric W. Biederman)
Subject: Re: [Bug #11201] kernel BUG at arch/x86/kernel/io_apic_64.c:357!
Date: Sat, 09 Aug 2008 18:00:37 -0700
Message-ID: <m1sktdsmyy.fsf@frodo.ebiederm.org>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik>
	<cX_-nNkxKaF.A.AGD.iEjnIB@albercik>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <cX_-nNkxKaF.A.AGD.iEjnIB@albercik> (Rafael J. Wysocki's message
	of "Sun, 10 Aug 2008 00:43:50 +0200 (CEST)")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dhaval Giani <dhaval-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:

> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).

Yep.  There is a patch in -mm.  It seems the process is to wait for Thomas &
Ingo to get back before we send this to Linus. 

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11201
> Subject		: kernel BUG at arch/x86/kernel/io_apic_64.c:357!
> Submitter	: Dhaval Giani <dhaval-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
> Date		: 2008-07-29 16:21 (12 days old)
> References	: http://marc.info/?l=linux-kernel&m=121734804508255&w=4
> Handled-By	: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> 		  Eric W. Biederman <ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org>
> Patch		: http://marc.info/?l=linux-kernel&m=121735924628623&w=4

Eric

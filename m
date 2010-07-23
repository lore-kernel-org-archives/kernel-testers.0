From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16173] After uncompressing the kernel, at boot time, the server hangs.
Date: Fri, 23 Jul 2010 13:42:35 +0200 (CEST)
Message-ID: <tneGvaw1wLL.A.zlC.h5XSMB@chimera>
References: <Lupw7pePXBO.A.fZH.G2XSMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Lupw7pePXBO.A.fZH.G2XSMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, David Hill <hilld-HTiBYHdybX7UkGsOFmftXw@public.gmane.org>, "Eric W. Biederman" <ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.34.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16173
Subject		: After uncompressing the kernel, at boot time, the server hangs.
Submitter	: David Hill <hilld-HTiBYHdybX7UkGsOFmftXw@public.gmane.org>
Date		: 2010-06-09 23:25 (45 days old)
First-Bad-Commit: http://git.kernel.org/linus/cf7500c0ea133d66f8449d86392d83f840102632
Handled-By	: Eric W. Biederman <ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org>


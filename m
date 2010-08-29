From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16629] fix BUG: using smp_processor_id() in preemptible code (resend)
Date: Mon, 30 Aug 2010 00:36:35 +0200 (CEST)
Message-ID: <4AUWBNzTkbD.A.Ks.WGueMB@chimera>
References: <4LwrqITm-eJ.A.r8G.eFueMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4LwrqITm-eJ.A.r8G.eFueMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.35.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16629
Subject		: fix BUG: using smp_processor_id() in preemptible code (resend)
Submitter	: Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2010-08-18 9:11 (12 days old)
Message-ID	: <20100818091157.GA5238-dY8u8AhHFaWtd10JCjopabkcH5ONE+aC@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=128212276618793&w=2
Handled-By	: H. Peter Anvin <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=128212276618793&w=2


From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #24762] BUG at perf_ctx_adjust_freq (kernel/perf_event.c:1582)
Date: Thu,  3 Feb 2011 01:05:23 +0100 (CET)
Message-ID: <-tcJxClTQPH.A._aF.D9eSNB@chimera>
References: <e9vOd5LzdBK.A.dyD.h6eSNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <e9vOd5LzdBK.A.dyD.h6eSNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.36 and 2.6.37.

The following bug entry is on the current list of known regressions
introduced between 2.6.36 and 2.6.37.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=24762
Subject		: BUG at perf_ctx_adjust_freq (kernel/perf_event.c:1582)
Submitter	: Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>
Date		: 2010-12-10 12:00 (55 days old)
Message-ID	: <c6d829$pqibha-vB7d4uKqMBxScZeZrdtW41DQ4js95KgL@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=129198247531612&w=2


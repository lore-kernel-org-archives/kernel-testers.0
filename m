From: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: [Bug #14950] tbench regression with 2.6.33-rc1
Date: Mon, 22 Mar 2010 07:41:50 +0100
Message-ID: <1269240110.13618.26.camel@marge.simson.net>
References: <QQGfxbJf48H.A.NFD.uNopLB@chimera>
	 <hTwaxgnIZ2O.A.jSG.TTopLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <hTwaxgnIZ2O.A.jSG.TTopLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Sun, 2010-03-21 at 21:30 +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.32 and 2.6.33.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.32 and 2.6.33.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14950
> Subject		: tbench regression with 2.6.33-rc1
> Submitter	: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Date		: 2009-12-25 11:11 (87 days old)
> References	: http://marc.info/?l=linux-kernel&m=126174044213172&w=4

This needs retest in tip.  I submitted some patchlets to shave a few
cycles, with which my box (fwtw) shows zero regression 2.6.31 ->
tip.today, whereas there was nothing but regression of up to ~6% in
between, magnitude seemingly depending on phase-of-moon.  Actually,
patched tip at submission time was a fraction above 31 throughput.
Retesting today, it's a fraction of a percent below again (tbench is
annoyingly jittery).

Hopefully, this tbench regression is on it's way to retirement.

	-Mike

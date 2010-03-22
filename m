From: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: [Bug #15192] netperf ~50% regression with 2.6.33-rc1, bisect
 to 1b9508f
Date: Mon, 22 Mar 2010 06:28:37 +0100
Message-ID: <1269235717.19079.4.camel@marge.simson.net>
References: <QQGfxbJf48H.A.NFD.uNopLB@chimera>
	 <hTwaxgnIZ2O.A.81F.hQopLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <hTwaxgnIZ2O.A.81F.hQopLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Sun, 2010-03-21 at 21:30 +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.32 and 2.6.33.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.32 and 2.6.33.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15192
> Subject		: netperf ~50% regression with 2.6.33-rc1, bisect to 1b9508f
> Submitter	: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Date		: 2010-01-25 10:03 (56 days old)
> First-Bad-Commit: http://git.kernel.org/git/linus/1b9508f6831e10d53256825de8904caa22d1ca2c
> References	: http://marc.info/?l=linux-kernel&m=126441481427331&w=4
> Handled-By	: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
> 		  Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
> 		  Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Patch		: http://patchwork.kernel.org/patch/78544/

That patch swam upstream as d306ebc28649b89877a22158fe0076f06cc46f60.

	-Mike

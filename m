From: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: [Bug #12618] hackbench [pthread mode] regression with
 2.6.29-rc3
Date: Tue, 24 Feb 2009 09:48:16 +0100
Message-ID: <1235465296.15790.0.camel@twins>
References: <GVhknozYwrL.A.hiC.rozoJB@chimera>
	 <vP9hdyF4fL.A.HyE.ppzoJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <vP9hdyF4fL.A.HyE.ppzoJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Zhang, Yanmin" <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>

On Mon, 2009-02-23 at 22:48 +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12618
> Subject		: hackbench [pthread mode] regression with 2.6.29-rc3
> Submitter	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
> Date		: 2009-02-01 7:30 (23 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=490dea45d00f01847ebebd007685d564aaf2cd98
> References	: http://marc.info/?l=linux-kernel&m=123347347726527&w=4
> Handled-By	: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
> Patch		: http://marc.info/?l=linux-kernel&m=123383366122146&w=4
> 		  http://marc.info/?l=linux-kernel&m=123383366222152&w=4


I thought this was all upstream by now, Yanmin, are we still seeing some
badness?

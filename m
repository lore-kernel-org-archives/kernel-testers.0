From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #14670] i915: playing video via XVideo extension makes the
 screen flicker
Date: Fri, 5 Feb 2010 10:49:44 -0800
Message-ID: <20100205104944.30200925@jbarnes-piketon>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera>
	<de962C6zBxL.A.TKG.HHiZLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <de962C6zBxL.A.TKG.HHiZLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>

On Mon,  1 Feb 2010 01:43:12 +0100 (CET)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still
> should be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14670
> Subject		: i915: playing video via XVideo extension
> makes the screen flicker Submitter	: Thomas Meyer
> <thomas-VsYtu1Qij5c@public.gmane.org> Date		: 2009-11-23 13:15 (70 days old)
> First-Bad-Commit:
> http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=b42d4c5c6a872815d711e5d51a600f5122c38eee
> References	: http://lkml.org/lkml/2010/1/11/150

Just updated the bug.  Looks like we know where the problem is, just
need a couple more patches tested.

Thomas, can you check my addition and provide feedback?

Thanks,
-- 
Jesse Barnes, Intel Open Source Technology Center

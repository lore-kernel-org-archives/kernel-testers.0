From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #15004] i915: *ERROR* Execbuf while wedged
Date: Fri, 5 Feb 2010 11:01:00 -0800
Message-ID: <20100205110100.57852c31@jbarnes-piketon>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera>
	<de962C6zBxL.A.bvE.cFiZLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <de962C6zBxL.A.bvE.cFiZLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>, tomas m <tmezzadra-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Mon,  1 Feb 2010 01:43:19 +0100 (CET)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still
> should be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15004
> Subject		: i915: *ERROR* Execbuf while wedged
> Submitter	: tomas m <tmezzadra-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-01-07 18:53 (25 days old)

Can you bisect this to a particular kernel commit?  The particular
error message means the kernel detected a GPU hang.  That's usually
a userspace bug, but the kernel should recover from it.

-- 
Jesse Barnes, Intel Open Source Technology Center

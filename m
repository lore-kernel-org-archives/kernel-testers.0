From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #14939] drm: random hang with i915
Date: Wed, 27 Jan 2010 10:01:09 -0800
Message-ID: <20100127100109.525b3da6@jbarnes-piketon>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera>
	<q60Z28d_9yH.A.eK.gZMXLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <q60Z28d_9yH.A.eK.gZMXLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>

On Sun, 24 Jan 2010 23:23:04 +0100 (CET)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14939
> Subject		: drm: random hang with i915
> Submitter	: Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>
> Date		: 2009-12-07 17:30 (49 days old)
> References	: http://marc.info/?l=linux-kernel&m=126020704125723&w=4
> Handled-By	: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
> 

Any news on this one Arnd?  Does i915.powersave=0 still fix it?  If so
the bug David found and fixed may have an effect.  Apparently the
hardware wasn't automatically disabling self-refresh mode when multiple
pipes were active (though maybe you didn't have this config?), which
could definitely cause problems.

-- 
Jesse Barnes, Intel Open Source Technology Center

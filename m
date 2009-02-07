From: "Brandeburg, Jesse" <jesse.brandeburg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: RE: [Bug #12491] i915 lockdep warning
Date: Fri, 6 Feb 2009 17:20:27 -0800
Message-ID: <F169D4F5E1F1974DBFAFABF47F60C10A1DFD867C@orsmsx507.amr.corp.intel.com>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
	<pWZw1SZjMCH.A.ciH.4vYiJB@chimera> <adar62dltg1.fsf@cisco.com>
	<200902050203.40535.rjw@sisk.pl> <adar62bchfw.fsf@cisco.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <adar62bchfw.fsf-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
Content-Language: en-US
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Roland Dreier <rdreier-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "drivers_video-dri-ztI5WcYan/vQLgFONoPN62D2FQJk+8+b@public.gmane.org" <drivers_video-dri-ztI5WcYan/vQLgFONoPN62D2FQJk+8+b@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

Roland Dreier wrote:
>  > i915: Fix potential AB-BA deadlock in i915_gem_execbuffer()
> 
> Jesse, Eric, or anybody -- does this look correct to you?  This seems
> to be triggering for several people, eg
> https://bugzilla.redhat.com/show_bug.cgi?id=481687
> 
>  - R.

I tested this on my 965 based system that showed the issue and it seemed resolved, at least no warnings in dmesg.  Lockdep was confirmed to still be enabled.

I can mark the bug fixed in korg bugzilla too.

Thank you Roland for looking into this, good work!

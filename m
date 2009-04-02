From: Markus <M4rkusXXL-S0/GAf8tV78@public.gmane.org>
Subject: Re: [Bug #12872] pwc mmap always fails with EAGAIN
Date: Thu, 2 Apr 2009 17:49:21 +0200
Message-ID: <200904021749.22100.M4rkusXXL@web.de>
References: <GPBuLTara4J.A.3kH.TZTxJB@chimera> <200903222058.12924.M4rkusXXL@web.de> <20090322200521.GA5355@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090322200521.GA5355-X9Un+BFzKDI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Suresh Siddha <suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

> First thing to check would be whether the latest round of PAT fixes 
> (not yet upstream) fix the problem:

I checked 2.6.29 (the vanilla release) it still has this regression.

I also checked your "tip"-version and it works! (Built the kernel on 
march the 25th. But got no time to test it... up to now...)

Markus

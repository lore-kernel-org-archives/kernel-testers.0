From: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [Bug #12064] [regression] Measured 688 cycles TSC warp; marking TSC unstable
Date: Sun, 23 Nov 2008 17:29:58 +0100
Message-ID: <200811231729.59256.elendil@planet.nl>
References: <sBqd4qMeLzC.A.mgB.B7HKJB@chimera> <vyitTh0pP2N.A.d2B.M7HKJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <vyitTh0pP2N.A.d2B.M7HKJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

On Saturday 22 November 2008, Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12064
> Date		: 2008-11-16 19:27:43 (7 days old)
> References	: http://marc.info/?l=linux-kernel&m=122686370308852&w=2

Looks to be fixed in -rc6:

-Calibrating delay using timer specific routine.. 6198.05 BogoMIPS (lpj=12396107)
+Calibrating delay using timer specific routine.. 6399.82 BogoMIPS (lpj=12799647)
[...]
-checking TSC synchronization [CPU#0 -> CPU#1]:
-Measured 696 cycles TSC warp between CPUs, turning off TSC clock.
-Marking TSC unstable due to check_tsc_sync_source failed
+checking TSC synchronization [CPU#0 -> CPU#1]: passed.

So, BogoMIPS value on CPU#1 is in line with CPU#0 again and TSC passes.
No idea what commit would be responsible.

Cheers,
FJP

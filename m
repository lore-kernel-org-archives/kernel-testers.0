From: Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>
Subject: Re: [Bug #14670] i915: playing video via XVideo extension makes
 the screen flicker
Date: Mon, 11 Jan 2010 17:53:04 +0100
Message-ID: <1263228784.12830.0.camel@localhost.localdomain>
References: <nzLqtSp97aP.A.RGB.hglSLB@chimera>
	 <CXIfLt-ygXM.A.GGD.GilSLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CXIfLt-ygXM.A.GGD.GilSLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

Am Sonntag, den 10.01.2010, 23:56 +0100 schrieb Rafael J. Wysocki:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> be listed and let me know (either way).
> 

Yes, still should be listed.

Problem still exists in 2.6.32.3 and 2.6.33-rc3-00097-g2c1f189, that
contains
this commit:
http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=cda9d05c499093c67b4a376a15009923acc2127a

The above commit removes the render reclock support, that ought to fix a common
kind of problem encountered on i915 hardware, but not on my machine.

Still need to boot with "nomodeset" to have a workable system.


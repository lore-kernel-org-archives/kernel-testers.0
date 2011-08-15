From: Oliver Hartkopp <socketcan-fJ+pQTUTwRTk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [Bug #37432] sdhci-pci fails on 3.0.0-rc1 on Dell E6510
Date: Mon, 15 Aug 2011 19:05:09 +0200
Message-ID: <4E4951C5.203@hartkopp.net>
References: <xuTC4jRtHbB.A.l4H.gMCSOB@chimera> <bkwpSnItbJM.A.FcB.0OCSOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; t=1313427982; l=1224;
	s=domk; d=hartkopp.net;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:
	Subject:CC:To:MIME-Version:From:Date:X-RZG-CLASS-ID:X-RZG-AUTH;
	bh=VWfVxHqZkcqmV+x67b08411zQ6s=;
	b=iPcHsVBXuD6FuVhx9fNZl/Unz5jR+jFNb2Y/CfjOub+oCYERc4kTq5hXvTUtgbu0H6R
	f3c+tVbDvBTOgg1+Za9n6cVAx17Pkto9hm4y2Ae235rQP1X6aDaWviUHwMwAcy4VeGQdV
	Q9Ww50G4qzhZqemuvCJL5bVG3Q4Z17qeCQg=
In-Reply-To: <bkwpSnItbJM.A.FcB.0OCSOB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

On 14.08.2011 21:02, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.39 and 3.0.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.39 and 3.0.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=37432
> Subject		: sdhci-pci fails on 3.0.0-rc1 on Dell E6510
> Submitter	: Oliver Hartkopp <socketcan-fJ+pQTUTwRTk1uMJSBkQmQ@public.gmane.org>
> Date		: 2011-06-07 20:06 (69 days old)
> First-Bad-Commit: http://git.kernel.org/linus/da7822e5ad71ec9b745b412639f1e5e0ba795a20
> References	: http://article.gmane.org/gmane.linux.kernel.mmc/8442
> 		  https://lkml.org/lkml/2011/6/23/660
> 

Hello Rafael,

the regression has been solved for 3.0 by disabling the problematic code here:

http://git.kernel.org/?p=linux/kernel/git/torvalds/linux.git;a=commitdiff;h=f483d3923dc3a6394c483e28ccb3fe700bdf399e

When the new commandline argument 'pci=realloc' is not set (which is the
default) the buggy code is disabled.

Therefore this bug can be closed on the 2.6.39 -> 3.0 regression list.

Thanks,
Oliver

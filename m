From: Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>
Subject: Re: [Bug #14670] i915: playing video via XVideo extension makes
 the screen flicker
Date: Tue, 29 Dec 2009 22:02:48 +0100
Message-ID: <1262120568.3523.4.camel@localhost.localdomain>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
	 <srmJ8vMxKPH.A.2TD.WxhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <srmJ8vMxKPH.A.2TD.WxhOLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

Am Dienstag, den 29.12.2009, 16:28 +0100 schrieb Rafael J. Wysocki:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14670
> Subject		: i915: playing video via XVideo extension makes the screen flicker
> Submitter	: Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>
> Date		: 2009-11-23 13:15 (37 days old)

Need to boot 2.6.32.2 with "nomodeset" option to make the above bug go
away. Without "nomodeset" option, i.e. the default for intel kms, the
system behaves very strangley/sluggish under 2.6.32.2.

So yes, please still list this bug.


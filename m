From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #16388] i915 drm BUG: unable to handle kernel paging
 request at a5e89046
Date: Fri, 23 Jul 2010 10:37:12 -0700
Message-ID: <20100723103712.5b99e8ce@virtuousgeek.org>
References: <wQMMFC59mnE.A.v-E.iUYSMB@chimera>
	<PRbv8sgxY6G.A.tAF.rUYSMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <PRbv8sgxY6G.A.tAF.rUYSMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, lists-fyZcXyQrmZp8fCCB1iTX4w@public.gmane.org

On Fri, 23 Jul 2010 14:15:55 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.33 and 2.6.34.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.33 and 2.6.34.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16388
> Subject		: i915 drm BUG: unable to handle kernel paging request at a5e89046
> Submitter	:  <lists-fyZcXyQrmZp8fCCB1iTX4w@public.gmane.org>
> Date		: 2010-07-14 16:59 (10 days old)

Looks like some potential memory corruption?  At resume we try to get
connector info but panic due to a bad pointer, maybe in one of the
lists.  Can you gdb your drm_kms_helper module and do "list
*drm_mode_getconnector+0x295" to see what line this is?

Also, what chipset do you have?  Maybe I can reproduce it here with
your kernel config.

-- 
Jesse Barnes, Intel Open Source Technology Center

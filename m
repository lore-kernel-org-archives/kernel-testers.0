From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #14997] Closing and re-opening the lid does not reactivate
 the backlight
Date: Fri, 5 Feb 2010 10:57:08 -0800
Message-ID: <20100205105708.4b8b13e6@jbarnes-piketon>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera>
	<de962C6zBxL.A.X6E.lFiZLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <de962C6zBxL.A.X6E.lFiZLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "o. meijer" <meijer.o-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Thorsten Leemhuis <fedora-rCxcAJFjeRkk+I/owrrOrA@public.gmane.org>

On Mon,  1 Feb 2010 01:43:18 +0100 (CET)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still
> should be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14997
> Subject		: Closing and re-opening the lid does not
> reactivate the backlight Submitter	: o. meijer
> <meijer.o-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> Date		: 2010-01-06 15:38 (26 days
> old)

Just updated this one as well.  Since it sounds easily reproducible it
would be good to get a bisect.  We haven't changed backlight handling,
but it's likely the lid changes make X handle things differently...

-- 
Jesse Barnes, Intel Open Source Technology Center

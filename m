From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #14792] Misdetection of the TV output
Date: Thu, 8 Apr 2010 16:39:16 -0700
Message-ID: <20100408163916.67d054ef@virtuousgeek.org>
References: <cjwJ7Pf9h0L.A.9pB.1DmvLB@chimera>
	<onZ81XwyNTD.A.MXE.uJmvLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <onZ81XwyNTD.A.MXE.uJmvLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Adam Jackson <ajax-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Santi <santi-wpr36wD7VxHR7s880joybQ@public.gmane.org>, Zhao Yakui <yakui.zhao-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Fri,  9 Apr 2010 00:54:29 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.32 and 2.6.33.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.32 and 2.6.33.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14792
> Subject		: Misdetection of the TV output
> Submitter	: Santi <santi-wpr36wD7VxHR7s880joybQ@public.gmane.org>
> Date		: 2009-12-12 13:28 (118 days old)
> First-Bad-Commit: http://git.kernel.org/git/linus/27dfaf4f5825a119305db1bc63bef30ed400e376
> Handled-By	: Zhao Yakui <yakui.zhao-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

Looks like Yakui just pushed the fix for this one, so hopefully we'll
be able to close it soon.

-- 
Jesse Barnes, Intel Open Source Technology Center

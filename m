From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #16307] i915 in kernel 2.6.35-rc3, high number of wakeups
Date: Fri, 23 Jul 2010 10:25:32 -0700
Message-ID: <20100723102532.6bfade32@virtuousgeek.org>
References: <Lupw7pePXBO.A.fZH.G2XSMB@chimera>
	<tneGvaw1wLL.A.mXB.p3XSMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <tneGvaw1wLL.A.mXB.p3XSMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Enrico Bandiello <enban-c0jvKHQHzSzx4jp4WZvp5g@public.gmane.org>

On Fri, 23 Jul 2010 13:47:31 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.34.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16307
> Subject		: i915 in kernel 2.6.35-rc3, high number of wakeups
> Submitter	: Enrico Bandiello <enban-c0jvKHQHzSzx4jp4WZvp5g@public.gmane.org>
> Date		: 2010-06-26 16:57 (28 days old)
> Message-ID	: <4C26317A.5070309-c0jvKHQHzSzx4jp4WZvp5g@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=127757403404259&w=2

Just updated the bug for this one.  Enrico, you say this behavior is
recent.  Can you bisect between 2.6.34 and when the problem started?

-- 
Jesse Barnes, Intel Open Source Technology Center

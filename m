From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #16207] Suspend and VT switch hangs since 2.6.34
Date: Fri, 23 Jul 2010 10:33:36 -0700
Message-ID: <20100723103336.539a3d61@virtuousgeek.org>
References: <wQMMFC59mnE.A.v-E.iUYSMB@chimera>
	<PRbv8sgxY6G.A.j1F.aVYSMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <PRbv8sgxY6G.A.j1F.aVYSMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tino Keitel <tino.keitel+xorg-rAwCM5oiXHA@public.gmane.org>

On Fri, 23 Jul 2010 14:15:52 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.33 and 2.6.34.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.33 and 2.6.34.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16207
> Subject		: Suspend and VT switch hangs since 2.6.34
> Submitter	: Tino Keitel <tino.keitel+xorg-rAwCM5oiXHA@public.gmane.org>
> Date		: 2010-06-09 17:53 (45 days old)
> Message-ID	: <20100609175356.GA17332-dW8JlKMZij8@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=127610606214060&w=2

I think this may actually be an X server bug.  2.6.34 introduced some
new features that X drivers take advantage of, but there was some
bugginess in the X server's handling of client block and unblock,
leading to hangs at VT switch time.

This could be related to some upstream bugs in the X server
(bugs.freedesktop.org):
28998
28365
27035

Can you check those out and see if they're relevant?  27035 and 28998 in
particular fixed VT switch problems for me.

-- 
Jesse Barnes, Intel Open Source Technology Center

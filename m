From: Alberto Gonzalez <luis6674-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12337] ~100 extra wakeups reported by powertop
Date: Sat, 14 Feb 2009 15:35:23 -0800 (PST)
Message-ID: <535841.27007.qm@web53303.mail.re2.yahoo.com>
References: <ROx6X68CGJG.A.NVB.U50lJB@chimera>
Reply-To: luis6674-/E1597aS9LQAvxtiuMwx3w@public.gmane.org
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <ROx6X68CGJG.A.NVB.U50lJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

--- On Sat, 2/14/09, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> The following bug entry is on the current list of known
> regressions
> introduced between 2.6.27 and 2.6.28.  Please verify if it
> still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	:
> http://bugzilla.kernel.org/show_bug.cgi?id=12337
> Subject		: ~100 extra wakeups reported by powertop
> Submitter	: Alberto Gonzalez <luis6674-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
> Date		: 2008-12-31 12:25 (46 days old)

Yes, still present in latest stable 2.6.28.5

I updated the report to say that this happened on my 5 year old Pentium 4, but now I got a new Dell desktop (Intel G45 based) and the exact same problem happens, so I can't be the only one seeing it. In the bugzilla Eric Anholt said that it could be related to vblank and that jbarnes had look into a similar issue before, so maybe he has some clue.

Thanks.


      

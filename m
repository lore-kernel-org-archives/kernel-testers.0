From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13188] horizontal strips of the screen frozen
Date: Mon, 18 May 2009 20:04:46 +0200
Message-ID: <200905182004.46627.rjw@sisk.pl>
References: <_AjETDMbIoL.A.DcH.RYzDKB@chimera> <385Pu-agh7M.A.hMB._YzDKB@chimera> <4A118E36.40204@gawab.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4A118E36.40204-u1xxEuL7cY4AvxtiuMwx3w@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Justin Madru <jdm64-u1xxEuL7cY4AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>

On Monday 18 May 2009, Justin Madru wrote:
> Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.29.  Please verify if it still should be listed and let me know
> > (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13188
> > Subject		: horizontal strips of the screen frozen
> > Submitter	: Justin Madru <jdm64-u1xxEuL7cY4AvxtiuMwx3w@public.gmane.org>
> > Date		: 2009-04-24 20:59 (23 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=280b713b5b0fd84cf2469098aee88acbb5de859c
> > References	: http://marc.info/?l=linux-kernel&m=124060685315937&w=4
> >
> >
> >
> >   
> As far as I can tell, this seams to be fixed by the intel-2.7.1 driver, 
> and the bug only happened with UXA.
> I did some minor testing and I couldn't trigger the bug. (earlier 
> discussion in http://lkml.org/lkml/2009/4/23/587)
> So this seams to be a user space bug, fixed in the intel-2.7.1 bug fix 
> release (intel-2.7.0 still has the issue).

I have closed the bug.

Thanks,
Rafael

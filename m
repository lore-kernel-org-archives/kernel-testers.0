From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #21332] Regression in single stepping over hardware breakpoint (Wine)
Date: Fri, 19 Nov 2010 21:24:52 +0100
Message-ID: <201011192124.52423.rjw@sisk.pl>
References: <tTUH_XeInOH.A.dMF.c3b5MB@chimera> <t78YtCSuOqN.A.gEG.I4b5MB@chimera> <20101119145651.GB5558@nowhere>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20101119145651.GB5558@nowhere>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Michael Stefaniuc <mstefani-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Friday, November 19, 2010, Frederic Weisbecker wrote:
> On Fri, Nov 19, 2010 at 12:53:38AM +0100, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.35 and 2.6.36.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.35 and 2.6.36.  Please verify if it still should
> > be listed and let the tracking team know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=21332
> > Subject		: Regression in single stepping over hardware breakpoint (Wine)
> > Submitter	: Michael Stefaniuc <mstefani-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> > Date		: 2010-10-27 23:41 (23 days old)
> > First-Bad-Commit: http://git.kernel.org/linus/0c4519e825c9e2b6a8310deff8582f8c35bfbba9
> 
> 
> The fix is in:
> 
> git://git.kernel.org/pub/scm/linux/kernel/git/tip/linux-2.6-tip.git
> 	perf/urgent
> 
> 6c0aca288e726405b01dacb12cac556454d34b2a
> ("x86: Ignore trap bits on single step exceptions")
> 
> And should reach mainline soon.

OK, status updated.

Thanks,
Rafael

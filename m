From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14012] latest git fried my x86_64 imac
Date: Wed, 26 Aug 2009 23:06:38 +0200
Message-ID: <200908262306.38464.rjw@sisk.pl>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera> <_yaHeGjHEzG.A.NXH.BtGlKB@chimera> <4A9481B9.3070607@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4A9481B9.3070607-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Wednesday 26 August 2009, Justin P. Mattock wrote:
> Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.30.  Please verify if it still should be listed and let me know
> > (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14012
> > Subject		: latest git fried my x86_64 imac
> > Submitter	: Justin P. Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2009-08-13 07:20 (13 days old)
> > References	: http://marc.info/?l=linux-kernel&m=125014080427090&w=4
> >
> >
> >
> >    
> if I revert this commit:
> af6af30c0fcd77e621638e53ef8b176bca8bd3b4
> I can get a normal bootup.

Hm, that's

commit af6af30c0fcd77e621638e53ef8b176bca8bd3b4
Author: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Date:   Wed Aug 5 20:41:04 2009 +0200

    ftrace: Fix perf-tracepoint OOPS

I wonder what happens if you compile out ftrace?

> As for this  bug, it seems I'm the only
> hitting this. The system is a fresh LFS build
> x86_64.
> In regards to keeping this open
> not sure, I don't have a problem with closing this
> and taking the blame as something I did during my build
> of the system, then if this becomes more frequent
> then open a new bug.

OK, I'll close it for now.

Thanks,
Rafael

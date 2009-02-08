From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12606] fb_mmap: circular locking dependency on hibernation
Date: Sun, 8 Feb 2009 23:06:09 +0100
Message-ID: <200902082306.09610.rjw@sisk.pl>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera> <sWhNs83kKPE.A.bKG.120jJB@chimera> <498F55F1.3000405@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <498F55F1.3000405-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: righi.andrea-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrey Borzenkov <arvidjaar-JGs/UdohzUI@public.gmane.org>

On Sunday 08 February 2009, Andrea Righi wrote:
> On 2009-02-08 20:21, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.28.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12606
> > Subject		: fb_mmap: circular locking dependency on hibernation
> > Submitter	: Andrey Borzenkov <arvidjaar-JGs/UdohzUI@public.gmane.org>
> > Date		: 2009-01-27 18:37 (13 days old)
> > References	: http://marc.info/?l=linux-kernel&m=123308162731408&w=4
> > Handled-By	: Andrea Righi <righi.andrea-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Patch		: http://marc.info/?l=linux-kernel&m=123365581406194&w=2
> 
> This is fixed by:
> 
> commit 1f5e31d7e55ac7fbd4ec5e5b20c8868b0e4564c9
> Author: Andrea Righi <righi.andrea-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date:   Wed Feb 4 15:12:03 2009 -0800
> 
>     fbmem: don't call copy_from/to_user() with mutex held

Thanks, closed.

Rafael

From: Duncan <1i5t5.duncan-j9pdmedNgrk@public.gmane.org>
Subject: Re: [Bug #13750] Load average flatlines after returning from hibernate
Date: Mon, 27 Jul 2009 02:21:24 -0700
Message-ID: <200907270221.24667.1i5t5.duncan@cox.net>
References: <Jya1GruKQpD.A.16.2GObKB@chimera> <3zAHs5O6maO.A.DfD.oHObKB@chimera> <1248675666.6987.1415.camel@twins>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1248675666.6987.1415.camel@twins>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

On Sunday 26 July 2009 23:21:06 Peter Zijlstra wrote:
> On Sun, 2009-07-26 at 22:28 +0200, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.30.  Please verify if it still should be listed and let me know
> > (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13750
> > Subject		: Load average flatlines after returning from hibernate
> > Submitter	: Duncan <1i5t5.duncan-j9pdmedNgrk@public.gmane.org>
> > Date		: 2009-07-09 15:14 (18 days old)
>
> commit 6301cb95c119ebf324bb96ee226fa9ddffad80a7
> Author: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
> Date:   Fri Jul 17 14:15:47 2009 +0200
>
>     sched: fix nr_uninterruptible accounting of frozen tasks really
>
>
> commit a468d389349a7560249b355cdb6d2097ea1616c9
> Author: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
> Date:   Fri Jul 17 14:15:46 2009 +0200
>
>     sched: fix load average accounting vs. cpu hotplug

[replied to all]

That's presumably correct, as rc4 (on-tag at last git pull) resolved it.

Just updated the bug.

(I didn't know whether CODE_FIX or PATCH_ALREADY_AVAILABLE was correct, and 
the status link is to the generic bugzilla resolutions, so not much help.  I 
picked CODE_FIX.  I guess that's the next bug I file, on bugzilla.kernel.org 
itself.)

-- 
Duncan - List replies preferred.   No HTML msgs.
"Every nonfree program has a lord, a master --
and if you use the program, he is your master."  Richard Stallman

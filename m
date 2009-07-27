From: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: [Bug #13750] Load average flatlines after returning from
 hibernate
Date: Mon, 27 Jul 2009 08:21:06 +0200
Message-ID: <1248675666.6987.1415.camel@twins>
References: <Jya1GruKQpD.A.16.2GObKB@chimera>
	 <3zAHs5O6maO.A.DfD.oHObKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <3zAHs5O6maO.A.DfD.oHObKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Duncan <1i5t5.duncan-j9pdmedNgrk@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

On Sun, 2009-07-26 at 22:28 +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13750
> Subject		: Load average flatlines after returning from hibernate
> Submitter	: Duncan <1i5t5.duncan-j9pdmedNgrk@public.gmane.org>
> Date		: 2009-07-09 15:14 (18 days old)
> 
> 

commit 6301cb95c119ebf324bb96ee226fa9ddffad80a7
Author: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Date:   Fri Jul 17 14:15:47 2009 +0200

    sched: fix nr_uninterruptible accounting of frozen tasks really


commit a468d389349a7560249b355cdb6d2097ea1616c9
Author: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Date:   Fri Jul 17 14:15:46 2009 +0200

    sched: fix load average accounting vs. cpu hotplug


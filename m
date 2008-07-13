From: Brad Campbell <brad-UPaTOFvTz1K6c6uEtOJ/EA@public.gmane.org>
Subject: Re: [Bug #11039] 2.6.28-rc8-git3 forcedeth WARNING (kills the interface)
Date: Sun, 13 Jul 2008 23:57:16 +0400
Message-ID: <487A5E1C.6080101@wasp.net.au>
References: <Y1jK9GMA8kJ.A.qOH.7GleIB@albercik> <c6ZRbn0adb.A.dyH.bHleIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <c6ZRbn0adb.A.dyH.bHleIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.25.  Please verify if it still should be listed.
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11039
> Subject		: 2.6.28-rc8-git3 forcedeth WARNING (kills the interface)
> Submitter	: Brad Campbell <brad-UPaTOFvTz1K6c6uEtOJ/EA@public.gmane.org>
> Date		: 2008-07-03 10:07 (11 days old)
> References	: http://marc.info/?l=linux-netdev&m=121508714430752&w=4

I tested a 2.6.26-rc kernel with forcedeth.c from 2.6.25 and it failed in the same way, so I don't 
think its a regression as such. In any case, with the -rc9 it still fails regularly.

Regards,
Brad
-- 
Dolphins are so intelligent that within a few weeks they can
train Americans to stand at the edge of the pool and throw them
fish.

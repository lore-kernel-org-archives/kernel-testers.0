From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13895] 2.6.31-rc4 - slab entry tak_delay_info leaking ???
Date: Mon, 3 Aug 2009 17:23:10 +0200
Message-ID: <200908031723.10649.rjw@sisk.pl>
References: <Su1q3S6JjyO.A.jeB.hcgdKB@chimera> <iZB3Pj-uj3M.A.tsB.ocgdKB@chimera> <20090803081916.4189bad4@tux.DEF.witbe.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090803081916.4189bad4-Hu5lHNoInTV+MQpiyFM1nV6hYfS7NtTn@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Paul Rolland <rol-hQZ2c1jdYO6sTnJN9+BGXg@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Monday 03 August 2009, Paul Rolland wrote:
> Hello Rafael,
> 
> On Sun,  2 Aug 2009 20:58:32 +0200 (CEST)
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.30.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13895
> > Subject		: 2.6.31-rc4 - slab entry tak_delay_info
> > leaking ??? Submitter	: Paul Rolland <rol-hQZ2c1jdYO6sTnJN9+BGXg@public.gmane.org>
> > Date		: 2009-07-29 08:20 (5 days old)
> > References	: http://marc.info/?l=linux-kernel&m=124884847925375&w=4
> 
> Still trying to reproduce with kmemleak enabled, but so far no luck.
> 
> Will soon switch to 2.6.31-rc5-no-kmemleak to check if still present.

Thanks for the update.

Rafael

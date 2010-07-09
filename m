From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #16311] [REGRESSION][SUSPEND] 2.6.35-rcX won't suspend Lenovo W500 laptop
Date: Fri, 9 Jul 2010 23:01:25 +0200
Message-ID: <201007092301.25839.rjw@sisk.pl>
References: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera> <TXb9XdQzJoD.A.YHB.IMmNMB@chimera> <201007082300.51672.shawn.starr@rogers.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201007082300.51672.shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Friday, July 09, 2010, Shawn Starr wrote:
> On Thursday, July 08, 2010 07:41:40 pm Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.34.  Please verify if it still should be listed and let the
> > tracking team know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16311
> > Subject		: [REGRESSION][SUSPEND] 2.6.35-rcX won't suspend Lenovo W500
> > laptop Submitter	: Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
> > Date		: 2010-06-28 0:45 (11 days old)
> > Message-ID	: <201006272045.17004.shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
> > References	: http://marc.info/?l=linux-kernel&m=127768633705286&w=2
> 
> Continues with July 7th, snapshot of 2.6.35-rc4. 
> 
> Some more info: I have USB in use while trying to suspend.  A USB Microsoft 
> Mouse and a QuickCam Pro 9000 camera connected.

Well, can you please try to suspend without the USB devices and see if the bug
is still reproducible, then?

Rafael

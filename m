From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15673] 2.6.34-rc2: "ima_dec_counts: open/free imbalance"?
Date: Fri, 23 Jul 2010 21:50:33 +0200
Message-ID: <201007232150.33454.rjw@sisk.pl>
References: <wQMMFC59mnE.A.v-E.iUYSMB@chimera> <PRbv8sgxY6G.A.nKH.yYYSMB@chimera> <1279897933.3126.1.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1279897933.3126.1.camel-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Friday, July 23, 2010, Thomas Meyer wrote:
> Am Freitag, den 23.07.2010, 14:15 +0200 schrieb Rafael J. Wysocki:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.33 and 2.6.34.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.33 and 2.6.34.  Please verify if it still should
> > be listed and let the tracking team know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15673
> > Subject		: 2.6.34-rc2: "ima_dec_counts: open/free imbalance"?
> > Submitter	: Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>
> > Date		: 2010-03-28 11:31 (118 days old)
> > Message-ID	: <1269775909.5301.4.camel-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
> > References	: http://marc.info/?l=linux-kernel&m=126977593326800&w=2
> > 
> > 
> 
> I also see this message in 2.6.35-rc6:

During suspend it seems?  Please attach the dmesg output to the bug entry
above.

Rafael

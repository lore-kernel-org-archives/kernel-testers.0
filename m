From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #16348] kswapd continuously active when doing IO
Date: Fri, 23 Jul 2010 21:55:55 +0200
Message-ID: <201007232155.55588.rjw@sisk.pl>
References: <wQMMFC59mnE.A.v-E.iUYSMB@chimera> <PRbv8sgxY6G.A.NWF.-UYSMB@chimera> <20100723134525.GC7362@dastard>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100723134525.GC7362@dastard>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Marius Tolzmann <tolzmann-KUpvgZVWgV9o1qOY/usvUg@public.gmane.org>

On Friday, July 23, 2010, Dave Chinner wrote:
> On Fri, Jul 23, 2010 at 02:15:54PM +0200, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.33 and 2.6.34.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.33 and 2.6.34.  Please verify if it still should
> > be listed and let the tracking team know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16348
> > Subject		: kswapd continuously active when doing IO
> > Submitter	: Marius Tolzmann <tolzmann-KUpvgZVWgV9o1qOY/usvUg@public.gmane.org>
> > Date		: 2010-07-07 10:58 (17 days old)
> 
> The fix for this is already in 2.6.36-rc6.

Thanks, closing.

Rafael

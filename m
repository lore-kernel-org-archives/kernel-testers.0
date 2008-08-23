From: Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #11271] BUG: fealnx in 2.6.27-rc1
Date: Sat, 23 Aug 2008 18:26:28 -0400
Message-ID: <48B08E94.8030805@garzik.org>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik> <VSpL6AnBTS.A.U-.FcGsIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <VSpL6AnBTS.A.U-.FcGsIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jaswinder Singh <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Francois Romieu <romieu-W8zweXLXuWQS+FvcfC7Uqw@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11271
> Subject		: BUG: fealnx in 2.6.27-rc1
> Submitter	: Jaswinder Singh <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2008-08-05 14:58 (19 days old)
> References	: http://marc.info/?l=linux-netdev&m=121794762016830&w=4
> 		  http://lkml.org/lkml/2008/8/10/98
> Handled-By	: Francois Romieu <romieu-W8zweXLXuWQS+FvcfC7Uqw@public.gmane.org>


Jaswinder, does reverting 28cd4289abc2c8db90344ee4ff064a9bdf086fdf help?

That's the only material change to fealnx itself in years.

If not, any chance you could bisect this problem, and add more info to 
the bug?

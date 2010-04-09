From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15454] r8169 exits with error -22 since 2.6.33
Date: Fri, 9 Apr 2010 21:50:42 +0200
Message-ID: <201004092150.42603.rjw@sisk.pl>
References: <cjwJ7Pf9h0L.A.9pB.1DmvLB@chimera> <onZ81XwyNTD.A.PlC.tEmvLB@chimera> <1270775683.26861.4.camel@obelisk.thedillows.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1270775683.26861.4.camel-1q1vX8mYZiGLUyTwlgNVppKKF0rrzTr+@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: David Dillow <dave-i1Mk8JYDVaaSihdK6806/g@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Conrad Kostecki <ConiKost-Mmb7MZpHnFY@public.gmane.org>, romieu-W8zweXLXuWQS+FvcfC7Uqw@public.gmane.org

On Friday 09 April 2010, David Dillow wrote:
> On Fri, 2010-04-09 at 01:04 +0200, Rafael J. Wysocki wrote:
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15454
> > Subject		: r8169 exits with error -22 since 2.6.33
> > Submitter	: Conrad Kostecki <ConiKost-Mmb7MZpHnFY@public.gmane.org>
> > Date		: 2010-03-05 22:32 (35 days old)
> 
> Francois attached a patch to the bugzilla entry that ignores the failure
> to enable MWI on the device. That may get the NIC up and running, but
> that area of the driver doesn't seem to have changed since 2.6.32, so
> perhaps this is just a canary -- I'm betting that the cache line size is
> not getting set properly, and it probably affects more than just this
> NIC.

Thanks for the update.

Rafael

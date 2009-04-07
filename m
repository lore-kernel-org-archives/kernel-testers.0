From: Marcel Holtmann <marcel-kz+m5ild9QBg9hUCZPvPmw@public.gmane.org>
Subject: Re: [Bug #12499] Problem with using bluetooth adaper connected to
 usb port
Date: Tue, 07 Apr 2009 09:14:51 +0200
Message-ID: <1239088491.19390.25.camel@violet>
References: <n4io5wq70ZO.A.gzG.rFn2JB@chimera>
	 <AsKNxFx2juN.A.bxC.BJn2JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <AsKNxFx2juN.A.bxC.BJn2JB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Hi Rafael,

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12499
> Subject		: Problem with using bluetooth adaper connected to usb port
> Submitter	: "Maciej Rutecki" <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-01-13 18:34 (84 days old)
> References	: http://marc.info/?l=linux-kernel&m=123187185426236&w=4

I prefer to have this checked against 2.6.30-rc1 once Linus released
that one. I think that I know the root cause for this one and it is
actually a hardware/firmware bug. Some Bluetooth dongles expect to have
the interrupt and bulk URBs available at the same time. Otherwise they
do pee in their pants.

Regards

Marcel


From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #16771] [Bisected Regression in 2.6.35] A full tmpfs filesystemcauses hibernationto hang
Date: Tue, 31 Aug 2010 22:19:39 +0200
Message-ID: <201008312219.39694.rjw@sisk.pl>
References: <c1_O4wHrlB.A.63.mbueMB@chimera> <ByD_7B96czP.A.oHB.0bueMB@chimera> <4C7D146E.8020601@superonline.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4C7D146E.8020601-qUEp0r/b3FNfOZc0+OmrVg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "M. Vefa Bicakci" <bicave-qUEp0r/b3FNfOZc0+OmrVg@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>

On Tuesday, August 31, 2010, M. Vefa Bicakci wrote:
> On 30/08/10 02:13 AM, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.34 and 2.6.35.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.34 and 2.6.35.  Please verify if it still should
> > be listed and let the tracking team know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16771
> > Subject		: [Bisected Regression in 2.6.35] A full tmpfs filesystem causes hibernationto hang
> > Submitter	: M. Vefa Bicakci <bicave-qUEp0r/b3FNfOZc0+OmrVg@public.gmane.org>
> > Date		: 2010-08-15 5:25 (15 days old)
> > First-Bad-Commit: http://git.kernel.org/linus/bb21c7ce18eff8e6e7877ca1d06c6db719376e3c
> > Message-ID	: <4C677A49.4030904-qUEp0r/b3FNfOZc0+OmrVg@public.gmane.org>
> > References	: http://marc.info/?l=linux-kernel&m=128184995401968&w=2
> > 
> 
> Dear Rafael Wysocki,
> 
> This regression still exists in 2.6.35.4. (I haven't tested 2.6.36-rcX
> series.) Kosaki Motohiro has kindly helped me with this issue and found
> a fix for the regression. Today I have successfully tested his patch,
> but I don't know whether the patch needs to be further refined and tested.

Thanks for the information.  Do you have a pointer to the patch?

Rafael

From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #38122] 3.0-rc3 WARNING: at  drivers/gpu/drm/i915/i915_drv.c:340 gen6_gt_force_wake_put+0x29/0x52 [i915]()
Date: Mon, 27 Jun 2011 21:19:15 +0200
Message-ID: <201106272119.15301.rjw@sisk.pl>
References: <VDRaLpg_NZ.A.tnC.JZ6BOB@chimera> <XWjMN7gBoXK.A.ULD.cZ6BOB@chimera> <4E08323D.7090004@fusionio.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4E08323D.7090004-5c4llco8/ftWk0Htik3J/w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Jens Axboe <jaxboe-5c4llco8/ftWk0Htik3J/w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Monday, June 27, 2011, Jens Axboe wrote:
> On 2011-06-26 23:23, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.39.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=38122
> > Subject		: 3.0-rc3 WARNING: at drivers/gpu/drm/i915/i915_drv.c:340 gen6_gt_force_wake_put+0x29/0x52 [i915]()
> > Submitter	: Jens Axboe <jaxboe-5c4llco8/ftWk0Htik3J/w@public.gmane.org>
> > Date		: 2011-06-14 12:12 (13 days old)
> > Message-ID	: <<4DE3E2C9.6060207-5c4llco8/ftWk0Htik3J/w@public.gmane.org>>
> > References	: http://marc.info/?l=linux-kernel&m=130805412314680&w=2
> > 		  https://lkml.org/lkml/2011/5/30/261
> 
> By the looks of it, commit 483f1798 should fix it.

Thanks for the info, closed already.

Take care,
Rafael

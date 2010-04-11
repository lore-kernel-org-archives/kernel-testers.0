From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15585] [Bisected Regression in 2.6.32.8] i915 with KMS enabledcauses memorycorruption when resuming from suspend-to-disk
Date: Sun, 11 Apr 2010 22:16:18 +0200
Message-ID: <201004112216.18674.rjw@sisk.pl>
References: <cjwJ7Pf9h0L.A.9pB.1DmvLB@chimera> <onZ81XwyNTD.A.ENC.QEmvLB@chimera> <4BC10DBB.70205@superonline.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4BC10DBB.70205-qUEp0r/b3FNfOZc0+OmrVg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "M. Vefa Bicakci" <bicave-qUEp0r/b3FNfOZc0+OmrVg@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>

On Sunday 11 April 2010, M. Vefa Bicakci wrote:
> On 08/04/10 07:04 PM, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.32 and 2.6.33.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.32 and 2.6.33.  Please verify if it still should
> > be listed and let the tracking team know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15585
> > Subject		: [Bisected Regression in 2.6.32.8] i915 with KMS enabled causes memorycorruption when resuming from suspend-to-disk
> > Submitter	: M. Vefa Bicakci <bicave-qUEp0r/b3FNfOZc0+OmrVg@public.gmane.org>
> > Date		: 2010-03-13 5:11 (27 days old)
> > First-Bad-Commit: http://git.kernel.org/git/linus/d8e0902806c0bd2ccc4f6a267ff52565a3ec933b
> > Message-ID	: <4B9B1E8F.5090806-qUEp0r/b3FNfOZc0+OmrVg@public.gmane.org>
> > References	: http://marc.info/?l=linux-kernel&m=126845754409543&w=2
> 
> Dear Rafael J. Wysocki,
> 
> I tested vanilla 2.6.33.2 and 2.6.34-rc3-git10, and unfortunately
> both of them *have* this issue. So it looks like the issue has not
> been resolved yet. Please keep this regression in the list of known
> regressions.
> 
> Just to let you know: I am currently running 2.6.33.2 with the above-
> mentioned commit reverted, and hibernate-thaw cycles work properly.

Thanks for the update.

Rafael

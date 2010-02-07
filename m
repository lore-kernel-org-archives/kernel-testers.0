From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14897] i915: Commit 0e442c60 causes flickering
Date: Sun, 7 Feb 2010 14:14:40 +0100
Message-ID: <201002071414.40924.rjw@sisk.pl>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera> <201002022155.44016.rjw@sisk.pl> <4B6EB844.4090001@xenontk.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4B6EB844.4090001-XRr60H37pjdAfugRpC6u6w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, ykzhao <yakui.zhao-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Sunday 07 February 2010, David John wrote:
> On 02/03/2010 02:25 AM, Rafael J. Wysocki wrote:
> > On Monday 01 February 2010, David John wrote:
> >> On 02/01/2010 06:13 AM, Rafael J. Wysocki wrote:
> >>> This message has been generated automatically as a part of a report
> >>> of regressions introduced between 2.6.31 and 2.6.32.
> >>>
> >>> The following bug entry is on the current list of known regressions
> >>> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> >>> be listed and let me know (either way).
> >>>
> >>>
> >>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14897
> >>> Subject		: i915: Commit 0e442c60 causes flickering
> >>> Submitter	: David John <davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org>
> >>> Date		: 2009-12-09 17:26 (54 days old)
> 
> Hi Rafael,
> 
> This regression entry can now be closed, it's fixed by the upstream
> commit 33c5fd12 (drm/i915: Disable SR when more than one pipe is enabled).

Thanks, closing.

Rafael

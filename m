From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13644] hibernation/swsusp lockup due to acpi-cpufreq
Date: Thu, 6 Aug 2009 17:12:31 +0200
Message-ID: <200908061712.31814.rjw@sisk.pl>
References: <upey9ZSfnaF.A.-oE.rpgdKB@chimera> <7ixSg7D88bK.A.i2F.UqgdKB@chimera> <20090806144938.GA6817@sig21.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090806144938.GA6817-FF7aIK3TAVNeoWH0uzbU5w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Johannes Stezenbach <js-FF7aIK3TAVNeoWH0uzbU5w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Thursday 06 August 2009, Johannes Stezenbach wrote:
> On Sun, Aug 02, 2009 at 09:09:32PM +0200, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.29 and 2.6.30.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13644
> > Subject		: hibernation/swsusp lockup due to acpi-cpufreq
> > Submitter	: Johannes Stezenbach <js-FF7aIK3TAVNeoWH0uzbU5w@public.gmane.org>
> > Date		: 2009-06-16 01:27 (48 days old)
> > References	: http://lkml.org/lkml/2009/6/15/630
> > 		  http://lkml.org/lkml/2009/6/29/504
> > Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> 
> This issue is fixed in linux-2.6.31-rc5-246-g90bc1a6,
> I'm guessing due to
> 
>  commit 4bc5d34135039566b8d6efa2de7515b2be505da8
>  Author: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
>  Date:   Tue Aug 4 14:03:25 2009 -0400
> 
>     [CPUFREQ] Make cpufreq suspend code conditional on powerpc.

Thanks, bug closed.

Rafael

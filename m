From: Hidetoshi Seto <seto.hidetoshi-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Subject: Re: [Bug #13653] system hangs after resume from suspend to disk,
 mce related
Date: Mon, 29 Jun 2009 09:44:04 +0900
Message-ID: <4A480E54.3060405@jp.fujitsu.com>
References: <ij4ZQY4URcP.A.F3B.vIASKB@chimera> <6JJ2m5kyucK.A.EED.DJASKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <6JJ2m5kyucK.A.EED.DJASKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andi Kleen <ak-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13653
> Subject		: system hangs after resume from suspend to disk, mce related
> Submitter	: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-06-21 19:02 (8 days old)
> References	: http://lkml.org/lkml/2009/6/21/86
> Handled-By	: Hidetoshi Seto <seto.hidetoshi-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
> Patch		: http://patchwork.kernel.org/patch/32062/

The patch above, in /32062/, is for another bug related to timer
migration (waring message reported with check_interval=1).

Real patch for this bug is:
 http://patchwork.kernel.org/patch/31907/


Thanks,
H.Seto

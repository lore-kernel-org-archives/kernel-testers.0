From: etienne <etienne.basset-Bf/eaXMDFuuXqB7oj33eUg@public.gmane.org>
Subject: Re: [Bug #12613] [Suspend regression][DRM, RADEON]
Date: Sun, 08 Feb 2009 23:07:01 +0100
Message-ID: <498F5785.3000009@numericable.fr>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera> <sWhNs83kKPE.A.HiF.r20jJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <sWhNs83kKPE.A.HiF.r20jJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Soeren Sonnenburg <kernel-YxZl4NRrHdw@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12613
> Subject		: [Suspend regression][DRM, RADEON]
> Submitter	: etienne <etienne.basset-Bf/eaXMDFuuXqB7oj33eUg@public.gmane.org>
> Date		: 2009-01-28 22:00 (12 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=a9d51a5ad1154b5b20add1e8d30a5564f8aabbe9
> References	: http://marc.info/?l=linux-kernel&m=123318030419558&w=4
> 		  http://marc.info/?l=linux-kernel&m=123334865404574&w=4
>
>
>   
hello,
yes it's still present in -rc4
But I noticed that when I switch off KDE4.2 desktop effects, suspend to 
ram is 100% reliable with 2.6.29-rc4
With 2.6.28, STR is 100% reliable with or without desktop effects

hope this helps,
Etienne







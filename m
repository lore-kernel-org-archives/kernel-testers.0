From: Michael Breuer <mbreuer-P//MSfjsEjDQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #15125] hung task - jbd2/dm-1-8 (during raid rebuild)
Date: Sun, 31 Jan 2010 19:42:00 -0500
Message-ID: <4B662358.7020603@majjas.com>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera>
 <d3IDKWHT5gE.A.vVC.q7hZLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-reply-to: <d3IDKWHT5gE.A.vVC.q7hZLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On 1/31/2010 7:22 PM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15125
> Subject		: hung task - jbd2/dm-1-8 (during raid rebuild)
> Submitter	: Michael Breuer<mbreuer-P//MSfjsEjDQT0dZR+AlfA@public.gmane.org>
> Date		: 2010-01-10 21:47 (22 days old)
> References	: http://marc.info/?l=linux-kernel&m=126316012025978&w=4
>
>    
Yup. Hit it again on 2.6.33-rc5.

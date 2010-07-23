From: Tim Gardner <tcanonical-l6nL5VImRDY@public.gmane.org>
Subject: Re: [Bug #16111] hostap_pci: infinite registered netdevice wifi0
Date: Fri, 23 Jul 2010 15:13:50 +0200
Message-ID: <4C49958E.6060808@mail.tpi.com>
References: <wQMMFC59mnE.A.v-E.iUYSMB@chimera> <PRbv8sgxY6G.A.kQG.0VYSMB@chimera>
Reply-To: tim.gardner-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <PRbv8sgxY6G.A.kQG.0VYSMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Petr Pisar <petr.pisar-a4qEbw8STSk@public.gmane.org>

On 07/23/2010 02:15 PM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.33 and 2.6.34.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.33 and 2.6.34.  Please verify if it still should
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16111
> Subject		: hostap_pci: infinite registered netdevice wifi0
> Submitter	: Petr Pisar<petr.pisar-a4qEbw8STSk@public.gmane.org>
> Date		: 2010-06-02 20:55 (52 days old)
> Handled-By	: Tim Gardner<tim.gardner-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>
> 		Petr Pisar<petr.pisar-a4qEbw8STSk@public.gmane.org>
> Patch		: https://patchwork.kernel.org/patch/105008/
> 		  https://bugzilla.kernel.org/attachment.cgi?id=27109
>
>

Commit d6a574ff6bfb842bdb98065da053881ff527be46 in Linus' tree

-- 
Tim Gardner tim.gardner-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org

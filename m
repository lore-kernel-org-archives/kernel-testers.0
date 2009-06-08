From: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Mon, 8 Jun 2009 14:35:20 +0100
Message-ID: <20090608133520.GC15070@csn.ul.ie>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera> <D9VoutSOyXP.A.hvH.Ha7KKB@chimera> <4A2BBC30.2030300@lwfinger.net> <84144f020906070640rf5ab14nbf66d3ca7c97675f@mail.gmail.com> <4A2BCC6F.8090004@redhat.com> <84144f020906070732l31786156r5d9753a0cabfde79@mail.gmail.com> <20090608101739.GA15377@csn.ul.ie> <4A2D1017.6010308@redhat.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <4A2D1017.6010308-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>

On Mon, Jun 08, 2009 at 09:20:23AM -0400, Rik van Riel wrote:
> Mel Gorman wrote:
>
>> We've encountered this before and the conclusion was that the current
>> adjustments for watermark calculations of high-order allocations is right,
>> or at least there is no better alternative. In other words, the page
>> allocator in this instance is behaving as expected. Do we want to
>> revisit that discussion as to whether the watermark calculations for
>> high-order allocation should change? I think we'll reach the same
>> conclusion or at least decide that allowing the order-1 atomic
>> allocation to succeed here would just postpone the problem.
>
> It would not just postpone the problem, it would also
> bring the system closer to a state where kswapd does
> something about the order-1 free areas.
>
> This might postpone the problem indefinately.
>

How do you figure it does not just postpone the problem? If there are a batch
of order-1 allocations that come in like this, it will eventually deplete
the higher-order pages and then fail because kswapd is not getting woken up.

Minimally, if we were to ignore the watermarks, there would need to be logic
that says

	"If a high-order allocation would fail due to high-order watermarks
	not being met, but the watermarks are ok from an order-0 perspective
	and the high-order page is available, then grant the allocation but
	wake up kswapd as if the order-1 allocation had failed to get the
	high-order watermarks back in shape"

> Currently the system fails early, without kswapd
> kicking in and freeing new order-1 areas.
>

If the allocation was granted, then kswapd will still not kick in.

-- 
Mel Gorman
Part-time Phd Student                          Linux Technology Center
University of Limerick                         IBM Dublin Software Lab

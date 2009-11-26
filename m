From: Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>
Subject: Re: [PATCH] vmscan: Stop kswapd waiting on congestion when the min
 watermark is not being met V2
Date: Thu, 26 Nov 2009 15:45:13 +0100 (CET)
Message-ID: <alpine.DEB.2.00.0911261542500.21450@sebohet.brgvxre.pu>
References: <20091113142608.33B9.A69D9226@jp.fujitsu.com> <20091113135443.GF29804@csn.ul.ie> <20091114023138.3DA5.A69D9226@jp.fujitsu.com> <20091113181557.GM29804@csn.ul.ie> <2f11576a0911131033w4a9e6042k3349f0be290a167e@mail.gmail.com>
 <20091113200357.GO29804@csn.ul.ie>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091113200357.GO29804-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org" <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hi Mel,

Nov 13 Mel Gorman wrote:

> The last version has a stupid bug in it. Sorry.
>
> Changelog since V1
>   o Fix incorrect negation
>   o Rename kswapd_no_congestion_wait to kswapd_skip_congestion_wait as
>     suggested by Rik
>
> If reclaim fails to make sufficient progress, the priority is raised.
> Once the priority is higher, kswapd starts waiting on congestion.  However,
> if the zone is below the min watermark then kswapd needs to continue working
> without delay as there is a danger of an increased rate of GFP_ATOMIC
> allocation failure.
>
> This patch changes the conditions under which kswapd waits on
> congestion by only going to sleep if the min watermarks are being met.

I finally got around to test this together with the whole series on
2.6.31.6. after running it for a day I have not yet seen a single
order:5 allocation problem ... (while I had several an hour before)

for the record, my kernel is now running with the following
patches:

patch1:Date: Thu, 12 Nov 2009 19:30:31 +0000
patch1:Subject: [PATCH 1/5] page allocator: Always wake kswapd when restarting an allocation attempt after direct reclaim failed

patch2:Date: Thu, 12 Nov 2009 19:30:32 +0000
patch2:Subject: [PATCH 2/5] page allocator: Do not allow interrupts to use ALLOC_HARDER

patch3:Date: Thu, 12 Nov 2009 19:30:33 +0000
patch3:Subject: [PATCH 3/5] page allocator: Wait on both sync and async congestion after direct reclaim

patch4:Date: Thu, 12 Nov 2009 19:30:34 +0000
patch4:Subject: [PATCH 4/5] vmscan: Have kswapd sleep for a short interval and double check it should be asleep

patch5:Date: Fri, 13 Nov 2009 20:03:57 +0000
patch5:Subject: [PATCH] vmscan: Stop kswapd waiting on congestion when the min watermark is not being met V2

patch6:Date: Tue, 17 Nov 2009 10:34:21 +0000
patch6:Subject: [PATCH] vmscan: Have kswapd sleep for a short interval and double check it should be asleep fix 1

cheers
tobi

-- 
Tobi Oetiker, OETIKER+PARTNER AG, Aarweg 15 CH-4600 Olten, Switzerland
http://it.oetiker.ch tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org ++41 62 775 9902 / sb: -9900

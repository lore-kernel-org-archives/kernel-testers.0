From: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Subject: Re: [PATCH 3/3] vmscan: Force kswapd to take notice faster when high-order watermarks are being hit
Date: Wed, 28 Oct 2009 12:54:04 +0900 (JST)
Message-ID: <20091028115505.FD88.A69D9226@jp.fujitsu.com>
References: <1256650833-15516-4-git-send-email-mel@csn.ul.ie> <20091027131905.410ec04a.akpm@linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091027131905.410ec04a.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org\"" <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

> On Tue, 27 Oct 2009 13:40:33 +0000
> Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org> wrote:
> 
> > When a high-order allocation fails, kswapd is kicked so that it reclaims
> > at a higher-order to avoid direct reclaimers stall and to help GFP_ATOMIC
> > allocations. Something has changed in recent kernels that affect the timing
> > where high-order GFP_ATOMIC allocations are now failing with more frequency,
> > particularly under pressure. This patch forces kswapd to notice sooner that
> > high-order allocations are occuring.
> 
> "something has changed"?  Shouldn't we find out what that is?

if kswapd_max_order was changed, kswapd quickly change its own reclaim
order.

old:
  1. happen order-0 allocation
  2. kick kswapd
  3. happen high-order allocation
  4. change kswapd_max_order, but kswapd continue order-0 reclaim.
  5. kswapd end order-0 reclaim and exit balance_pgdat
  6. kswapd() restart balance_pdgat() with high-order

new:
  1. happen order-0 allocation
  2. kick kswapd
  3. happen high-order allocation
  4. change kswapd_max_order
  5. kswapd notice it and quickly exit balance_pgdat()
  6. kswapd() restart balance_pdgat() with high-order

> 
> > ---
> >  mm/vmscan.c |    9 +++++++++
> >  1 files changed, 9 insertions(+), 0 deletions(-)
> > 
> > diff --git a/mm/vmscan.c b/mm/vmscan.c
> > index 64e4388..7eceb02 100644
> > --- a/mm/vmscan.c
> > +++ b/mm/vmscan.c
> > @@ -2016,6 +2016,15 @@ loop_again:
> >  					priority != DEF_PRIORITY)
> >  				continue;
> >  
> > +			/*
> > +			 * Exit the function now and have kswapd start over
> > +			 * if it is known that higher orders are required
> > +			 */
> > +			if (pgdat->kswapd_max_order > order) {
> > +				all_zones_ok = 1;
> > +				goto out;
> > +			}
> > +
> >  			if (!zone_watermark_ok(zone, order,
> >  					high_wmark_pages(zone), end_zone, 0))
> >  				all_zones_ok = 0;
> 
> So this handles the case where some concurrent thread or interrupt
> increases pgdat->kswapd_max_order while kswapd was running
> balance_pgdat(), yes?

Yes.

> Does that actually happen much?  Enough for this patch to make any
> useful difference?

In typical use-case, it doesn't have so much improvement. However some
driver use high-order allocation on interrupt context.
It mean we need quickly reclaim before GFP_ATOMIC allocation failure.

I agree these driver is ill. but...
We can't ignore enduser bug report.


> 
> If one where to whack a printk in that `if' block, how often would it
> trigger, and under what circumstances?
> 
> 
> If the -stable maintainers were to ask me "why did you send this" then
> right now my answer would have to be "I have no idea".  Help.





From: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Subject: Re: [PATCH 3/5] page allocator: Wait on both sync and async
	congestion after direct reclaim
Date: Fri, 13 Nov 2009 12:55:58 +0100
Message-ID: <20091113115558.GY8742@kernel.dk>
References: <1258054235-3208-1-git-send-email-mel@csn.ul.ie> <1258054235-3208-4-git-send-email-mel@csn.ul.ie> <20091113142526.33B3.A69D9226@jp.fujitsu.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20091113142526.33B3.A69D9226-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Cc: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org" <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, Nov 13 2009, KOSAKI Motohiro wrote:
> (cc to Jens)
> 
> > Testing by Frans Pop indicated that in the 2.6.30..2.6.31 window at least
> > that the commits 373c0a7e 8aa7e847 dramatically increased the number of
> > GFP_ATOMIC failures that were occuring within a wireless driver. Reverting
> > this patch seemed to help a lot even though it was pointed out that the
> > congestion changes were very far away from high-order atomic allocations.
> > 
> > The key to why the revert makes such a big difference is down to timing and
> > how long direct reclaimers wait versus kswapd. With the patch reverted,
> > the congestion_wait() is on the SYNC queue instead of the ASYNC. As a
> > significant part of the workload involved reads, it makes sense that the
> > SYNC list is what was truely congested and with the revert processes were
> > waiting on congestion as expected. Hence, direct reclaimers stalled
> > properly and kswapd was able to do its job with fewer stalls.
> > 
> > This patch aims to fix the congestion_wait() behaviour for SYNC and ASYNC
> > for direct reclaimers. Instead of making the congestion_wait() on the SYNC
> > queue which would only fix a particular type of workload, this patch adds a
> > third type of congestion_wait - BLK_RW_BOTH which first waits on the ASYNC
> > and then the SYNC queue if the timeout has not been reached.  In tests, this
> > counter-intuitively results in kswapd stalling less and freeing up pages
> > resulting in fewer allocation failures and fewer direct-reclaim-orientated
> > stalls.
> 
> Honestly, I don't like this patch. page allocator is not related to
> sync block queue. vmscan doesn't make read operation.
> This patch makes nearly same effect of s/congestion_wait/io_schedule_timeout/.
> 
> Please don't make mysterious heuristic code.
> 
> 
> Sidenode: I doubt this regression was caused from page allocator.
> Probably we need to confirm caller change....

See the email from Chris from yesterday, he nicely explains why this
change made a difference with dm-crypt. dm-crypt needs fixing, not a
hack like this added.

The vm needs to drop congestion hints and usage, not increase it. The
above changelog is mostly hand-wavy nonsense, imho.

-- 
Jens Axboe

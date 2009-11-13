From: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 3/5] page allocator: Wait on both sync and async
	congestion after direct reclaim
Date: Fri, 13 Nov 2009 14:16:25 +0000
Message-ID: <20091113141624.GJ29804@csn.ul.ie>
References: <1258054235-3208-1-git-send-email-mel@csn.ul.ie> <1258054235-3208-4-git-send-email-mel@csn.ul.ie> <20091113142526.33B3.A69D9226@jp.fujitsu.com> <20091113115558.GY8742@kernel.dk> <20091113122821.GC29804@csn.ul.ie> <20091113133211.GA8742@kernel.dk>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20091113133211.GA8742-tSWWG44O7X1aa/9Udqfwiw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Cc: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org" <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, Nov 13, 2009 at 02:32:12PM +0100, Jens Axboe wrote:
> On Fri, Nov 13 2009, Mel Gorman wrote:
> > On Fri, Nov 13, 2009 at 12:55:58PM +0100, Jens Axboe wrote:
> > > On Fri, Nov 13 2009, KOSAKI Motohiro wrote:
> > > > (cc to Jens)
> > > > 
> > > > > Testing by Frans Pop indicated that in the 2.6.30..2.6.31 window at least
> > > > > that the commits 373c0a7e 8aa7e847 dramatically increased the number of
> > > > > GFP_ATOMIC failures that were occuring within a wireless driver. Reverting
> > > > > this patch seemed to help a lot even though it was pointed out that the
> > > > > congestion changes were very far away from high-order atomic allocations.
> > > > > 
> > > > > The key to why the revert makes such a big difference is down to timing and
> > > > > how long direct reclaimers wait versus kswapd. With the patch reverted,
> > > > > the congestion_wait() is on the SYNC queue instead of the ASYNC. As a
> > > > > significant part of the workload involved reads, it makes sense that the
> > > > > SYNC list is what was truely congested and with the revert processes were
> > > > > waiting on congestion as expected. Hence, direct reclaimers stalled
> > > > > properly and kswapd was able to do its job with fewer stalls.
> > > > > 
> > > > > This patch aims to fix the congestion_wait() behaviour for SYNC and ASYNC
> > > > > for direct reclaimers. Instead of making the congestion_wait() on the SYNC
> > > > > queue which would only fix a particular type of workload, this patch adds a
> > > > > third type of congestion_wait - BLK_RW_BOTH which first waits on the ASYNC
> > > > > and then the SYNC queue if the timeout has not been reached.  In tests, this
> > > > > counter-intuitively results in kswapd stalling less and freeing up pages
> > > > > resulting in fewer allocation failures and fewer direct-reclaim-orientated
> > > > > stalls.
> > > > 
> > > > Honestly, I don't like this patch. page allocator is not related to
> > > > sync block queue. vmscan doesn't make read operation.
> > > > This patch makes nearly same effect of s/congestion_wait/io_schedule_timeout/.
> > > > 
> > > > Please don't make mysterious heuristic code.
> > > > 
> > > > 
> > > > Sidenode: I doubt this regression was caused from page allocator.
> > 
> > Probably not. As noted, the major change is really in how long callers
> > are waiting on congestion_wait. The tarball includes graphs from an
> > instrumented kernel that shows how long callers are waiting due to
> > congestion_wait(). This has changed significantly.
> > 
> > I'll queue up tests over the weekend that test without dm-crypt being involved.
> > 
> > > > Probably we need to confirm caller change....
> > > 
> > > See the email from Chris from yesterday, he nicely explains why this
> > > change made a difference with dm-crypt.
> > 
> > Indeed.
> > 
> > But bear in mind that it also possible that direct reclaimers are also
> > congesting the queue due to swap-in.
> 
> Are you speculating, or has this been observed?

Speculating. I'll need to adjust the test and instrumentation to know
for sure.

> While I don't contest
> that that could happen, it's also not a new thing. And it should be an
> unlikely event.
> 
> > > dm-crypt needs fixing, not a hack like this added.
> > > 
> > 
> > As noted by Chris in the same mail, dm-crypt has not changed. What has
> > changed is how long callers wait in congestion_wait.
> 
> Right dm-crypt didn't change, it WAS ALREADY BUGGY.
> 

Fair point.

> > > The vm needs to drop congestion hints and usage, not increase it. The
> > > above changelog is mostly hand-wavy nonsense, imho.
> > > 
> > 
> > Suggest an alternative that brings congestion_wait() more in line with
> > 2.6.30 behaviour then.
> 
> I don't have a good explanation as to why the delays have changed,
> unfortunately. Are we sure that they have between .30 and .31?

Fairly sure. The original reporter first reported that the problem was
in this range and reverting one of the congestion_wait() patches
appeared to help. What the revert was really doing was making
congestion_wait() on SYNC instead of ASYNC in a number of cases.

> The
> dm-crypt case is overly complex and lots of changes could have broken
> that house of cards.
> 

-- 
Mel Gorman
Part-time Phd Student                          Linux Technology Center
University of Limerick                         IBM Dublin Software Lab

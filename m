From: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Subject: Re: 2.6.26-rc: nfsd hangs for a few sec
Date: Sun, 22 Jun 2008 18:07:05 +0100
Message-ID: <20080622170704.GB625@csn.ul.ie>
References: <a4423d670806210557k1e8fcee1le3526f62962799e@mail.gmail.com> <20080621224135.GD4692@csn.ul.ie> <Pine.LNX.4.64.0806211711470.18719@schroedinger.engr.sgi.com> <20080622013801.GE4692@csn.ul.ie> <Pine.LNX.4.64.0806212107510.18908@schroedinger.engr.sgi.com>
Mime-Version: 1.0
Return-path: <linux-nfs-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.0806212107510.18908-RYO/mD75kfhx2SFC9UQUAuF7EQX82lMiAL8bYrjMMd8@public.gmane.org>
Sender: linux-nfs-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Christoph Lameter <clameter-sJ/iWh9BUns@public.gmane.org>
Cc: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel list <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Lee Schermerhorn <lee.schermerhorn-VXdhtT5mjnY@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>, Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, bfields-uC3wQj2KruNg9hUCZPvPmw@public.gmane.org, neilb-l3A5Bk7waGM@public.gmane.org, linux-nfs-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On (21/06/08 21:13), Christoph Lameter didst pronounce:
> On Sun, 22 Jun 2008, Mel Gorman wrote:
> 
> > > Before the change we walk all zones of the zonelist.
> > > 
> > 
> > Yeah, but the zonelist is for GFP_KERNEL so it should not include the HIGHMEM
> > zones, right? The key change is that after the patch there are fewer zonelists
> > than get filtered.
> 
> But the HIGHMEM zones etc were included before. There was no check for 
> HIGHMEM etc there. The gfpmask was ignored.
>  

Well, the mask is not totally ignored, it's part of the scan_control and
used later when deciding what can and can't be done as part of reclaim.
However, you are right in that it is apparently ignored for zone
selection.

However, try_to_free_pages() received a struct zone **zones which was
a zonelist which is a zonelist->zones selected based on the gfp_mask in
__alloc_pages. By the time shrink_zones() is called, it can ignore the
mask because only relevant zones are in there. For GFP_KERNEL, that would
exclude HIGHMEM.

> > I think the effect of that patch is that zones get shrunk that have
> > nothing to do with the requestors requirements. Right?
> 
> Right. AFAICT That was the behavior before the change.
> 


-- 
Mel Gorman
Part-time Phd Student                          Linux Technology Center
University of Limerick                         IBM Dublin Software Lab
--
To unsubscribe from this list: send the line "unsubscribe linux-nfs" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

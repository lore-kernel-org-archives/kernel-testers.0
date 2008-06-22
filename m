From: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Subject: Re: 2.6.26-rc: nfsd hangs for a few sec
Date: Sun, 22 Jun 2008 02:38:02 +0100
Message-ID: <20080622013801.GE4692@csn.ul.ie>
References: <a4423d670806210557k1e8fcee1le3526f62962799e@mail.gmail.com> <20080621224135.GD4692@csn.ul.ie> <Pine.LNX.4.64.0806211711470.18719@schroedinger.engr.sgi.com>
Mime-Version: 1.0
Return-path: <linux-nfs-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.0806211711470.18719-RYO/mD75kfhx2SFC9UQUAuF7EQX82lMiAL8bYrjMMd8@public.gmane.org>
Sender: linux-nfs-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Christoph Lameter <clameter-sJ/iWh9BUns@public.gmane.org>
Cc: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel list <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Lee Schermerhorn <lee.schermerhorn-VXdhtT5mjnY@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>, Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, bfields-uC3wQj2KruNg9hUCZPvPmw@public.gmane.org, neilb-l3A5Bk7waGM@public.gmane.org, linux-nfs-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On (21/06/08 17:18), Christoph Lameter didst pronounce:
> On Sat, 21 Jun 2008, Mel Gorman wrote:
> 
> > --- a/mm/vmscan.c
> > +++ b/mm/vmscan.c
> > @@ -1249,15 +1249,13 @@ static unsigned long shrink_zone(int priority, struct zone *zone,
> >  static unsigned long shrink_zones(int priority, struct zonelist *zonelist,
> >  					struct scan_control *sc)
> >  {
> > +	enum zone_type high_zoneidx = gfp_zone(sc->gfp_mask);
> >  	unsigned long nr_reclaimed = 0;
> > -	struct zone **zones = zonelist->zones;
> > -	int i;
> > -
> > +	struct zone **z;
> > +	struct zone *zone;
> >  
> >  	sc->all_unreclaimable = 1;
> > -	for (i = 0; zones[i] != NULL; i++) {
> > -		struct zone *zone = zones[i];
> > -
> > +	for_each_zone_zonelist(zone, z, zonelist, high_zoneidx) {
> >  		if (!populated_zone(zone))
> >  			continue;
> >  		/*
> > 
> > Code before - Walk the zonelist for GFP_KERNEL
> 
> Before the change we walk all zones of the zonelist.
> 

Yeah, but the zonelist is for GFP_KERNEL so it should not include the HIGHMEM
zones, right? The key change is that after the patch there are fewer zonelists
than get filtered.

> > Code after - Filter zonelist based on what is allowed for GFP_KERNEL
> 
> After the change we walk only zones for GFP_KERNEL. Meaning no HIGHMEM 
> and MOVABLE zones. Doesnt that mean that reclaim is limited to ZONE_DMA 
> and ZONE_NORMAL? Is that really intended?
> 

It is for GFP_KERNEL allocations but that is expected.

> If not then the following patch should return us to old behavior:
> 

I think the effect of that patch is that zones get shrunk that have
nothing to do with the requestors requirements. Right?

> ---
>  mm/vmscan.c |    3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> Index: linux-2.6/mm/vmscan.c
> ===================================================================
> --- linux-2.6.orig/mm/vmscan.c	2008-06-21 17:15:45.597627317 -0700
> +++ linux-2.6/mm/vmscan.c	2008-06-21 17:17:16.273293260 -0700
> @@ -1249,13 +1249,12 @@ static unsigned long shrink_zone(int pri
>  static unsigned long shrink_zones(int priority, struct zonelist *zonelist,
>  					struct scan_control *sc)
>  {
> -	enum zone_type high_zoneidx = gfp_zone(sc->gfp_mask);
>  	unsigned long nr_reclaimed = 0;
>  	struct zoneref *z;
>  	struct zone *zone;
>  
>  	sc->all_unreclaimable = 1;
> -	for_each_zone_zonelist(zone, z, zonelist, high_zoneidx) {
> +	for_each_zone_zonelist(zone, z, zonelist, MAX_NR_ZONES - 1) {
>  		if (!populated_zone(zone))
>  			continue;
>  		/*
> 

-- 
Mel Gorman
Part-time Phd Student                          Linux Technology Center
University of Limerick                         IBM Dublin Software Lab
--
To unsubscribe from this list: send the line "unsubscribe linux-nfs" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [regression?] [resend] Memory zone info seems incomplete in
 boottime dmesg output
Date: Thu, 14 Aug 2008 12:13:49 -0700
Message-ID: <20080814121349.b77e0116.akpm@linux-foundation.org>
References: <200808142042.24606.elendil@planet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200808142042.24606.elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>

On Thu, 14 Aug 2008 20:42:23 +0200
Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org> wrote:

> With 2.6.26 I get:
> <snip>
> Zone PFN ranges:
>   DMA             0 ->     4096
>   DMA32        4096 ->  1048576
>   Normal    1048576 ->  1048576
> Movable zone start PFN for each node
> early_node_map[4] active PFN ranges
>     0:        0 ->      159
>     0:      256 ->   521844
>     0:   521961 ->   521964
>     0:   521983 ->   521984
> On node 0 totalpages: 521751
>   DMA zone: 56 pages used for memmap
>   DMA zone: 1271 pages reserved
>   DMA zone: 2672 pages, LIFO batch:0
>   DMA32 zone: 7081 pages used for memmap
>   DMA32 zone: 510671 pages, LIFO batch:31
>   Normal zone: 0 pages used for memmap
>   Movable zone: 0 pages used for memmap
> </snip>
> 
> With 2.6.27-rc1 I only get pages listed for 2 zones (bottom part):
> <snip>
> Zone PFN ranges:
>   DMA      0x00000000 -> 0x00001000
>   DMA32    0x00001000 -> 0x00100000
>   Normal   0x00100000 -> 0x00100000
> Movable zone start PFN for each node

I'd have expected something to be printed here?

> early_node_map[4] active PFN ranges
>     0: 0x00000000 -> 0x0000009f
>     0: 0x00000100 -> 0x0007f674
>     0: 0x0007f6e9 -> 0x0007f6ec
>     0: 0x0007f6ff -> 0x0007f700
> On node 0 totalpages: 521751
>   DMA zone: 2072 pages, LIFO batch:0
>   DMA32 zone: 506625 pages, LIFO batch:31
> </snip>

It could be deliberate, I forget.  Maybe we trimmed nr_nodemap_entries
to not include empty zones.  Hopefully Mel will recall.

> Note that totalpages is the same and that for 2.6.26 the sum of pages for 
> all listed zones is equal to totalpages. Seems we've lost useful info 
> here.
> 
> I also seem to have "lost" 600 LIFO batch pages for DMA and 4000 for DMA32 
> between the kernel versions although that could be due to config changes 
> (I enabled some extra debugging options). Harder to tell though without 
> the info where they've gone...

I can't see that from the above information?

> Cheers,
> FJP
> 
> P.S. As a user I really don't find the hex values easier to read/use than 
> the decimal values. Except maybe for the "Zone PFN ranges" where things 
> seem to be nicely aligned.

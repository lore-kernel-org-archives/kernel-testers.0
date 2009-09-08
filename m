From: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Subject: Re: ipw2200: firmware DMA loading rework
Date: Tue, 8 Sep 2009 12:00:41 +0100
Message-ID: <20090908110041.GE28127__11576.6744631857$1252407678$gmane$org@csn.ul.ie>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera> <1251430951.3704.181.camel@debian> <200908301437.42133.bzolnier@gmail.com> <200909021948.13262.bzolnier@gmail.com> <43e72e890909021102g7f844c79xefccf305f5f5c5b6@mail.gmail.com> <20090903124913.GA26110@csn.ul.ie> <20090905142837.GI16217@mit.edu>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090905142837.GI16217-3s7WtUTddSA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>, "Luis R. Rodriguez" <mcgrof-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Aneesh Kumar K.V" <aneesh.kumar-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Zhu Yi <yi>

On Sat, Sep 05, 2009 at 10:28:37AM -0400, Theodore Tso wrote:
> On Thu, Sep 03, 2009 at 01:49:14PM +0100, Mel Gorman wrote:
> > > 
> > > This looks very similar to the kmemleak ext4 reports upon a mount. If
> > > it is the same issue, which from the trace it seems it is, then this
> > > is due to an extra kmalloc() allocation and this apparently will not
> > > get fixed on 2.6.31 due to the closeness of the merge window and the
> > > non-criticalness this issue has been deemed.
> 
> No, it's a different problem.
> 
> > I suspect the more pressing concern is why is this kmalloc() resulting in
> > an order-5 allocation request? What size is the buffer being requested?
> > Was that expected?  What is the contents of /proc/slabinfo in case a buffer
> > that should have required order-1 or order-2 is using a higher order for
> > some reason.
> 
> It's allocating 68,000 bytes for the mb_history structure, which is
> used for debugging purposes.  That's why it's optional and we continue
> if it's not allocated.  We should fix it to use vmalloc()

You could call with kmalloc(FLAGS|GFP_NOWARN) with a fallback to
vmalloc() and a disable if vmalloc() fails as well.  Maybe check out what
kernel/profile.c#profile_init() to allocate a large buffer and do something
similar?

> and I'm
> inclined to turn it off by default since it's not worth the overhead,
> and most ext4 users won't find it useful or interesting.
> 

I can't comment as I don't know what sort of debugging it's useful for.

-- 
Mel Gorman
Part-time Phd Student                          Linux Technology Center
University of Limerick                         IBM Dublin Software Lab

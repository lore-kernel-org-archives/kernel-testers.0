From: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [Bug #14141] order 2 page allocation failures in iwlagn
Date: Mon, 19 Oct 2009 04:44:52 +0200
Message-ID: <200910190444.55867.elendil@planet.nl>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <200910190133.33183.elendil@planet.nl> <1255912562.6824.9.camel@penberg-laptop>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1255912562.6824.9.camel@penberg-laptop>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Reinette Chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Mohamed Abbas <mohamed.abbas-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org

On Monday 19 October 2009, Pekka Enberg wrote:
> On Wednesday 14 October 2009, Frans Pop wrote:
> > On Thursday 15 October 2009, Mel Gorman wrote:
> > > Outside the range of commits suspected of causing problems was the
> > > following. It's extremely low probability
> > >
> > > Commit 8aa7e84 Fix congestion_wait() sync/async vs read/write
> > > confusion This patch alters the call to congestion_wait() in the
> > > page allocator. Frankly, I don't get the change but it might worth
> > > checking if replacing BLK_RW_ASYNC with WRITE on top of 2.6.31 makes
> > > any difference
> >
> > This is the real culprit. Mel: thanks very much for looking beyond the
> > area I identified. Your overview of mm changes was exactly what I
> > needed and really helped a lot during my later tests.
> >
> > This commit definitely causes most of the problems; confirmed by
> > reverting it on top of 2.6.31 (also requires reverting 373c0a7e, which
> > is a later build fix).
>
> Mel/Jens, any ideas why commit 8aa7e84 makes us run out of high order
> pages? Should we be using BLK_RW_SYNC in mm/page_alloc.c instead of
> BLK_RW_ASYNC?

I'm starting to think that this commit may not be directly related to high 
order allocation failures. The fact that I'm seeing SKB allocation 
failures earlier because of this commit could be just a side effect.
It could be that instead the main impact of this commit is on encrypted 
file system and/or encrypted swap (kcryptd).

Besides mm the commit also touches dm-crypt (and nfs/write.c, but as I'm 
only reading from NFS that's unlikely).

Reason for thinking this is that reverting it makes no difference for Karol 
[1]. It will be interesting to see if it does make a difference for Sven 
Geggus [2].

/me wonders if we'll ever get to the bottom of this...

[1] http://lkml.org/lkml/2009/10/18/138
[2] http://lkml.org/lkml/2009/10/17/113

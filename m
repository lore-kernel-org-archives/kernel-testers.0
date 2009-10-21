From: Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] SLUB: Don't drop __GFP_NOFAIL completely from
	allocate_slab() (was: Re: [Bug #14265] ifconfig: page allocation
	failure. order:5,ode:0x8020 w/ e100)
Date: Wed, 21 Oct 2009 23:20:34 +0200
Message-ID: <20091021212034.GB2987@bizet.domek.prywatny>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <COE24pZSBH.A.rP.2MTxKB@chimera> <20091021200442.GA2987@bizet.domek.prywatny> <alpine.DEB.2.00.0910211400140.20010@chino.kir.corp.google.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=wPsVnXPtJwoGDURb6RvGdHeBMT6R2mfmMdrWOhbiE8c=;
        b=Z26JfvgLe4YfudtldyRe6SYeOIH1Cavz9fcuiBX22SFQD8GOEwmBpwUJKBLYRFqZo0
         SiHaCey5x+YGQ7ceGdJ8MozT20zdgD2sYKF5MWBsOTSe2sEfz7ScGspVlJffqPLYpvWl
         Y8tYY8D05VeTt/U3WMrFmyQlnIHVCPV+eVFS8=
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.00.0910211400140.20010-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Reinette Chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Mohamed Abbas <mohamed.abbas-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>

On Wed, Oct 21, 2009 at 02:06:41PM -0700, David Rientjes wrote:
> On Wed, 21 Oct 2009, Karol Lewandowski wrote:
> 
> > commit d6849591e042bceb66f1b4513a1df6740d2ad762
> > Author: Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date:   Wed Oct 21 21:01:20 2009 +0200
> > 
> >     SLUB: Don't drop __GFP_NOFAIL completely from allocate_slab()
> >     
> >     Commit ba52270d18fb17ce2cf176b35419dab1e43fe4a3 unconditionally
> >     cleared __GFP_NOFAIL flag on all allocations.
> >     
> 
> No, it clears __GFP_NOFAIL from the first allocation of oo_order(s->oo).  
> If that fails (and it's easy to fail, it has __GFP_NORETRY), another 
> allocation is attempted with oo_order(s->min), for which __GFP_NOFAIL 
> would be preserved if that's the slab cache's allocflags.

Right, patch is junk.

However, I haven't been able to trigger failures since I've switched
to SLAB allocator.  That patch seemed related (and wrong), but it
wasn't.

> >  		 */
> > -		page = alloc_slab_page(flags, node, oo);
> > +		page = alloc_slab_page(flags | nofail, node, oo);
> >  		if (!page)
> >  			return NULL;
> >  
> > 
> 
> This does nothing.  You may have missed that the lower order allocation is 
> passing 'flags' (which is a union of the gfp flags passed to 
> allocate_slab() based on the allocation context and the cache's 
> allocflags), and not alloc_gfp where __GFP_NOFAIL is masked.

Right, I missed that.

> Nack.
> 
> Note: slub isn't going to be a culprit in order 5 allocation failures 
> since they have kmalloc passthrough to the page allocator.

However, it might change fragmentation somewhat I guess.  This might
make problem more/less visible.

From: Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] SLUB: Don't drop __GFP_NOFAIL completely from
	allocate_slab() (was: Re: [Bug #14265] ifconfig: page allocation
	failure. order:5,ode:0x8020 w/ e100)
Date: Thu, 22 Oct 2009 23:33:53 +0200
Message-ID: <20091022213353.GA7137@bizet.domek.prywatny>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <COE24pZSBH.A.rP.2MTxKB@chimera> <20091021200442.GA2987@bizet.domek.prywatny> <alpine.DEB.2.00.0910211400140.20010@chino.kir.corp.google.com> <20091021212034.GB2987@bizet.domek.prywatny> <20091022102014.GL11778@csn.ul.ie>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=RQVLObTN8Nrrxtz0pvgC6eP9KZlC9YfOeOZ6b9IP8i4=;
        b=YzWRBtFK8AM0fvaSJEHSZ8OD7NmLtfIFm87okUHK5wYCxJCywLIMUDJZXD80QMqKw2
         lHADPlDDpV6d4OC0Fatky29lH/DwOmr7SRa6rb8XYaMD5TxGh6e7w91lthYF50z8N0Hz
         6PqLVQFz/xQmsHgPvJaCNlo0aAvoJD32R+79o=
Content-Disposition: inline
In-Reply-To: <20091022102014.GL11778-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Cc: Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Reinette Chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Mohamed Abbas <mohamed.abbas-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>

On Thu, Oct 22, 2009 at 11:20:14AM +0100, Mel Gorman wrote:
> On Wed, Oct 21, 2009 at 11:20:34PM +0200, Karol Lewandowski wrote:
> > > Note: slub isn't going to be a culprit in order 5 allocation failures 
> > > since they have kmalloc passthrough to the page allocator.
> > 
> > However, it might change fragmentation somewhat I guess.  This might
> > make problem more/less visible.
> > 
> 
> Did you have CONFIG_KMEMCHECK set by any chance?

No, kmemcheck (and kmemleak) was always disabled.

It's likely that's possible to trigger allocation failures with slab,
I just haven't been successful at it.  Lack of good testcase is really
problem here -- even if I can't trigger failures I can never be sure
that these wont appear in some strange moment.

BTW I'll test your patches (from another thread) shortly.

Thanks.

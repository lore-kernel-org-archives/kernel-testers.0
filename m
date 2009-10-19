From: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [Bug #14141] order 2 page allocation failures (generic)
Date: Mon, 19 Oct 2009 15:06:19 +0100
Message-ID: <20091019140619.GD9036@csn.ul.ie>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <200910190133.33183.elendil@planet.nl> <1255912562.6824.9.camel@penberg-laptop> <200910190444.55867.elendil@planet.nl> <alpine.DEB.2.00.0910191146110.1306@sebohet.brgvxre.pu> <1255946051.5941.2.camel@penberg-laptop> <20091019140145.GA4222@bizet.domek.prywatny>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20091019140145.GA4222-nLtalAL5mPp2RxbNQum0x1nzlInOXLuq@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Tobi Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Reinette Chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Mohamed Abbas <mohamed.abbas-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org

On Mon, Oct 19, 2009 at 04:01:45PM +0200, Karol Lewandowski wrote:
> On Mon, Oct 19, 2009 at 12:54:11PM +0300, Pekka Enberg wrote:
> > On Mon, 2009-10-19 at 11:49 +0200, Tobi Oetiker wrote:
> > > I have updated a fileserver to 2.6.31 today and I see page
> > > allocation failures from several parts of the system ... mostly nfs though ... (it is a nfs server).
> > > So I guess the problem must be quite generic:
> > 
> > Yup, it almost certainly is. Does this patch help?
> > 
> > http://lkml.org/lkml/2009/10/16/89
> 
> This patch seems to help in some cases.  Before applying this patch I
> was able to trigger alloc failures on different machine by booting
> kernel with "mem=256MB" and doing:
> 
>   $ gitk on-full-tree &
>   # rmmod e100
>   ... wait for few MBs in swap
>   # modprobe e100; ifup --force ethX
> 
> So here this patch helped -- with it, I was unable to trigger page
> allocation failures (testing was short, tough).  However, as I said
> here[1], I applied both of Mel's patches (including this one) and that
> didn't help my orginal issue (failures after suspend).
> 
> [1] http://lkml.org/lkml/2009/10/17/109
> 

Can you test with my kswapd patch applied and commits 373c0a7e,8aa7e847
reverted please?

-- 
Mel Gorman
Part-time Phd Student                          Linux Technology Center
University of Limerick                         IBM Dublin Software Lab

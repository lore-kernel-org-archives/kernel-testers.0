From: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [Bug #14141] order 2 page allocation failures (generic)
Date: Mon, 19 Oct 2009 14:31:46 +0100
Message-ID: <20091019133146.GB9036@csn.ul.ie>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <200910190133.33183.elendil@planet.nl> <1255912562.6824.9.camel@penberg-laptop> <200910190444.55867.elendil@planet.nl> <alpine.DEB.2.00.0910191146110.1306@sebohet.brgvxre.pu>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.00.0910191146110.1306-EjsAmf5DE5zIvOfxy3zmAzgUDZmNtoG9@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Tobi Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>
Cc: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Reinette Chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Mohamed Abbas <mohamed.abbas-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org

On Mon, Oct 19, 2009 at 11:49:08AM +0200, Tobi Oetiker wrote:
> Today Frans Pop wrote:
> 
> >
> > I'm starting to think that this commit may not be directly related to high
> > order allocation failures. The fact that I'm seeing SKB allocation
> > failures earlier because of this commit could be just a side effect.
> > It could be that instead the main impact of this commit is on encrypted
> > file system and/or encrypted swap (kcryptd).
> >
> > Besides mm the commit also touches dm-crypt (and nfs/write.c, but as I'm
> > only reading from NFS that's unlikely).
> 
> I have updated a fileserver to 2.6.31 today and I see page
> allocation failures from several parts of the system ... mostly nfs though ... (it is a nfs server).
> So I guess the problem must be quite generic:
> 
> 
> Oct 19 07:10:02 johan kernel: [23565.684110] swapper: page allocation failure. order:5, mode:0x4020 [kern.warning]
> Oct 19 07:10:02 johan kernel: [23565.684118] Pid: 0, comm: swapper Not tainted 2.6.31-02063104-generic #02063104 [kern.warning]
> Oct 19 07:10:02 johan kernel: [23565.684121] Call Trace: [kern.warning]
> Oct 19 07:10:02 johan kernel: [23565.684124]  <IRQ>  [<ffffffff810da5a2>] __alloc_pages_slowpath+0x3b2/0x4c0 [kern.warning]
> 

What's the rest of the stack trace? I'm wondering where a large number
of order-5 GFP_ATOMIC allocations are coming from. It seems different to
the e100 problem where there is one GFP_ATOMIC allocation while the
firmware is being loaded.

Thanks

> 
> Oct 19 08:59:16 johan kernel: [30120.685647] __ratelimit: 13 callbacks suppressed [kern.warning]
> Oct 19 08:59:16 johan kernel: [30120.685654] nfsd: page allocation failure. order:5, mode:0x4020 [kern.warning]
> Oct 19 08:59:16 johan kernel: [30120.685660] Pid: 6071, comm: nfsd Not tainted 2.6.31-02063104-generic #02063104 [kern.warning]
> Oct 19 08:59:16 johan kernel: [30120.685663] Call Trace: [kern.warning]
> Oct 19 08:59:16 johan kernel: [30120.685666]  <IRQ>  [<ffffffff810da5a2>] __alloc_pages_slowpath+0x3b2/0x4c0 [kern.warning]
> 
> Oct 19 09:36:31 johan kernel: [32355.708345] __ratelimit: 16 callbacks suppressed [kern.warning]
> Oct 19 09:36:31 johan kernel: [32355.708352] nfsd: page allocation failure. order:5, mode:0x4020 [kern.warning]
> Oct 19 09:36:31 johan kernel: [32355.708358] Pid: 6087, comm: nfsd Not tainted 2.6.31-02063104-generic #02063104 [kern.warning]
> Oct 19 09:36:31 johan kernel: [32355.708361] Call Trace: [kern.warning]
> Oct 19 09:36:31 johan kernel: [32355.708364]  <IRQ>  [<ffffffff810da5a2>] __alloc_pages_slowpath+0x3b2/0x4c0 [kern.warning]
> 
> Oct 19 10:52:01 johan kernel: [36885.358312] __ratelimit: 31 callbacks suppressed [kern.warning]
> Oct 19 10:52:01 johan kernel: [36885.358319] nfsd: page allocation failure. order:5, mode:0x4020 [kern.warning]
> Oct 19 10:52:01 johan kernel: [36885.358325] Pid: 6057, comm: nfsd Not tainted 2.6.31-02063104-generic #02063104 [kern.warning]
> Oct 19 10:52:01 johan kernel: [36885.358327] Call Trace: [kern.warning]
> Oct 19 10:52:01 johan kernel: [36885.358331]  <IRQ>  [<ffffffff810da5a2>] __alloc_pages_slowpath+0x3b2/0x4c0 [kern.warning]
> 
> Oct 19 11:12:01 johan kernel: [38085.163831] events/3: page allocation failure. order:5, mode:0x4020 [kern.warning]
> Oct 19 11:12:01 johan kernel: [38085.163840] Pid: 18, comm: events/3 Not tainted 2.6.31-02063104-generic #02063104 [kern.warning]
> Oct 19 11:12:01 johan kernel: [38085.163843] Call Trace: [kern.warning]
> Oct 19 11:12:01 johan kernel: [38085.163846]  <IRQ>  [<ffffffff810da5a2>] __alloc_pages_slowpath+0x3b2/0x4c0 [kern.warning]
> 
> 
> 
> -- 
> Tobi Oetiker, OETIKER+PARTNER AG, Aarweg 15 CH-4600 Olten, Switzerland
> http://it.oetiker.ch tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org ++41 62 775 9902 / sb: -9900
> 

-- 
Mel Gorman
Part-time Phd Student                          Linux Technology Center
University of Limerick                         IBM Dublin Software Lab

From: Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>
Subject: Re: [Bug #14141] order 2 page allocation failures (generic)
Date: Mon, 19 Oct 2009 15:40:05 +0200 (CEST)
Message-ID: <alpine.DEB.2.00.0910191538450.8526@sebohet.brgvxre.pu>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <200910190133.33183.elendil@planet.nl> <1255912562.6824.9.camel@penberg-laptop> <200910190444.55867.elendil@planet.nl> <alpine.DEB.2.00.0910191146110.1306@sebohet.brgvxre.pu> <20091019133146.GB9036@csn.ul.ie>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091019133146.GB9036-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Cc: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Reinette Chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Mohamed Abbas <mohamed.abbas-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org

Hi Mel,

Today Mel Gorman wrote:

> On Mon, Oct 19, 2009 at 11:49:08AM +0200, Tobi Oetiker wrote:
> > Today Frans Pop wrote:
> >
> > >
> > > I'm starting to think that this commit may not be directly related to high
> > > order allocation failures. The fact that I'm seeing SKB allocation
> > > failures earlier because of this commit could be just a side effect.
> > > It could be that instead the main impact of this commit is on encrypted
> > > file system and/or encrypted swap (kcryptd).
> > >
> > > Besides mm the commit also touches dm-crypt (and nfs/write.c, but as I'm
> > > only reading from NFS that's unlikely).
> >
> > I have updated a fileserver to 2.6.31 today and I see page
> > allocation failures from several parts of the system ... mostly nfs though ... (it is a nfs server).
> > So I guess the problem must be quite generic:
> >
> >
> > Oct 19 07:10:02 johan kernel: [23565.684110] swapper: page allocation failure. order:5, mode:0x4020 [kern.warning]
> > Oct 19 07:10:02 johan kernel: [23565.684118] Pid: 0, comm: swapper Not tainted 2.6.31-02063104-generic #02063104 [kern.warning]
> > Oct 19 07:10:02 johan kernel: [23565.684121] Call Trace: [kern.warning]
> > Oct 19 07:10:02 johan kernel: [23565.684124]  <IRQ>  [<ffffffff810da5a2>] __alloc_pages_slowpath+0x3b2/0x4c0 [kern.warning]
> >
>
> What's the rest of the stack trace? I'm wondering where a large number
> of order-5 GFP_ATOMIC allocations are coming from. It seems different to
> the e100 problem where there is one GFP_ATOMIC allocation while the
> firmware is being loaded.

Oct 19 07:10:02 johan kernel: [23565.684110] swapper: page allocation failure. order:5, mode:0x4020 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684118] Pid: 0, comm: swapper Not tainted 2.6.31-02063104-generic #02063104 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684121] Call Trace: [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684124]  <IRQ>  [<ffffffff810da5a2>] __alloc_pages_slowpath+0x3b2/0x4c0 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684157]  [<ffffffff810da7e5>] __alloc_pages_nodemask+0x135/0x140 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684164]  [<ffffffff815065b4>] ? _spin_unlock_bh+0x14/0x20 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684170]  [<ffffffff8110b368>] kmalloc_large_node+0x68/0xc0 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684175]  [<ffffffff8110f15a>] __kmalloc_node_track_caller+0x11a/0x180 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684181]  [<ffffffff8140ffd2>] ? skb_copy+0x32/0xa0 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684185]  [<ffffffff8140d8b6>] __alloc_skb+0x76/0x180 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684205]  [<ffffffff8140ffd2>] skb_copy+0x32/0xa0 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684221]  [<ffffffffa050f33c>] vboxNetFltLinuxPacketHandler+0x5c/0xd0 [vboxnetflt] [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684227]  [<ffffffff81416a6d>] dev_queue_xmit_nit+0x10d/0x170 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684231]  [<ffffffff81416f79>] dev_hard_start_xmit+0x189/0x1c0 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684236]  [<ffffffff8142f071>] __qdisc_run+0x1a1/0x230 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684240]  [<ffffffff81418a88>] dev_queue_xmit+0x238/0x310 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684246]  [<ffffffff8144864b>] ip_finish_output+0x11b/0x2f0 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684250]  [<ffffffff814488a9>] ip_output+0x89/0xd0 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684254]  [<ffffffff814478c0>] ip_local_out+0x20/0x30 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684258]  [<ffffffff814481ab>] ip_queue_xmit+0x22b/0x3f0 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684264]  [<ffffffff8145d5e5>] tcp_transmit_skb+0x345/0x4e0 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684269]  [<ffffffff8145eaf6>] tcp_write_xmit+0xb6/0x2e0 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684273]  [<ffffffff8145ed8b>] __tcp_push_pending_frames+0x2b/0xa0 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684277]  [<ffffffff8145b249>] tcp_rcv_established+0x459/0x6d0 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684282]  [<ffffffff814630bd>] tcp_v4_do_rcv+0x12d/0x140 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684285]  [<ffffffff8146365e>] tcp_v4_rcv+0x58e/0x7c0 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684289]  [<ffffffff8144276d>] ip_local_deliver_finish+0x11d/0x2b0 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684293]  [<ffffffff8144293b>] ip_local_deliver+0x3b/0x90 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684297]  [<ffffffff81442ad6>] ip_rcv_finish+0x146/0x420 [kern.warning]
Oct 19 07:10:02 johan kernel: [23565.684301]  [<ffffffff8144304b>] ip_rcv+0x29b/0x370 [kern.warning]
Oct 19 07:10:04 johan kernel: [23565.684304]  [<ffffffff81418f9a>] netif_receive_skb+0x38a/0x4d0 [kern.warning]
Oct 19 07:10:04 johan kernel: [23565.684308]  [<ffffffff81419268>] napi_skb_finish+0x48/0x60 [kern.warning]
Oct 19 07:10:04 johan kernel: [23565.684311]  [<ffffffff81419724>] napi_gro_receive+0x34/0x40 [kern.warning]
Oct 19 07:10:04 johan kernel: [23565.684330]  [<ffffffffa006b623>] tg3_rx+0x373/0x4b0 [tg3] [kern.warning]
Oct 19 07:10:04 johan kernel: [23565.684339]  [<ffffffffa006cbf0>] tg3_poll_work+0x70/0xf0 [tg3] [kern.warning]
Oct 19 07:10:04 johan kernel: [23565.684347]  [<ffffffffa006ccae>] tg3_poll+0x3e/0xe0 [tg3] [kern.warning]
Oct 19 07:10:04 johan kernel: [23565.684350]  [<ffffffff814198d2>] net_rx_action+0x102/0x210 [kern.warning]
Oct 19 07:10:04 johan kernel: [23565.684357]  [<ffffffff81061d24>] __do_softirq+0xc4/0x1f0 [kern.warning]
Oct 19 07:10:04 johan kernel: [23565.684362]  [<ffffffff8101314c>] call_softirq+0x1c/0x30 [kern.warning]
Oct 19 07:10:04 johan kernel: [23565.684365]  [<ffffffff81014945>] do_softirq+0x55/0x90 [kern.warning]
Oct 19 07:10:04 johan kernel: [23565.684369]  [<ffffffff8106116b>] irq_exit+0x7b/0x90 [kern.warning]
Oct 19 07:10:04 johan kernel: [23565.684372]  [<ffffffff81013e93>] do_IRQ+0x73/0xe0 [kern.warning]
Oct 19 07:10:04 johan kernel: [23565.684378]  [<ffffffff81012993>] ret_from_intr+0x0/0x11 [kern.warning]
Oct 19 07:10:04 johan kernel: [23565.684381]  <EOI>  [<ffffffff810318b6>] ? native_safe_halt+0x6/0x10 [kern.warning]
Oct 19 07:10:04 johan kernel: [23565.684391]  [<ffffffff81019cd8>] ? default_idle+0x48/0xe0 [kern.warning]
Oct 19 07:10:04 johan kernel: [23565.684396]  [<ffffffff8150929d>] ? __atomic_notifier_call_chain+0xd/0x10 [kern.warning]
Oct 19 07:10:04 johan kernel: [23565.684400]  [<ffffffff815092b1>] ? atomic_notifier_call_chain+0x11/0x20 [kern.warning]
Oct 19 07:10:04 johan kernel: [23565.684404]  [<ffffffff810107c8>] ? cpu_idle+0x98/0xe0 [kern.warning]
Oct 19 07:10:04 johan kernel: [23565.684410]  [<ffffffff81500d95>] ? start_secondary+0x95/0xc0 [kern.warning]

if you need more, I can send you a whole bunch of them ...

cheers
tobi

-- 
Tobi Oetiker, OETIKER+PARTNER AG, Aarweg 15 CH-4600 Olten, Switzerland
http://it.oetiker.ch tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org ++41 62 775 9902 / sb: -9900

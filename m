From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: 2.6.26-rc3: page allocation failure
Date: Mon, 26 May 2008 04:53:54 +0400
Message-ID: <a4423d670805251753l2ec51b0p7c4b72414ce612f2@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        bh=dB4X9mGhtgmfrJ5WD2HVhvyqltkWzi6kLurKCUI9o/0=;
        b=DRT6jv5kPlHzUFU1KftsaTV6RYA0swDegWVEU9AGcZWFikIxZo5pg+vhGjh/IPyZyodPjJ4ly/i5KIKKxHNu3JMlBvAAqP46iVWCQQ1H6Gn13b0ZQPDqV05hRCkFa3kvFFNkFLL9jX+y8wBjBI7A4Aip69NtA2/qKG3pXbm6QdQ=
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

What is that? Is it a bug?
As you see it is not out of memory.

nfsd: page allocation failure. order:1, mode:0x4020
Pid: 3196, comm: nfsd Not tainted 2.6.26-rc3-00332-gcbff290 #1
 [<c0146676>] __alloc_pages_internal+0x38b/0x3a7
 [<c01466a9>] __alloc_pages+0xa/0xc
 [<c015b3ac>] __slab_alloc+0x1f0/0x513
 [<c015c668>] __kmalloc_track_caller+0x7a/0xe8
 [<c031b0ef>] ? tcp_collapse+0x124/0x2dd
 [<c031b0ef>] ? tcp_collapse+0x124/0x2dd
 [<c02f55ed>] __alloc_skb+0x4a/0x107
 [<c031b0ef>] tcp_collapse+0x124/0x2dd
 [<c031b403>] tcp_prune_queue+0x15b/0x1b8
 [<c031b632>] tcp_data_queue+0x1d2/0xacf
 [<c02f6a7c>] ? __skb_checksum_complete_head+0x13/0x57
 [<c02f6acb>] ? __skb_checksum_complete+0xb/0x10
 [<c031d3d7>] tcp_rcv_established+0x576/0x74b
 [<c0321d8b>] tcp_v4_do_rcv+0x25/0x150
 [<c0358def>] ? _spin_lock_nested+0x4f/0x57
 [<c0323500>] tcp_v4_rcv+0x45b/0x4a3
 [<c030ce5b>] ip_local_deliver+0x80/0xcb
 [<c030d241>] ip_rcv+0x39b/0x3c2
 [<c012bc13>] ? ktime_get_real+0x13/0x2f
 [<c02f9338>] netif_receive_skb+0x1ef/0x21d
 [<c02c3cce>] nv_napi_poll+0x200/0x612
 [<c02fb22f>] net_rx_action+0x77/0x156
 [<c011dccb>] __do_softirq+0x51/0x9e
 [<c0104781>] do_softirq+0x58/0xa8
 [<c013f997>] ? handle_fasteoi_irq+0x0/0xab
 [<c011dbf6>] irq_exit+0x3b/0x7c
 [<c0104890>] do_IRQ+0xbf/0xd4
 [<c010362e>] common_interrupt+0x2e/0x34
 [<c01498f1>] ? remove_mapping+0x8c/0xa4
 [<c0358cbb>] ? _write_unlock_irq+0x28/0x42
 [<c01498f1>] remove_mapping+0x8c/0xa4
 [<c0149d56>] shrink_page_list+0x44d/0x510
 [<c0149ee4>] shrink_inactive_list+0xcb/0x28d
 [<c035947f>] ? _spin_unlock_irq+0x2d/0x42
 [<c0147763>] ? throttle_vm_writeout+0x24/0x6c
 [<c014a155>] shrink_zone+0xaf/0xce
 [<c014a475>] try_to_free_pages+0x1ae/0x2a1
 [<c01493e7>] ? isolate_pages_global+0x0/0x3e
 [<c014652a>] __alloc_pages_internal+0x23f/0x3a7
 [<c01466a9>] __alloc_pages+0xa/0xc
 [<c0147f46>] __do_page_cache_readahead+0xaa/0x16a
 [<c0132c16>] ? print_lock_contention_bug+0x11/0xbd
 [<c0148200>] ondemand_readahead+0x119/0x127
 [<c0148260>] page_cache_async_readahead+0x52/0x5d
 [<c0178e13>] generic_file_splice_read+0x290/0x4a8
 [<c035936d>] ? _spin_unlock+0x27/0x3c
 [<c0250e01>] ? _atomic_dec_and_lock+0x25/0x30
 [<c016e9bb>] ? iput+0x24/0x4e
 [<c01caeef>] ? find_acceptable_alias+0x18/0xb4
 [<c01cdcb7>] ? nfsd_acceptable+0x0/0xc9
 [<c01cb026>] ? exportfs_decode_fh+0x9b/0x1a1
 [<c015aa05>] ? check_object+0x130/0x18c
 [<c01241b7>] ? groups_free+0x34/0x38
 [<c017821d>] ? spd_release_page+0x0/0xf
 [<c0239e6e>] xfs_splice_read+0x4b/0x78
 [<c023767c>] xfs_file_splice_read+0x24/0x29
 [<c017815a>] do_splice_to+0x45/0x63
 [<c01783ce>] splice_direct_to_actor+0xab/0x150
 [<c01ce8c0>] ? nfsd_direct_splice_actor+0x0/0xf
 [<c01ce7dd>] nfsd_vfs_read+0x1ed/0x2d0
 [<c01cec4c>] nfsd_read+0x82/0x99
 [<c01d41b8>] nfsd3_proc_read+0xdf/0x12a
 [<c01cb307>] nfsd_dispatch+0xcf/0x19e
 [<c03404d4>] svc_process+0x3b3/0x68b
 [<c01cb835>] nfsd+0x168/0x26b
 [<c01cb6cd>] ? nfsd+0x0/0x26b
 [<c01037d3>] kernel_thread_helper+0x7/0x10
 =======================
Mem-info:
DMA per-cpu:
CPU    0: hi:    0, btch:   1 usd:   0
Normal per-cpu:
CPU    0: hi:  186, btch:  31 usd: 143
HighMem per-cpu:
CPU    0: hi:  186, btch:  31 usd: 175
Active:61419 inactive:281189 dirty:213 writeback:0 unstable:0
 free:7053 slab:35794 mapped:15079 pagetables:196 bounce:0
DMA free:3520kB min:68kB low:84kB high:100kB active:0kB inactive:0kB
present:16256kB pages_scanned:0 all_unreclaimable? no
lowmem_reserve[]: 0 873 1508 1508
Normal free:24136kB min:3744kB low:4680kB high:5616kB active:132692kB
inactive:585348kB present:894080kB pages_scanned:0 all_unreclaimable?
no
lowmem_reserve[]: 0 0 5079 5079
HighMem free:556kB min:512kB low:1192kB high:1872kB active:112984kB
inactive:539408kB present:650180kB pages_scanned:0 all_unreclaimable?
no
lowmem_reserve[]: 0 0 0 0
DMA: 8*4kB 10*8kB 33*16kB 28*32kB 9*64kB 1*128kB 1*256kB 0*512kB
1*1024kB 0*2048kB 0*4096kB = 3520kB
Normal: 5944*4kB 7*8kB 1*16kB 1*32kB 0*64kB 0*128kB 1*256kB 0*512kB
0*1024kB 0*2048kB 0*4096kB = 24136kB
HighMem: 29*4kB 3*8kB 2*16kB 0*32kB 0*64kB 1*128kB 1*256kB 0*512kB
0*1024kB 0*2048kB 0*4096kB = 556kB
330002 total pagecache pages
Swap cache: add 40, delete 40, find 0/1
Free swap  = 497884kB
Total swap = 498004kB
393200 pages of RAM
163824 pages of HIGHMEM
5214 reserved pages
153797 pages shared
0 pages swap cached
213 pages dirty
0 pages writeback
15079 pages mapped
35809 pages slab
196 pages pagetables
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

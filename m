From: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
	2.6.22 -&gt; 2.6.28
Date: Tue, 18 Nov 2008 13:29:06 +0100
Message-ID: <1227011346.6000.52.camel@marge.simson.net>
References: <alpine.LFD.2.00.0811170937540.3468@nehalem.linux-foundation.org>
	 <20081117182320.GA26844@elte.hu> <20081117184951.GA5585@elte.hu>
	 <20081117.113936.81699150.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117.113936.81699150.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: mingo-X9Un+BFzKDI@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org

On Mon, 2008-11-17 at 11:39 -0800, David Miller wrote:
> From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> Date: Mon, 17 Nov 2008 19:49:51 +0100
> 
> > 
> > * Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
> > 
> > 4> The place for the sock_rfree() hit looks a bit weird, and i'll 
> > > investigate it now a bit more to place the real overhead point 
> > > properly. (i already mapped the test-bit overhead: that comes from 
> > > napi_disable_pending())
> > 
> > ok, here's a new set of profiles. (again for tbench 64-thread on a 
> > 16-way box, with v2.6.28-rc5-19-ge14c8bf and with the kernel config i 
> > posted before.)
> 
> Again, do a non-NMI profile and the top (at least for me)
> looks like this:
> 
> samples  %        app name                 symbol name
> 473       6.3928  vmlinux                  finish_task_switch
> 349       4.7169  vmlinux                  tcp_v4_rcv
> 327       4.4195  vmlinux                  U3copy_from_user
> 322       4.3519  vmlinux                  tl0_linux32
> 178       2.4057  vmlinux                  tcp_ack
> 170       2.2976  vmlinux                  tcp_sendmsg
> 167       2.2571  vmlinux                  U3copy_to_user
> 
> That tcp_v4_rcv() hit is %98 on the wake_up() call it does.

Easy enough, since i don't know how to do spiffy NMI profile.. yet ;-) 

I revived the 2.6.25 kernel where I tested back-ports of recent sched
fixes, and did a non-NMI profile of 2.6.22.19 and the back-port kernel.

The test kernel has all clock fixes 25->.git, min_vruntime accuracy fix
native_read_tsc() fix, and back looking buddy.  No knobs turned, and
only testing one pair per CPU, as to not take unfair advantage of back
looking buddy.  Netperf TCP_RR (hits sched harder) looks about the same.

Tbench 4 throughput was so close you would call these two twins.

2.6.22.19-smp
CPU: Core 2, speed 2400 MHz (estimated)
Counted CPU_CLK_UNHALTED events (Clock cycles when not halted) with a unit mask of 0x00 (Unhalted core cycles) count 100000
vma      samples  %        symbol name
ffffffff802e6670 575909   13.7425  copy_user_generic_string
ffffffff80422ad8 175649    4.1914  schedule
ffffffff803a522d 133152    3.1773  tcp_sendmsg
ffffffff803a9387 128911    3.0761  tcp_ack
ffffffff803b65f7 116562    2.7814  tcp_v4_rcv
ffffffff803aeac8 116541    2.7809  tcp_transmit_skb
ffffffff8039eb95 112133    2.6757  ip_queue_xmit
ffffffff80209e20 110945    2.6474  system_call
ffffffff8037b720 108277    2.5837  __kfree_skb
ffffffff803a65cd 105493    2.5173  tcp_recvmsg
ffffffff80210f87 97947     2.3372  read_tsc
ffffffff802085b6 95255     2.2730  __switch_to
ffffffff803803f1 82069     1.9584  netif_rx
ffffffff8039f645 80937     1.9313  ip_output
ffffffff8027617d 74585     1.7798  __slab_alloc
ffffffff803824a0 70928     1.6925  process_backlog
ffffffff803ad9a5 69574     1.6602  tcp_rcv_established
ffffffff80399d40 55453     1.3232  ip_rcv
ffffffff803b07d1 53256     1.2708  __tcp_push_pending_frames
ffffffff8037b49c 52565     1.2543  skb_clone
ffffffff80276e97 49690     1.1857  __kmalloc_track_caller
ffffffff80379d05 45450     1.0845  sock_wfree
ffffffff80223d82 44851     1.0702  effective_prio
ffffffff803826b6 42417     1.0122  net_rx_action
ffffffff8027684c 42341     1.0104  kfree

2.6.25.20-test-smp
CPU: Core 2, speed 2400 MHz (estimated)
Counted CPU_CLK_UNHALTED events (Clock cycles when not halted) with a unit mask of 0x00 (Unhalted core cycles) count 100000
vma      samples  %        symbol name
ffffffff80301450 576125   14.0874  copy_user_generic_string
ffffffff803cf8d9 127997    3.1298  tcp_transmit_skb
ffffffff803c9eac 125402    3.0663  tcp_ack
ffffffff80454da3 122337    2.9914  schedule
ffffffff803c673c 120401    2.9440  tcp_sendmsg
ffffffff8039aa9e 116554    2.8500  skb_release_all
ffffffff803c5abb 104840    2.5635  tcp_recvmsg
ffffffff8020a63d 92180     2.2540  __switch_to
ffffffff8020be20 79703     1.9489  system_call
ffffffff803bf460 79384     1.9411  ip_queue_xmit
ffffffff803a005c 78035     1.9081  netif_rx
ffffffff803ce56b 71223     1.7415  tcp_rcv_established
ffffffff8039ff70 66493     1.6259  process_backlog
ffffffff803d5a2d 61635     1.5071  tcp_v4_rcv
ffffffff803c1dae 60889     1.4889  __inet_lookup_established
ffffffff802126bc 54711     1.3378  native_read_tsc
ffffffff803d23bc 51843     1.2677  __tcp_push_pending_frames
ffffffff803bfb24 51821     1.2671  ip_finish_output
ffffffff8023700c 48248     1.1798  local_bh_enable
ffffffff803979bc 42221     1.0324  sock_wfree
ffffffff8039b12c 41279     1.0094  __alloc_skb


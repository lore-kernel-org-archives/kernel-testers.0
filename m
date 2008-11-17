From: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from 2.6.22
 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 20:43:03 +0100
Message-ID: <4921C947.9070609@cosmosbay.com>
References: <alpine.LFD.2.00.0811170937540.3468@nehalem.linux-foundation.org>	<20081117182320.GA26844@elte.hu>	<20081117184951.GA5585@elte.hu> <20081117.113936.81699150.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117.113936.81699150.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: mingo-X9Un+BFzKDI@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org

David Miller a =E9crit :
> From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> Date: Mon, 17 Nov 2008 19:49:51 +0100
>=20
>> * Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
>>
>> 4> The place for the sock_rfree() hit looks a bit weird, and i'll=20
>>> investigate it now a bit more to place the real overhead point=20
>>> properly. (i already mapped the test-bit overhead: that comes from=20
>>> napi_disable_pending())
>> ok, here's a new set of profiles. (again for tbench 64-thread on a=20
>> 16-way box, with v2.6.28-rc5-19-ge14c8bf and with the kernel config =
i=20
>> posted before.)
>=20
> Again, do a non-NMI profile and the top (at least for me)
> looks like this:
>=20
> samples  %        app name                 symbol name
> 473       6.3928  vmlinux                  finish_task_switch
> 349       4.7169  vmlinux                  tcp_v4_rcv
> 327       4.4195  vmlinux                  U3copy_from_user
> 322       4.3519  vmlinux                  tl0_linux32
> 178       2.4057  vmlinux                  tcp_ack
> 170       2.2976  vmlinux                  tcp_sendmsg
> 167       2.2571  vmlinux                  U3copy_to_user
>=20
> That tcp_v4_rcv() hit is %98 on the wake_up() call it does.
>=20
>=20

Another profile from my tree (net-next-2.6 + some patches), on my machi=
ne


CPU: Core 2, speed 3000.22 MHz (estimated)
Counted CPU_CLK_UNHALTED events (Clock cycles when not halted) with a u=
nit mask of 0x00 (Unhalted core cycles) count 100000
samples  %        symbol name
223265    9.2711  __copy_user_zeroing_intel
87525     3.6345  __copy_user_intel
73203     3.0398  tcp_sendmsg
53229     2.2103  netif_rx
53041     2.2025  tcp_recvmsg
47241     1.9617  sysenter_past_esp
42888     1.7809  __copy_from_user_ll
40858     1.6966  tcp_transmit_skb
39390     1.6357  __switch_to
37363     1.5515  dst_release
36823     1.5291  __sk_dst_check_get
36050     1.4970  tcp_v4_rcv
35829     1.4878  __do_softirq
32333     1.3426  tcp_rcv_established
30451     1.2645  tcp_clean_rtx_queue
29758     1.2357  ip_queue_xmit
28497     1.1833  __copy_to_user_ll
28119     1.1676  release_sock
25218     1.0472  lock_sock_nested
23701     0.9842  __inet_lookup_established
23463     0.9743  tcp_ack
22989     0.9546  netif_receive_skb
21880     0.9086  sched_clock_cpu
20730     0.8608  tcp_write_xmit
20372     0.8460  ip_rcv
20336     0.8445  local_bh_enable
19153     0.7953  __update_sched_clock
18603     0.7725  skb_release_data
17020     0.7068  local_bh_enable_ip
16932     0.7031  process_backlog
16299     0.6768  ip_finish_output
16279     0.6760  dev_queue_xmit
15858     0.6585  sock_recvmsg
15641     0.6495  native_read_tsc
15454     0.6417  sock_wfree
15366     0.6381  update_curr
14585     0.6056  sys_socketcall
14564     0.6048  __alloc_skb
14519     0.6029  __tcp_select_window
14417     0.5987  tcp_current_mss
14391     0.5976  nf_iterate
14221     0.5905  page_address
14122     0.5864  local_bh_disable



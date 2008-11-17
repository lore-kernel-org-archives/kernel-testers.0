From: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from	2.6.22
 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 20:30:43 +0100
Message-ID: <4921C663.2050003@cosmosbay.com>
References: <20081117.011403.06989342.davem@davemloft.net> <20081117110119.GL28786@elte.hu> <4921539B.2000002@cosmosbay.com> <20081117161135.GE12081@elte.hu> <49219D36.5020801@cosmosbay.com> <20081117170844.GJ12081@elte.hu> <20081117172549.GA27974@elte.hu> <4921AAD6.3010603@cosmosbay.com> <alpine.LFD.2.00.0811170937540.3468@nehalem.linux-foundation.org> <20081117182320.GA26844@elte.hu> <20081117184951.GA5585@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117184951.GA5585-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>

Ingo Molnar a =E9crit :
> * Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
>=20
> 4> The place for the sock_rfree() hit looks a bit weird, and i'll=20
>> investigate it now a bit more to place the real overhead point=20
>> properly. (i already mapped the test-bit overhead: that comes from=20
>> napi_disable_pending())
>=20
> ok, here's a new set of profiles. (again for tbench 64-thread on a=20
> 16-way box, with v2.6.28-rc5-19-ge14c8bf and with the kernel config i=
=20
> posted before.)
>=20
> Here are the per major subsystem percentages:
>=20
>            NET       overhead ( 5786945/10096751): 57.31%
>            security  overhead (  925933/10096751):  9.17%
>            usercopy  overhead (  837887/10096751):  8.30%
>            sched     overhead (  753662/10096751):  7.46%
>            syscall   overhead (  268809/10096751):  2.66%
>            IRQ       overhead (  266500/10096751):  2.64%
>            slab      overhead (  180258/10096751):  1.79%
>            timer     overhead (   92986/10096751):  0.92%
>            pagealloc overhead (   87381/10096751):  0.87%
>            VFS       overhead (   53295/10096751):  0.53%
>            PID       overhead (   44469/10096751):  0.44%
>            pagecache overhead (   33452/10096751):  0.33%
>            gtod      overhead (   11064/10096751):  0.11%
>            IDLE      overhead (       0/10096751):  0.00%
> ---------------------------------------------------------
>                          left (  753878/10096751):  7.47%
>=20
> The breakdown is very similar to what i sent before, within noise.
>=20
> [ 'left' is random overhead from all around the place - i categorized=
=20
>   the 500 most expensive functions in the profile per subsystem.
>   I stopped short of doing it for all 1300+ functions: it's rather
>   laborous manual work even with hefty use of regex patterns.
>   It's also less meaningful in practice: the trend in the first 500
>   functions is present in the remaining 800 functions as well. I=20
>   watched the breakdown evolve as i increased the coverage - in=20
>   practice it is the first 100 functions that matter - it just doesnt=
=20
>   change after that. ]
>=20
> The readprofile output below seems structured in a more useful way no=
w=20
> - i tweaked compiler options to have the profiler hits spread out in =
a=20
> more meaningful way. I collected 10 million NMI profiler hits, and=20
> normalized the readprofile output up to 100%.
>=20
> [ I'll post per function analysis as i complete them, as a reply to
>   this mail. ]
>=20
> 	Ingo
>=20
> 100.000000 total
> ................
>   7.253355 copy_user_generic_string
>   3.934833 avc_has_perm_noaudit

>   3.356152 ip_queue_xmit

>   3.038025 skb_release_data
>   2.118525 skb_release_head_state
>   1.997533 tcp_ack
>   1.833688 tcp_recvmsg

>   1.717771 eth_type_trans
Strange, in my profile, eth_type_trans is not in the top 20
Maybe an alignment problem ?
Oh, I understand, you hit the netdevice->last_rx update probblem, alrea=
dy corrected on net-next-2.6

>   1.673249 __inet_lookup_established
TCP established/timewait table is now RCUified (for linux-2.6.29), this=
 one
should go down in profiles.=20

>   1.508888 system_call

>   1.469183 tcp_current_mss
Yes there is a divide that might be expensive. discussion on netdev.

>   1.431553 tcp_transmit_skb
>   1.385125 tcp_sendmsg
>   1.327643 tcp_v4_rcv
>   1.292328 nf_hook_thresh
>   1.203205 schedule
>   1.059501 nf_hook_slow
>   1.027373 constant_test_bit
>   0.945183 sock_rfree
>   0.922748 __switch_to
>   0.911605 netif_rx
>   0.876270 register_gifconf
>   0.788200 ip_local_deliver_finish
>   0.781467 dev_queue_xmit
>   0.766530 constant_test_bit
>   0.758208 _local_bh_enable_ip
>   0.747184 load_cr3
>   0.704341 memset_c
>   0.671260 sysret_check
>   0.651845 ip_finish_output2
>   0.620204 audit_free_names


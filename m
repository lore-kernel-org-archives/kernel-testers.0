From: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Subject: Re: eth_type_trans(): Re: [Bug #11308] tbench regression on each
 kernel release from 2.6.22 -&gt; 2.6.28
Date: Tue, 18 Nov 2008 09:49:15 +0100
Message-ID: <4922818B.1020303@cosmosbay.com>
References: <20081117182320.GA26844@elte.hu> <20081117184951.GA5585@elte.hu> <20081117212657.GH12020@elte.hu> <20081117.211645.193706814.davem@davemloft.net> <20081118083018.GI17838@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081118083018.GI17838-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org

Ingo Molnar a =E9crit :
> * David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org> wrote:
>=20
>> From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
>> Date: Mon, 17 Nov 2008 22:26:57 +0100
>>
>>> eth->h_proto access.
>> Yes, this is the first time a packet is touched on receive.
>>
>>> Given that this workload does localhost networking, my guess would =
be=20
>>> that eth->h_proto is bouncing around between 16 CPUs? At minimum th=
is=20
>>> read-mostly field should be separated from the bouncing bits.
>> It's the packet contents, there is no way to "seperate it".
>>
>> And it should be unlikely bouncing on your system under tbench, the=20
>> senders and receivers should hang out on the same cpu unless the=20
>> something completely stupid is happening.
>>
>> That's why I like running tbench with a num_threads command line=20
>> argument equal to the number of cpus, every cpu gets the two thread=20
>> talking to eachother over the TCP socket.
>=20
> yeah - and i posted the numbers for that too - it's the same=20
> throughput, within ~1% of noise.

Thinking once again about loopback driver, I recall a previous attempt
to call netif_receive_skb() instead of netif_rx() and pay the price
of cache line ping-pongs between cpus.

http://kerneltrap.org/mailarchive/linux-netdev/2008/2/21/939644

Maybe we could do that, with a temporary percpu stack, like we do in so=
ftirq
when CONFIG_4KSTACKS=3Dy

(arch/x86/kernel/irq_32.c  : call_on_stack(func, stack)

And do this only if the current cpu doesnt already use its softirq_stac=
k
(think about loopback re-entering loopback xmit because of TCP ACK for =
example)

Oh well... black magic, you are going to kill me :)


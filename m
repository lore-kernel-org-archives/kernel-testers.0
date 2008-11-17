From: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from	2.6.22
 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 18:33:10 +0100
Message-ID: <4921AAD6.3010603@cosmosbay.com>
References: <1ScKicKnTUE.A.VxH.DIHIJB@chimera> <NjF0-fuClJC.A.73B.cLHIJB@chimera> <20081117090648.GG28786@elte.hu> <20081117.011403.06989342.davem@davemloft.net> <20081117110119.GL28786@elte.hu> <4921539B.2000002@cosmosbay.com> <20081117161135.GE12081@elte.hu> <49219D36.5020801@cosmosbay.com> <20081117170844.GJ12081@elte.hu> <20081117172549.GA27974@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117172549.GA27974-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>

Ingo Molnar a =E9crit :
> * Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
>=20
>>> 4% on my machine, but apparently my machine is sooooo special (see=20
>>> oprofile thread), so maybe its cpus have a hard time playing with=20
>>> a contended cache line.
>>>
>>> It definitly needs more testing on other machines.
>>>
>>> Maybe you'll discover patch is bad on your machines, this is why=20
>>> it's in net-next-2.6
>> ok, i'll try it on my testbox too, to check whether it has any effec=
t=20
>> - find below the port to -git.
>=20
> it gives a small speedup of ~1% on my box:
>=20
>    before:      Throughput 3437.65 MB/sec 64 procs
>    after:       Throughput 3473.99 MB/sec 64 procs

Strange, I get 2350 MB/sec on my 8 cpus box. "tbench 8"

>=20
> ... although that's still a bit close to the natural tbench noise=20
> range so it's not conclusive and not like a smoking gun IMO.
>=20
> But i think this change might just be papering over the real=20
> scalability problem that this workload has in my opinion: that there'=
s=20
> a single localhost route/dst/device that millions of packets are=20
> squeezed through every second:

Yes, this point was mentioned on netdev a while back.

>=20
>  phoenix:~> ifconfig lo
>  lo        Link encap:Local Loopback =20
>            inet addr:127.0.0.1  Mask:255.0.0.0
>            UP LOOPBACK RUNNING  MTU:16436  Metric:1
>            RX packets:258001524 errors:0 dropped:0 overruns:0 frame:0
>            TX packets:258001524 errors:0 dropped:0 overruns:0 carrier=
:0
>            collisions:0 txqueuelen:0=20
>            RX bytes:679809512144 (633.1 GiB)  TX bytes:679809512144 (=
633.1 GiB)
>=20
> There does not seem to be any per CPU ness in localhost networking -=20
> it has a globally single-threaded rx/tx queue AFAICS even if both the=
=20
> client and server task is on the same CPU - how is that supposed to=20
> perform well? (but i might be missing something)

Stephen had a patch for this one too, but we got tbench noise too with =
this patch

http://kerneltrap.org/mailarchive/linux-netdev/2008/11/5/3926034


>=20
> What kind of test-system do you have - one with P4 style Xeon CPUs=20
> perhaps where dirty-cacheline cachemisses to DRAM were particularly=20
> expensive?

Its a HP BL460c g1

Dual quad-core cpus Intel E5450  @3.00GHz

So 8 logical cpus. My bench was "tbench 8"


From: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from	2.6.22
 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 17:35:02 +0100
Message-ID: <49219D36.5020801@cosmosbay.com>
References: <1ScKicKnTUE.A.VxH.DIHIJB@chimera> <NjF0-fuClJC.A.73B.cLHIJB@chimera> <20081117090648.GG28786@elte.hu> <20081117.011403.06989342.davem@davemloft.net> <20081117110119.GL28786@elte.hu> <4921539B.2000002@cosmosbay.com> <20081117161135.GE12081@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117161135.GE12081-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>

Ingo Molnar a =E9crit :
> * Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org> wrote:
>=20
>>> It all looks like pure old-fashioned straight overhead in the=20
>>> networking layer to me. Do we still touch the same global cacheline=
=20
>>> for every localhost packet we process? Anything like that would=20
>>> show up big time.
>> Yes we do, I find strange we dont see dst_release() in your NMI=20
>> profile
>>
>> I posted a patch ( commit 5635c10d976716ef47ae441998aeae144c7e7387=20
>> net: make sure struct dst_entry refcount is aligned on 64 bytes) (in=
=20
>> net-next-2.6 tree) to properly align struct dst_entry refcounter and=
=20
>> got 4% speedup on tbench on my machine.
>=20
> Ouch, +4% from a oneliner networking change? That's a _huge_ speedup=20
> compared to the things we were after in scheduler land. A lot of=20
> scheduler folks worked hard to squeeze the last 1-2% out of the=20
> scheduler fastpath (which was not trivial at all). The _full_=20
> scheduler accounts for only about 7% of the total system overhead her=
e=20
> on a 16-way box...

4% on my machine, but apparently my machine is sooooo special (see opro=
file thread),
so maybe its cpus have a hard time playing with a contended cache line.

It definitly needs more testing on other machines.

Maybe you'll discover patch is bad on your machines, this is why it's i=
n
net-next-2.6

>=20
> So why should we be handling this anything but a plain networking=20
> performance regression/weakness? The localhost scalability bottleneck=
=20
> has been reported a _long_ time ago.
>=20

struct dst_entry problem was already discovered a _long_ time ago
and probably solved at this time.

(commit f1dd9c379cac7d5a76259e7dffcd5f8edc697d17
Thu, 13 Mar 2008 05:52:37 +0000 (22:52 -0700)
[NET]: Fix tbench regression in 2.6.25-rc1)

Then, a gremlin came and broke the thing.

They are many contended cache lines in the system, we can do our
best to try to make them disappear. Thats not always possible.

Another contended cache line is the rwlock in iptables.
I remember Stephen had a patch to make the thing use RCU.

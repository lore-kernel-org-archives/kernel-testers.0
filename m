From: Eric Dumazet <dada1@cosmosbay.com>
Subject: Re: [Bug #11308] tbench regression on each kernel release from	2.6.22
 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 12:20:59 +0100
Message-ID: <4921539B.2000002@cosmosbay.com>
References: <1ScKicKnTUE.A.VxH.DIHIJB@chimera> <NjF0-fuClJC.A.73B.cLHIJB@chimera> <20081117090648.GG28786@elte.hu> <20081117.011403.06989342.davem@davemloft.net> <20081117110119.GL28786@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756145AbYKQLW0@vger.kernel.org>
In-Reply-To: <20081117110119.GL28786@elte.hu>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: Ingo Molnar <mingo@elte.hu>
Cc: David Miller <davem@davemloft.net>, rjw@sisk.pl, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, cl@linux-foundation.org, efault@gmx.de, a.p.zijlstra@chello.nl, Linus Torvalds <torvalds@linux-foundation.org>

Ingo Molnar a =E9crit :
> * David Miller <davem@davemloft.net> wrote:
>=20
>> From: Ingo Molnar <mingo@elte.hu>
>> Date: Mon, 17 Nov 2008 10:06:48 +0100
>>
>>> * Rafael J. Wysocki <rjw@sisk.pl> wrote:
>>>
>>>> This message has been generated automatically as a part of a repor=
t
>>>> of regressions introduced between 2.6.26 and 2.6.27.
>>>>
>>>> The following bug entry is on the current list of known regression=
s
>>>> introduced between 2.6.26 and 2.6.27.  Please verify if it still s=
hould
>>>> be listed and let me know (either way).
>>>>
>>>>
>>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11308
>>>> Subject		: tbench regression on each kernel release from  2.6.22 -=
&gt; 2.6.28
>>>> Submitter	: Christoph Lameter <cl@linux-foundation.org>
>>>> Date		: 2008-08-11 18:36 (98 days old)
>>>> References	: http://marc.info/?l=3Dlinux-kernel&m=3D12184798611949=
5&w=3D4
>>>> 		  http://marc.info/?l=3Dlinux-kernel&m=3D122125737421332&w=3D4
>>> Christoph, as per the recent analysis of Mike:
>>>
>>>  http://fixunix.com/kernel/556867-regression-benchmark-throughput-l=
oss-a622cf6-f7160c7-pull.html
>>>
>>> all scheduler components of this regression have been eliminated.
>>>
>>> In fact his numbers show that scheduler speedups since 2.6.22 have=20
>>> offset and hidden most other sources of tbench regression. (i.e. th=
e=20
>>> scheduler portion got 5% faster, hence it was able to offset a=20
>>> slowdown of 5% in other areas of the kernel that tbench triggers)
>> Although I respect the improvements, wake_up() is still several=20
>> orders of magnitude slower than it was in 2.6.22 and wake_up() is at=
=20
>> the top of the profiles in tbench runs.
>=20
> hm, several orders of magnitude slower? That contradicts Mike's=20
> numbers and my own numbers and profiles as well: see below.
>=20
> The scheduler's overhead barely even registers on a 16-way x86 system=
=20
> i'm running tbench on. Here's the NMI profile during 64 threads tbenc=
h=20
> on a 16-way x86 box with an v2.6.28-rc5 kernel [config attached]:
>=20
>   Throughput 3437.65 MB/sec 64 procs
>   =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>   21570252  total=20
>   ........
>    1494803  copy_user_generic_string=20
>     998232  sock_rfree=20
>     491471  tcp_ack=20
>     482405  ip_dont_fragment=20
>     470685  ip_local_deliver=20
>     436325  constant_test_bit         [ called by napi_disable_pendin=
g() ]
>     375469  avc_has_perm_noaudit=20
>     347663  tcp_sendmsg=20
>     310383  tcp_recvmsg=20
>     300412  __inet_lookup_established=20
>     294377  system_call=20
>     286603  tcp_transmit_skb=20
>     251782  selinux_ip_postroute=20
>     236028  tcp_current_mss=20
>     235631  schedule=20
>     234013  netif_rx=20
>     229854  _local_bh_enable_ip=20
>     219501  tcp_v4_rcv=20
>=20
>     [ etc. - see full profile attached further below ]
>=20
> Note that the scheduler does not even show up in the profile up to=20
> entry #15!
>=20
> I've also summarized NMI profiler output by major subsystems:
>=20
>            NET       overhead (12603450/21570252): 58.43%
>            security  overhead ( 1903598/21570252):  8.83%
>            usercopy  overhead ( 1753617/21570252):  8.13%
>            sched     overhead ( 1599406/21570252):  7.41%
>            syscall   overhead (  560487/21570252):  2.60%
>            IRQ       overhead (  555439/21570252):  2.58%
>            slab      overhead (  492421/21570252):  2.28%
>            timer     overhead (  226573/21570252):  1.05%
>            pagealloc overhead (  192681/21570252):  0.89%
>            PID       overhead (  115123/21570252):  0.53%
>            VFS       overhead (  107926/21570252):  0.50%
>            pagecache overhead (   62552/21570252):  0.29%
>            gtod      overhead (   38651/21570252):  0.18%
>            IDLE      overhead (       0/21570252):  0.00%
> ---------------------------------------------------------
>                          left ( 1349494/21570252):  6.26%
>=20
> The scheduler's functions are absolutely flat, and consistent with an=
=20
> extreme context-switching rate of 1.35 million per second. The=20
> scheduler can go up to about 20 million context switches per second o=
n=20
> this system:
>=20
>  procs -----------memory---------- ---swap-- -----io---- --system-- -=
----cpu------
>   r  b   swpd   free   buff  cache   si   so    bi    bo   in   cs us=
 sy id wa st
>  32  0      0 32229696  29308 649880    0    0     0     0 164135 200=
26853 24 76  0  0  0
>  32  0      0 32229752  29308 649880    0    0     0     0 164203 200=
32770 24 76  0  0  0
>  32  0      0 32229752  29308 649880    0    0     0     0 164201 200=
36492 25 75  0  0  0
>=20
> ... and 7% scheduling overhead is roughly consistent with 1.35/20.0.
>=20
> Wake up affinities and data flow caching is just fine in this workloa=
d=20
> - we've got scheduler statistics for that and they look good too.
>=20
> It all looks like pure old-fashioned straight overhead in the=20
> networking layer to me. Do we still touch the same global cacheline=20
> for every localhost packet we process? Anything like that would show=20
> up big time.

Yes we do, I find strange we dont see dst_release() in your NMI profile

I posted a patch ( commit 5635c10d976716ef47ae441998aeae144c7e7387
net: make sure struct dst_entry refcount is aligned on 64 bytes)
 (in net-next-2.6 tree)
to properly align struct dst_entry refcounter and got 4% speedup on tbe=
nch on my machine.

Small speedups too with commit ef711cf1d156428d4c2911b8c86c6ce90519dc45
(net: speedup dst_release())

Also on net-next-2.6, patches avoid dirtying last_rx on netdevices (loo=
pback for example)
, it helps a lot tbench too.


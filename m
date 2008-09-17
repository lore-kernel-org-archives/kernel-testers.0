From: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from	2.6.22
 -&gt; 2.6.28
Date: Wed, 17 Sep 2008 16:47:13 +0200
Message-ID: <48D11871.4090805@cosmosbay.com>
References: <1221306287.5213.111.camel@marge.simson.net>	 <48CD1D25.9080301@linux-foundation.org>	 <1221421907.4597.24.camel@marge.simson.net>	 <1221475440.4784.39.camel@marge.simson.net>	 <1221568105.5020.17.camel@marge.simson.net>	 <Pine.LNX.4.64.0809161700020.1034@wrl-59.cs.helsinki.fi>	 <1221626391.5043.13.camel@marge.simson.net>	 <1221627676.5125.3.camel@marge.simson.net> <20080917104044.GC18764@elte.hu>	 <1221651701.5102.17.camel@marge.simson.net> <20080917124943.GA7738@elte.hu> <1221657111.5511.14.camel@marge.simson.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1221657111.5511.14.camel-YqMYhexLQo1vAv1Ojkdn7Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, =?ISO-8859-1?Q?Ilpo_J=E4rvinen?= <ilpo.jarvinen-pxSi+dnQzZMxHbG02/KK1g@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Mike Galbraith a =E9crit :
> On Wed, 2008-09-17 at 14:49 +0200, Ingo Molnar wrote:
>> * Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org> wrote:
>>
>>>> It looks like a potentially bogus bisection result, but _maybe_ it=
=20
>>>> has relevance: changes the size of "struct security_operations",=20
>>>> which could have alignment and layout effects on all sorts of kern=
el=20
>>>> variables, kmalloc sizes, etc.
>>> This may well be a mythical creature infestation for all I know ;-)=
,=20
>>> but it's address is somewhere in the 2069f45..847106f block, 316=20
>>> commits, none of which look like they should be the least bit=20
>>> interesting to netperf.  I reverted this particular commit in 27.gi=
t,=20
>>> got the expected result.  Looks like I'll keep poking at it, can't=20
>>> seem to resist.  Grr.
>> are you sure it's 2069f45..847106f? Filtering out the=20
>> likely-uninteresting commits:
>=20
> Yeah, as sure as I can be.  I've built both (et al) kernels several
> times, and it has repeated every time.  Would be nice if someone woul=
d
> try to confirm/deny though.  For my little quad, I do..
>=20
> #!/bin/sh
>=20
> echo 0 > /proc/sys/kernel/sched_wakeup_granularity_ns=20
>=20
> netserver -p 12865
> netserver -p 12866
> netserver -p 12867
> netserver -p 12868
>=20
> netperf -p 12865 -t TCP_RR -l 60 -H 127.0.0.1 -T 0,0 -- -r 1,1&
> netperf -p 12866 -t TCP_RR -l 60 -H 127.0.0.1 -T 1,1 -- -r 1,1&
> netperf -p 12867 -t TCP_RR -l 60 -H 127.0.0.1 -T 2,2 -- -r 1,1&
> netperf -p 12868 -t TCP_RR -l 60 -H 127.0.0.1 -T 3,3 -- -r 1,1&
>=20
> wait
> killall netserver
>=20
>=20
>> git log --pretty=3Dformat:"%h: %s" 2069f45..847106f | grep -viE \
>> 'block|alsa|pcmcia|sound|Merge|iosched|blk|DAC960|scsi|s390|paride|p=
ktcdvd|filter|cdrom|drm'
>>
>> gives us:
>>
>>  7daf705: Start using the new '%pS' infrastructure to print symbols
>>  6f0f0fd: security: remove register_security hook
>>  93cbace: security: remove dummy module fix
>>  5915eb5: security: remove dummy module
>>  b478a9f: security: remove unused sb_get_mnt_opts hook
>>  32502b8: splice: fix generic_file_splice_read() race with page inva=
lidation
>>  8b3d356: ramfs: enable splice write
>>  a144ff0: xen: Avoid allocations causing swap activity on the resume=
 path
>>
>> which really only leaves that security commit your bisection fingere=
d.=20
>> Which _slightly_ raises its likelyhood of being implicated. Structur=
e=20
>> size changes can move two formerly far-apart netperf-relevant symbol=
s on=20
>> the same cacheline, which can start cache ping-pong-ing badly.
>=20
> I sure hope it's something like ping-pong, it's driving me NUTS.

Could you please try following patch ?

[PATCH] security_ops moved to read_mostly section

"struct security_operations *security_ops" should be moved to read_most=
ly=20
section in order to NOT let it share a cache line with higly modified v=
ariables.

Signed-off-by: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>

diff --git a/security/security.c b/security/security.c
index 3a4b4f5..0b13d65 100644
--- a/security/security.c
+++ b/security/security.c
@@ -24,7 +24,7 @@ static __initdata char chosen_lsm[SECURITY_NAME_MAX +=
 1];
 extern struct security_operations default_security_ops;
 extern void security_fixup_ops(struct security_operations *ops);
=20
-struct security_operations *security_ops;	/* Initialized to NULL */
+struct security_operations *security_ops __read_mostly;e
=20
 /* amount of vm to protect from userspace access */
 unsigned long mmap_min_addr =3D CONFIG_SECURITY_DEFAULT_MMAP_MIN_ADDR;



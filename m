From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
	2.6.22 -&gt; 2.6.28
Date: Fri, 21 Nov 2008 10:18:51 +0100
Message-ID: <20081121091851.GA26396@elte.hu>
References: <1ScKicKnTUE.A.VxH.DIHIJB@chimera> <NjF0-fuClJC.A.73B.cLHIJB@chimera> <20081117090648.GG28786@elte.hu> <Pine.LNX.4.64.0811191341570.23502@quilx.com> <Pine.LNX.4.64.0811201727070.9089@quilx.com> <20081121083044.GL16242@elte.hu> <49267694.1030506@cosmosbay.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <49267694.1030506-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Cc: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>


* Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org> wrote:

> Ingo Molnar a =E9crit :
>> * Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
>>
>>> hmmm... Well we are almost there.
>>>
>>> 2.6.22:
>>>
>>> Throughput 2526.15 MB/sec 8 procs
>>>
>>> 2.6.28-rc5:
>>>
>>> Throughput 2486.2 MB/sec 8 procs
>>>
>>> 8p Dell 1950 and the number of processors specified on the tbench =20
>>> command line.
>>
>> And with net-next we might even be able to get past that magic limit=
? =20
>> net-next is linus-latest plus the latest and greatest networking bit=
s:
>>
>>  $ cat .git/config
>>
>>  [remote "net-next"]
>> 	url =3D git://git.kernel.org/pub/scm/linux/kernel/git/davem/net-nex=
t-2.6.git
>> 	fetch =3D +refs/heads/*:refs/remotes/net-next/*
>>
>> ... so might be worth a test. Just to satisfy our curiosity and to=20
>> possibly close the entry :-)
>>
>
> Well, bits in net-next are new stuff for 2.6.29, not really=20
> regression fixes, but yes, they should give nice tbench speedups.

yeah, i know - technically these are lots-of-kernel-releases effects=20
so not bona fide latest-cycle regressions anyway. But it doesnt matter=20
how we call them, we want improvement in these metrics.

> Now, I wish sockets and pipes not going through dcache, not tbench=20
> affair of course but real workloads...
>
> running 8 processes on a 8 way machine doing a=20
>
> for (;;)
> 	close(socket(AF_INET, SOCK_STREAM, 0));
>
> is slow as hell, we hit so many contended cache lines ...
>
> ticket spin locks are slower in this case (dcache_lock for example=20
> is taken twice when we allocate a socket(), once in d_alloc(),=20
> another one in d_instantiate())

hm, weird - since there's no real VFS namespace impact i fail to=20
realize the fundamental need that causes us to hit the dcache_lock.=20
(perhaps there's none and this is fixable)

The general concept of mapping sockets to fds is a fundamental and=20
powerful abstraction. There are APIs that also connect them to the VFS=20
namespace (such as unix domain sockets) - but those should be special=20
cases, not impacting normal TCP sockets.

	Ingo

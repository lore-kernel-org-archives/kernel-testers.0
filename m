From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
	2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 18:08:44 +0100
Message-ID: <20081117170844.GJ12081@elte.hu>
References: <1ScKicKnTUE.A.VxH.DIHIJB@chimera> <NjF0-fuClJC.A.73B.cLHIJB@chimera> <20081117090648.GG28786@elte.hu> <20081117.011403.06989342.davem@davemloft.net> <20081117110119.GL28786@elte.hu> <4921539B.2000002@cosmosbay.com> <20081117161135.GE12081@elte.hu> <49219D36.5020801@cosmosbay.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <49219D36.5020801-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>


* Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org> wrote:

> Ingo Molnar a =E9crit :
>> * Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org> wrote:
>>
>>>> It all looks like pure old-fashioned straight overhead in the =20
>>>> networking layer to me. Do we still touch the same global cachelin=
e=20
>>>> for every localhost packet we process? Anything like that would =20
>>>> show up big time.
>>> Yes we do, I find strange we dont see dst_release() in your NMI =20
>>> profile
>>>
>>> I posted a patch ( commit 5635c10d976716ef47ae441998aeae144c7e7387 =
=20
>>> net: make sure struct dst_entry refcount is aligned on 64 bytes) (i=
n =20
>>> net-next-2.6 tree) to properly align struct dst_entry refcounter an=
d =20
>>> got 4% speedup on tbench on my machine.
>>
>> Ouch, +4% from a oneliner networking change? That's a _huge_ speedup=
 =20
>> compared to the things we were after in scheduler land. A lot of =20
>> scheduler folks worked hard to squeeze the last 1-2% out of the =20
>> scheduler fastpath (which was not trivial at all). The _full_ =20
>> scheduler accounts for only about 7% of the total system overhead he=
re =20
>> on a 16-way box...
>
> 4% on my machine, but apparently my machine is sooooo special (see=20
> oprofile thread), so maybe its cpus have a hard time playing with a=20
> contended cache line.
>
> It definitly needs more testing on other machines.
>
> Maybe you'll discover patch is bad on your machines, this is why=20
> it's in net-next-2.6

ok, i'll try it on my testbox too, to check whether it has any effect=20
- find below the port to -git.

tbench _is_ very sensitive to seemingly small details - it seems to be=20
hoovering at around some sort of CPU cache boundary and penalizing=20
random alignment changes, as we drop in and out of the sweet spot.

Mike Galbraith has been spending months trying to pin down all the=20
issues.

	Ingo

------------->
=46rom 8fbd307d402647b07c3c2662fdac589494d16e5e Mon Sep 17 00:00:00 200=
1
=46rom: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Date: Sun, 16 Nov 2008 19:46:36 -0800
Subject: [PATCH] net: make sure struct dst_entry refcount is aligned on=
 64 bytes

As found in the past (commit f1dd9c379cac7d5a76259e7dffcd5f8edc697d17
[NET]: Fix tbench regression in 2.6.25-rc1), it is really
important that struct dst_entry refcount is aligned on a cache line.

We cannot use __atribute((aligned)), so manually pad the structure
for 32 and 64 bit arches.

for 32bit : offsetof(truct dst_entry, __refcnt) is 0x80
for 64bit : offsetof(truct dst_entry, __refcnt) is 0xc0

As it is not possible to guess at compile time cache line size,
we use a generic value of 64 bytes, that satisfies many current arches.
(Using 128 bytes alignment on 64bit arches would waste 64 bytes)

Add a BUILD_BUG_ON to catch future updates to "struct dst_entry" dont
break this alignment.

"tbench 8" is 4.4 % faster on a dual quad core (HP BL460c G1), Intel E5=
450 @3.00GHz
(2350 MB/s instead of 2250 MB/s)

Signed-off-by: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Signed-off-by: David S. Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
---
 include/net/dst.h |   21 +++++++++++++++++++++
 1 files changed, 21 insertions(+), 0 deletions(-)

diff --git a/include/net/dst.h b/include/net/dst.h
index 8a8b71e..1b4de18 100644
--- a/include/net/dst.h
+++ b/include/net/dst.h
@@ -59,7 +59,11 @@ struct dst_entry
=20
 	struct neighbour	*neighbour;
 	struct hh_cache		*hh;
+#ifdef CONFIG_XFRM
 	struct xfrm_state	*xfrm;
+#else
+	void			*__pad1;
+#endif
=20
 	int			(*input)(struct sk_buff*);
 	int			(*output)(struct sk_buff*);
@@ -70,8 +74,20 @@ struct dst_entry
=20
 #ifdef CONFIG_NET_CLS_ROUTE
 	__u32			tclassid;
+#else
+	__u32			__pad2;
 #endif
=20
+
+	/*
+	 * Align __refcnt to a 64 bytes alignment
+	 * (L1_CACHE_SIZE would be too much)
+	 */
+#ifdef CONFIG_64BIT
+	long			__pad_to_align_refcnt[2];
+#else
+	long			__pad_to_align_refcnt[1];
+#endif
 	/*
 	 * __refcnt wants to be on a different cache line from
 	 * input/output/ops or performance tanks badly
@@ -157,6 +173,11 @@ dst_metric_locked(struct dst_entry *dst, int metri=
c)
=20
 static inline void dst_hold(struct dst_entry * dst)
 {
+	/*
+	 * If your kernel compilation stops here, please check
+	 * __pad_to_align_refcnt declaration in struct dst_entry
+	 */
+	BUILD_BUG_ON(offsetof(struct dst_entry, __refcnt) & 63);
 	atomic_inc(&dst->__refcnt);
 }
=20

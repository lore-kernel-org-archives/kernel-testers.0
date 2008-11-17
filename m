From: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from	2.6.22
 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 23:39:11 +0100
Message-ID: <4921F28F.4020300@cosmosbay.com>
References: <20081117161135.GE12081@elte.hu> <49219D36.5020801@cosmosbay.com> <20081117170844.GJ12081@elte.hu> <20081117172549.GA27974@elte.hu> <4921AAD6.3010603@cosmosbay.com> <alpine.LFD.2.00.0811170937540.3468@nehalem.linux-foundation.org> <20081117182320.GA26844@elte.hu> <20081117184951.GA5585@elte.hu> <20081117220828.GB6398@elte.hu> <4921ED16.9050307@cosmosbay.com> <20081117222640.GA17880@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117222640.GA17880-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>

Ingo Molnar a =E9crit :
> * Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org> wrote:
>=20
>> Ingo Molnar a =E9crit :

>>> it's this division:
>>>
>>>         if (doing_tso) {
>>>         [...]
>>> 			xmit_size_goal -=3D (xmit_size_goal % mss_now);
>>>
>>> Has no-one hit this before? Perhaps this is why switching loopback =
=20
>>> networking to TSO had a performance impact for others?
>> Yes, I mentioned it later. [...]
>=20
> i see - i just caught up with some of my inbox from today.
>=20
>> [...] But apparently you dont read my mails, so I will just stop=20
>> now.
>=20
> Sorry, i spent my time looking at the profile output.
>=20

No problem Ingo, I am very glad you take so much time to profil kernel =
;)

I had too many problems with profilers on my dev machine lately :(


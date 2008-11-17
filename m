From: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Subject: Re: skb_release_head_state(): Re: [Bug #11308] tbench regression
 on	each kernel release from 2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 22:04:33 +0100
Message-ID: <4921DC61.4000702@cosmosbay.com>
References: <20081117110119.GL28786@elte.hu> <4921539B.2000002@cosmosbay.com> <20081117161135.GE12081@elte.hu> <49219D36.5020801@cosmosbay.com> <20081117170844.GJ12081@elte.hu> <20081117172549.GA27974@elte.hu> <4921AAD6.3010603@cosmosbay.com> <alpine.LFD.2.00.0811170937540.3468@nehalem.linux-foundation.org> <20081117182320.GA26844@elte.hu> <20081117184951.GA5585@elte.hu> <20081117205530.GE12020@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081117205530.GE12020-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>

Ingo Molnar a =E9crit :
> (gdb) list *0xffffffff8048942e
> 0xffffffff8048942e is in skb_release_head_state (include/linux/skbuff=
=2Eh:1783).
> 1778	}
> 1779	#endif
> 1780	#ifdef CONFIG_BRIDGE_NETFILTER
> 1781	static inline void nf_bridge_put(struct nf_bridge_info *nf_bridg=
e)
> 1782	{
> 1783		if (nf_bridge && atomic_dec_and_test(&nf_bridge->use))
> 1784			kfree(nf_bridge);
> 1785	}
> 1786	static inline void nf_bridge_get(struct nf_bridge_info *nf_bridg=
e)
> 1787	{
>=20
> and ouch does that global dec on &nf_bridge->use hurt!
>=20
> i do have:
>=20
>   CONFIG_BRIDGE_NETFILTER=3Dy
>=20
> (this is a Fedora distro kernel derived .config)

Hum, you also should hit this cache line at atomic_inc() site then...

Strange, I never caught this one.

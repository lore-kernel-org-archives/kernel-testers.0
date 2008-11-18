From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: eth_type_trans(): Re: [Bug #11308] tbench regression on each
 kernel release from 2.6.22 -&gt; 2.6.28
Date: Mon, 17 Nov 2008 23:00:55 -0800 (PST)
Message-ID: <20081117.230055.193685274.davem@davemloft.net>
References: <20081117212657.GH12020@elte.hu>
	<20081117.211645.193706814.davem@davemloft.net>
	<49225432.6050607@cosmosbay.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <49225432.6050607-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="iso-8859-1"
To: dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org
Cc: mingo-X9Un+BFzKDI@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org

=46rom: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Date: Tue, 18 Nov 2008 06:35:46 +0100

> David Miller a =E9crit :
> > From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> > Date: Mon, 17 Nov 2008 22:26:57 +0100
> >=20
> >> eth->h_proto access.
> > Yes, this is the first time a packet is touched on receive.
>=20
> Well, not exactly, since we do a=20
>=20
> if (is_multicast_ether_addr(eth->h_dest)) {
> ...}
>=20
> and one of the
> 	compare_ether_addr(eth->h_dest, {dev->dev_addr | dev->broadcast})
>=20
> probably its a profiling effect...

True.

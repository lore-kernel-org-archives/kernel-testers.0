From: Eric Dumazet <dada1@cosmosbay.com>
Subject: Re: eth_type_trans(): Re: [Bug #11308] tbench regression on each
 kernel release from 2.6.22 -&gt; 2.6.28
Date: Tue, 18 Nov 2008 06:35:46 +0100
Message-ID: <49225432.6050607@cosmosbay.com>
References: <20081117182320.GA26844@elte.hu>	<20081117184951.GA5585@elte.hu>	<20081117212657.GH12020@elte.hu> <20081117.211645.193706814.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752140AbYKRFgx@vger.kernel.org>
In-Reply-To: <20081117.211645.193706814.davem@davemloft.net>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: David Miller <davem@davemloft.net>
Cc: mingo@elte.hu, torvalds@linux-foundation.org, rjw@sisk.pl, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, cl@linux-foundation.org, efault@gmx.de, a.p.zijlstra@chello.nl, shemminger@vyatta.com

David Miller a =E9crit :
> From: Ingo Molnar <mingo@elte.hu>
> Date: Mon, 17 Nov 2008 22:26:57 +0100
>=20
>> eth->h_proto access.
>=20
> Yes, this is the first time a packet is touched on receive.

Well, not exactly, since we do a=20

if (is_multicast_ether_addr(eth->h_dest)) {
=2E..}

and one of the
	compare_ether_addr(eth->h_dest, {dev->dev_addr | dev->broadcast})

probably its a profiling effect...



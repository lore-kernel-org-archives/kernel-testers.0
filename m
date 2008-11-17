From: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Subject: Re: eth_type_trans(): Re: [Bug #11308] tbench regression on each
 kernel release from 2.6.22 -&gt; 2.6.28
Date: Tue, 18 Nov 2008 00:41:56 +0100
Message-ID: <49220144.2010005@cosmosbay.com>
References: <20081117110119.GL28786@elte.hu> <4921539B.2000002@cosmosbay.com> <20081117161135.GE12081@elte.hu> <49219D36.5020801@cosmosbay.com> <20081117170844.GJ12081@elte.hu> <20081117172549.GA27974@elte.hu> <4921AAD6.3010603@cosmosbay.com> <alpine.LFD.2.00.0811170937540.3468@nehalem.linux-foundation.org> <20081117182320.GA26844@elte.hu> <20081117184951.GA5585@elte.hu> <20081117212657.GH12020@elte.hu> <4921E4B0.7010507@cosmosbay.com>
Mime-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------010901030205040709000206"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4921E4B0.7010507-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>

This is a multi-part message in MIME format.
--------------010901030205040709000206
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: quoted-printable

Eric Dumazet a =E9crit :
>=20
> But seeing your disassembly, I can see compare_ether_addr() is not inli=
ned.
>=20
> This sucks.
>=20
> /**
> * compare_ether_addr - Compare two Ethernet addresses
> * @addr1: Pointer to a six-byte array containing the Ethernet address
> * @addr2: Pointer other six-byte array containing the Ethernet address
> *
> * Compare two ethernet addresses, returns 0 if equal
> */
> static inline unsigned compare_ether_addr(const u8 *addr1, const u8 *ad=
dr2)
> {
>        const u16 *a =3D (const u16 *) addr1;
>        const u16 *b =3D (const u16 *) addr2;
>=20
>        BUILD_BUG_ON(ETH_ALEN !=3D 6);
>        return ((a[0] ^ b[0]) | (a[1] ^ b[1]) | (a[2] ^ b[2])) !=3D 0;
> }
>=20
> On my machine/compiler, it is inlined, that makes a big difference.

old gcc compiler... OK understood...

>=20
> c0420750 <eth_type_trans>: /* eth_type_trans total:  14417  0.4101 */
>=20
>=20

Could you try this patch Ingo ?

Thanks

[PATCH] net: eth_type_trans() should be a leaf function

In old days, eth_type_trans() was a leaf function. It is not anymore the =
case.

eth_type_trans() is a critical network function, called for each incoming=
 packet.

We should make sure it is not calling functions, especially trivial ones.=


1) Adds an __always_inline to compare_ether_addr() : This one was created=
 to be faster
   than memcmp(). It really should be faster (and inlined)

2) Hand code skb_put() call in eth_type_trans()

Signed-off-by: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
---
 include/linux/etherdevice.h |    2 +-
 net/ethernet/eth.c          |    7 ++++++-
 2 files changed, 7 insertions(+), 2 deletions(-)

--------------010901030205040709000206
Content-Type: text/plain;
 name="eth_type_trans_speedup.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="eth_type_trans_speedup.patch"

diff --git a/include/linux/etherdevice.h b/include/linux/etherdevice.h
index 25d62e6..94af6a7 100644
--- a/include/linux/etherdevice.h
+++ b/include/linux/etherdevice.h
@@ -128,7 +128,7 @@ static inline void random_ether_addr(u8 *addr)
  *
  * Compare two ethernet addresses, returns 0 if equal
  */
-static inline unsigned compare_ether_addr(const u8 *addr1, const u8 *addr2)
+static __always_inline unsigned compare_ether_addr(const u8 *addr1, const u8 *addr2)
 {
 	const u16 *a = (const u16 *) addr1;
 	const u16 *b = (const u16 *) addr2;
diff --git a/net/ethernet/eth.c b/net/ethernet/eth.c
index b9d85af..30b60b2 100644
--- a/net/ethernet/eth.c
+++ b/net/ethernet/eth.c
@@ -162,7 +162,12 @@ __be16 eth_type_trans(struct sk_buff *skb, struct net_device *dev)
 
 	skb->dev = dev;
 	skb_reset_mac_header(skb);
-	skb_pull(skb, ETH_HLEN);
+	/*
+	 * Hand coded skb_pull(skb, ETH_HLEN) to avoid a function call
+	 */
+	if (likely(skb->len >= ETH_HLEN))
+		__skb_pull(skb, ETH_HLEN);
+
 	eth = eth_hdr(skb);
 
 	if (is_multicast_ether_addr(eth->h_dest)) {

--------------010901030205040709000206--

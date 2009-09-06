From: Ian Campbell <ijc-KcIKpvwj1kUDXYZnReoRVg@public.gmane.org>
Subject: Re: [Bug #14057] Strange network timeouts w/ e100
Date: Sun, 06 Sep 2009 12:22:58 +0100
Message-ID: <1252236178.7811.28024.camel@localhost.localdomain>
References: <828279661.71251246859811.JavaMail.root@mail.holmansrus.com>
	 <200908262312.04000.rjw@sisk.pl>
	 <20090826.151153.169388217.davem@davemloft.net>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-0RQE40nOC8Xf3v/rpvxh"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090826.151153.169388217.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: rjw-KKrjLPT3xs0@public.gmane.org, walt-Wo+ox+avW/9ByuSxxbvQtw@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, khc-9GfyWEdoJtJmR6Xm/wNWPw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org


--=-0RQE40nOC8Xf3v/rpvxh
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2009-08-26 at 15:11 -0700, David Miller wrote:=20
> From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
> Date: Wed, 26 Aug 2009 23:12:03 +0200
>=20
> >> Krzysztof has a patch which has corrected this issue for me.  Thanks,
> >=20
> > Thanks for the update.
> >=20
> > Do you have a pointer to the patch, please?
>=20
> commit 6ff9c2e7fa8ca63a575792534b63c5092099c286
> Author: Krzysztof Ha=C5=82asa <khc-9GfyWEdoJtJmR6Xm/wNWPw@public.gmane.org>
> Date:   Sun Aug 23 19:02:13 2009 -0700
>=20
>     E100: fix interaction with swiotlb on X86.

This fixes 303d67c2 which has been included in at least the 2.6.27.29
and 2.6.30.5 stable releases so I think this should be a candidate for
those stable branches too.

Ian.

>=20
>     E100 places it's RX packet descriptors inside skb->data and uses them
>     with bidirectional streaming DMA mapping. Data in descriptors is
>     accessed simultaneously by the chip (writing status and size when
>     a packet is received) and CPU (reading to check if the packet was
>     received). This isn't a valid usage of PCI DMA API, which requires us=
e
>     of the coherent (consistent) memory for such purpose. Unfortunately e=
100
>     chips working in "simplified" RX mode have to store received data
>     directly after the descriptor. Fixing the driver to conform to the AP=
I
>     would require using unsupported "flexible" RX mode or receiving data
>     into a coherent memory and using CPU to copy it to network buffers.
>    =20
>     This patch, while not yet making the driver conform to the PCI DMA AP=
I,
>     allows it to work correctly on X86 with swiotlb (while not breaking
>     other architectures).
>    =20
>     Signed-off-by: Krzysztof Ha=C5=82asa <khc-9GfyWEdoJtJmR6Xm/wNWPw@public.gmane.org>
>     Signed-off-by: David S. Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
>=20
> diff --git a/drivers/net/e100.c b/drivers/net/e100.c
> index 41b648a..3a6735d 100644
> --- a/drivers/net/e100.c
> +++ b/drivers/net/e100.c
> @@ -1899,7 +1899,7 @@ static int e100_rx_indicate(struct nic *nic, struct=
 rx *rx,
>  				nic->ru_running =3D RU_SUSPENDED;
>  		pci_dma_sync_single_for_device(nic->pdev, rx->dma_addr,
>  					       sizeof(struct rfd),
> -					       PCI_DMA_BIDIRECTIONAL);
> +					       PCI_DMA_FROMDEVICE);
>  		return -ENODATA;
>  	}
> =20
> NrybX=C7=A7v^)=DE=BA{.n+{zX=DC=A8}=C6=A0z&j:+vzZ++zfh~izw?&)=DF=A2f^j=C7=
=ABym@Aa=7F0hi=7F
--=20
Ian Campbell

Q:	Why did the chicken cross the road?
A:	To see his friend Gregory peck.

Q:	Why did the chicken cross the playground?
A:	To get to the other slide.

--=-0RQE40nOC8Xf3v/rpvxh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iEYEABECAAYFAkqjm5IACgkQM0+0qS9rzVm3HACgoiyLCat7BfO441pbsQNOabH2
s10An2P4RfjoXeDPvHF/8SE/8Ap+UWJm
=ienr
-----END PGP SIGNATURE-----

--=-0RQE40nOC8Xf3v/rpvxh--

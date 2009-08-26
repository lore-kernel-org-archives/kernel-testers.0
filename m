From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14057] Strange network timeouts w/ e100
Date: Thu, 27 Aug 2009 00:23:51 +0200
Message-ID: <200908270023.51710.rjw@sisk.pl>
References: <828279661.71251246859811.JavaMail.root@mail.holmansrus.com> <200908262312.04000.rjw@sisk.pl> <20090826.151153.169388217.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090826.151153.169388217.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="utf-8"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: walt-Wo+ox+avW/9ByuSxxbvQtw@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, khc-9GfyWEdoJtJmR6Xm/wNWPw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Thursday 27 August 2009, David Miller wrote:
> From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
> Date: Wed, 26 Aug 2009 23:12:03 +0200
>=20
> >> Krzysztof has a patch which has corrected this issue for me.  Than=
ks,
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
>    =20
>     E100 places it's RX packet descriptors inside skb->data and uses =
them
>     with bidirectional streaming DMA mapping. Data in descriptors is
>     accessed simultaneously by the chip (writing status and size when
>     a packet is received) and CPU (reading to check if the packet was
>     received). This isn't a valid usage of PCI DMA API, which require=
s use
>     of the coherent (consistent) memory for such purpose. Unfortunate=
ly e100
>     chips working in "simplified" RX mode have to store received data
>     directly after the descriptor. Fixing the driver to conform to th=
e API
>     would require using unsupported "flexible" RX mode or receiving d=
ata
>     into a coherent memory and using CPU to copy it to network buffer=
s.
>    =20
>     This patch, while not yet making the driver conform to the PCI DM=
A API,
>     allows it to work correctly on X86 with swiotlb (while not breaki=
ng
>     other architectures).
>    =20
>     Signed-off-by: Krzysztof Ha=C5=82asa <khc-9GfyWEdoJtJmR6Xm/wNWPw@public.gmane.org>
>     Signed-off-by: David S. Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
>=20
> diff --git a/drivers/net/e100.c b/drivers/net/e100.c
> index 41b648a..3a6735d 100644
> --- a/drivers/net/e100.c
> +++ b/drivers/net/e100.c
> @@ -1899,7 +1899,7 @@ static int e100_rx_indicate(struct nic *nic, st=
ruct rx *rx,
>  				nic->ru_running =3D RU_SUSPENDED;
>  		pci_dma_sync_single_for_device(nic->pdev, rx->dma_addr,
>  					       sizeof(struct rfd),
> -					       PCI_DMA_BIDIRECTIONAL);
> +					       PCI_DMA_FROMDEVICE);
>  		return -ENODATA;
>  	}

Thanks a lot, bug closed.

Rafael

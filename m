From: "Sosnowski, Maciej" <maciej.sosnowski-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: RE: 2.6.30-rc1: ioatdma: DMA-API: device driver frees DMA memory
 with 	wrong function
Date: Fri, 17 Apr 2009 12:49:22 +0100
Message-ID: <129600E5E5FB004392DDC3FB599660D792A39C27@irsmsx504.ger.corp.intel.com>
References: <a4423d670904090536j71be609csf2c32be3ed9cfe1e@mail.gmail.com>
	 <a4423d670904150539w1a4fe05ake75ce2aea4538eab@mail.gmail.com>
 <e9c3a7c20904151027xdf617fbh64fcb5618e195a71@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <e9c3a7c20904151027xdf617fbh64fcb5618e195a71-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Language: en-US
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Williams, Dan J" <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Dan Williams wrote:
> On Wed, Apr 15, 2009 at 5:39 AM, Alexander Beregalov
> <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>> 2009/4/9 Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
>>> ioatdma 0000:00:08.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
>>> ioatdma 0000:00:08.0: setting latency timer to 64
>>> ioatdma 0000:00:08.0: Intel(R) I/OAT DMA Engine found, 4 channels,
>>> device version 0x12, driver version 3.64
>>> =A0alloc irq_desc for 33 on cpu 0 node 0
>>> =A0alloc kstat_irqs on cpu 0 node 0
>>> ioatdma 0000:00:08.0: irq 33 for MSI/MSI-X
>>> ------------[ cut here ]------------
>>> WARNING: at lib/dma-debug.c:565 check_unmap+0x2f6/0x6a0()
>>> Hardware name: PowerEdge 1950
>>> ioatdma 0000:00:08.0: DMA-API: device driver frees DMA memory with
>>> wrong function [device address=3D0x000000007f76f800] [size=3D2000 b=
ytes] [map
>>> ped as single] [unmapped as page]
>>=20
>> The problem still persists.
>=20
> Thanks for the report Alexander.  Maciej and I are looking into a fix=
=2E
>=20
> Regards,
> Dan

Hi Alexander,

Could you check if the following patch helps?

Thanks,
Maciej
---

 drivers/dma/dmaengine.c   |   17 +++++++++++------
 drivers/dma/ioat_dma.c    |   41 +++++++++++++++++++++++++------------=
----
 include/linux/dmaengine.h |    6 ++++++
 3 files changed, 42 insertions(+), 22 deletions(-)

diff --git a/drivers/dma/dmaengine.c b/drivers/dma/dmaengine.c
index 92438e9..5a87384 100644
--- a/drivers/dma/dmaengine.c
+++ b/drivers/dma/dmaengine.c
@@ -804,11 +804,14 @@ dma_async_memcpy_buf_to_buf(struct dma_c
 	dma_addr_t dma_dest, dma_src;
 	dma_cookie_t cookie;
 	int cpu;
+	unsigned long flags;
=20
 	dma_src =3D dma_map_single(dev->dev, src, len, DMA_TO_DEVICE);
 	dma_dest =3D dma_map_single(dev->dev, dest, len, DMA_FROM_DEVICE);
-	tx =3D dev->device_prep_dma_memcpy(chan, dma_dest, dma_src, len,
-					 DMA_CTRL_ACK);
+	flags =3D DMA_CTRL_ACK |
+		DMA_COMPL_SRC_UNMAP_SINGLE |
+		DMA_COMPL_DEST_UNMAP_SINGLE;
+	tx =3D dev->device_prep_dma_memcpy(chan, dma_dest, dma_src, len, flag=
s);
=20
 	if (!tx) {
 		dma_unmap_single(dev->dev, dma_src, len, DMA_TO_DEVICE);
@@ -850,11 +853,12 @@ dma_async_memcpy_buf_to_pg(struct dma_ch
 	dma_addr_t dma_dest, dma_src;
 	dma_cookie_t cookie;
 	int cpu;
+	unsigned long flags;
=20
 	dma_src =3D dma_map_single(dev->dev, kdata, len, DMA_TO_DEVICE);
 	dma_dest =3D dma_map_page(dev->dev, page, offset, len, DMA_FROM_DEVIC=
E);
-	tx =3D dev->device_prep_dma_memcpy(chan, dma_dest, dma_src, len,
-					 DMA_CTRL_ACK);
+	flags =3D DMA_CTRL_ACK | DMA_COMPL_SRC_UNMAP_SINGLE;
+	tx =3D dev->device_prep_dma_memcpy(chan, dma_dest, dma_src, len, flag=
s);
=20
 	if (!tx) {
 		dma_unmap_single(dev->dev, dma_src, len, DMA_TO_DEVICE);
@@ -898,12 +902,13 @@ dma_async_memcpy_pg_to_pg(struct dma_cha
 	dma_addr_t dma_dest, dma_src;
 	dma_cookie_t cookie;
 	int cpu;
+	unsigned long flags;
=20
 	dma_src =3D dma_map_page(dev->dev, src_pg, src_off, len, DMA_TO_DEVIC=
E);
 	dma_dest =3D dma_map_page(dev->dev, dest_pg, dest_off, len,
 				DMA_FROM_DEVICE);
-	tx =3D dev->device_prep_dma_memcpy(chan, dma_dest, dma_src, len,
-					 DMA_CTRL_ACK);
+	flags =3D DMA_CTRL_ACK;
+	tx =3D dev->device_prep_dma_memcpy(chan, dma_dest, dma_src, len, flag=
s);
=20
 	if (!tx) {
 		dma_unmap_page(dev->dev, dma_src, len, DMA_TO_DEVICE);
diff --git a/drivers/dma/ioat_dma.c b/drivers/dma/ioat_dma.c
index e4fc33c..9d7db7c 100644
--- a/drivers/dma/ioat_dma.c
+++ b/drivers/dma/ioat_dma.c
@@ -1063,22 +1063,31 @@ static void ioat_dma_cleanup_tasklet(uns
 static void
 ioat_dma_unmap(struct ioat_dma_chan *ioat_chan, struct ioat_desc_sw *d=
esc)
 {
-	/*
-	 * yes we are unmapping both _page and _single
-	 * alloc'd regions with unmap_page. Is this
-	 * *really* that bad?
-	 */
-	if (!(desc->async_tx.flags & DMA_COMPL_SKIP_DEST_UNMAP))
-		pci_unmap_page(ioat_chan->device->pdev,
-				pci_unmap_addr(desc, dst),
-				pci_unmap_len(desc, len),
-				PCI_DMA_FROMDEVICE);
-
-	if (!(desc->async_tx.flags & DMA_COMPL_SKIP_SRC_UNMAP))
-		pci_unmap_page(ioat_chan->device->pdev,
-				pci_unmap_addr(desc, src),
-				pci_unmap_len(desc, len),
-				PCI_DMA_TODEVICE);
+	if (!(desc->async_tx.flags & DMA_COMPL_SKIP_DEST_UNMAP)) {
+		if (desc->async_tx.flags & DMA_COMPL_DEST_UNMAP_SINGLE)
+			pci_unmap_single(ioat_chan->device->pdev,
+					 pci_unmap_addr(desc, dst),
+					 pci_unmap_len(desc, len),
+					 PCI_DMA_FROMDEVICE);
+		else
+			pci_unmap_page(ioat_chan->device->pdev,
+				       pci_unmap_addr(desc, dst),
+				       pci_unmap_len(desc, len),
+				       PCI_DMA_FROMDEVICE);
+	}
+
+	if (!(desc->async_tx.flags & DMA_COMPL_SKIP_SRC_UNMAP)) {
+		if (desc->async_tx.flags & DMA_COMPL_SRC_UNMAP_SINGLE)
+			pci_unmap_single(ioat_chan->device->pdev,
+					 pci_unmap_addr(desc, src),
+					 pci_unmap_len(desc, len),
+					 PCI_DMA_TODEVICE);
+		else
+			pci_unmap_page(ioat_chan->device->pdev,
+				       pci_unmap_addr(desc, src),
+				       pci_unmap_len(desc, len),
+				       PCI_DMA_TODEVICE);
+	}
 }
=20
 /**
diff --git a/include/linux/dmaengine.h b/include/linux/dmaengine.h
index 2e2aa3d..dc3235a 100644
--- a/include/linux/dmaengine.h
+++ b/include/linux/dmaengine.h
@@ -78,12 +78,18 @@ #define DMA_TX_TYPE_END (DMA_SLAVE + 1)
  * 	dependency chains
  * @DMA_COMPL_SKIP_SRC_UNMAP - set to disable dma-unmapping the source=
 buffer(s)
  * @DMA_COMPL_SKIP_DEST_UNMAP - set to disable dma-unmapping the desti=
nation(s)
+ * @DMA_COMPL_SRC_UNMAP_SINGLE - set to do the source dma-unmapping as=
 single
+ * 	(if not set, do the source dma-unmapping as page)
+ * @DMA_COMPL_DEST_UNMAP_SINGLE - set to do the destination dma-unmapp=
ing as single
+ *      (if not set, do the destination dma-unmapping as page)
  */
 enum dma_ctrl_flags {
 	DMA_PREP_INTERRUPT =3D (1 << 0),
 	DMA_CTRL_ACK =3D (1 << 1),
 	DMA_COMPL_SKIP_SRC_UNMAP =3D (1 << 2),
 	DMA_COMPL_SKIP_DEST_UNMAP =3D (1 << 3),
+	DMA_COMPL_SRC_UNMAP_SINGLE =3D (1 << 4),
+	DMA_COMPL_DEST_UNMAP_SINGLE =3D (1 << 5),
 };
=20
 /**

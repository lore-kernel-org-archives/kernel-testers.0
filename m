From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: [PATCH] saa7134: fix resource map sanity check conflict
Date: Wed, 22 Oct 2008 11:33:02 +0200
Message-ID: <20081022093302.GE12453@elte.hu>
References: <1224340447.5325.4.camel@zwerg> <20081020205702.GI7829@linux-os.sc.intel.com> <1224570426.5287.1.camel@zwerg>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1224570426.5287.1.camel@zwerg>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>, Mauro Carvalho Chehab <mchehab-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Ricardo Cerqueira <v4l-eEkzvfKC0peGglJvpFV4uA@public.gmane.org>, Maxim Levitsky <maximlevitsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Hartmut
Cc: Suresh Siddha <suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org


* Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org> wrote:

> Thanks, suresh! this patch working for me. dmesg is attached.

thanks Alexey!

I've Cc:-ed the saa7134 developers - please pick up Suresh's fix below. 
A new debug check in ioremap() caught a bug in the saa7134 driver.

	Ingo

---------------->
From afed66317accd2fdfeb57061102c20796fb9ff66 Mon Sep 17 00:00:00 2001
From: Suresh Siddha <suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Date: Mon, 20 Oct 2008 13:57:02 -0700
Subject: [PATCH] saa7134: fix resource map sanity check conflict

Impact: driver could possibly stomp on resources outside of its scope

Alexey Fisher reported:

> resource map sanity check conflict: 0xcfeff800 0xcff007ff 0xcfe00000
> 0xcfefffff PCI Bus 0000:01

BAR base is located in the middle of the 4K page and the hardcoded
size argument makes the request span two pages causing the conflict.

Fix the hard coded size argument in ioremap().

Reported-by: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Signed-off-by: Suresh Siddha <suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Tested-by: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Signed-off-by: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
---
 drivers/media/video/saa7134/saa7134-core.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/drivers/media/video/saa7134/saa7134-core.c b/drivers/media/video/saa7134/saa7134-core.c
index b686bfa..0c13821 100644
--- a/drivers/media/video/saa7134/saa7134-core.c
+++ b/drivers/media/video/saa7134/saa7134-core.c
@@ -941,7 +941,8 @@ static int __devinit saa7134_initdev(struct pci_dev *pci_dev,
 		       dev->name,(unsigned long long)pci_resource_start(pci_dev,0));
 		goto fail1;
 	}
-	dev->lmmio = ioremap(pci_resource_start(pci_dev,0), 0x1000);
+	dev->lmmio = ioremap(pci_resource_start(pci_dev, 0),
+			     pci_resource_len(pci_dev, 0));
 	dev->bmmio = (__u8 __iomem *)dev->lmmio;
 	if (NULL == dev->lmmio) {
 		err = -EIO;

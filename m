From: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] [media] media: ti-vpe: add dependency of HAS_DMA
Date: Fri, 12 Feb 2016 16:23:28 +0530
Message-ID: <1455274408-23978-1-git-send-email-sudipm.mukherjee@gmail.com>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Ll/O2yfoG1bcgA8U7sjpclOdC22D72voouLx6vYX7cg=;
        b=YyDX0suW0E0y3sXgcbId2CVOqLQI6uftKG1rYyf9BWf4yV/hSqlaBORxZUoGXcGc9S
         k2ZD/GufE7W08RX3V703it6j1YlNqEyDbBKplF8QTvqUV3uqKCAz0b+I7dE5ZNeyLxBC
         wjSaKOWLa7ZAmeCxU8ezTZSxTyY6tQXz+8gSBpnEi+SyvUicqlvUoH3LVVdyuheL7vwP
         DyYkPFMQc+wiQxRZEReQJAgRZfW+816+/wpYLa+I2e0E7FBoIAOYAnOl82y2IK/u+Pnv
         TQ5IXECspgfrKmpKINBMhVW9bN/OtXFc5V+jeEypYq/bK4uLUSdOqJFMbuMAbap4tI6B
         7P/w==
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mauro Carvalho Chehab <mchehab-JPH+aEBZ4P+UEJcrhfAQsw@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Benoit Parrot <bparrot-l0cyMroinI0@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>

The build of m32r allmodconfig fails with the error:
 drivers/media/v4l2-core/videobuf2-dma-contig.c:492:28: error: implicit
	declaration of function 'dma_get_cache_alignment'

The build of videobuf2-dma-contig.c depends on HAS_DMA and it is
correctly mentioned in the Kconfig but the symbol VIDEO_TI_CAL also
selects VIDEOBUF2_DMA_CONTIG, so it is trying to compile
videobuf2-dma-contig.c even though HAS_DMA is not defined.

Fixes: 343e89a792a5 ("[media] media: ti-vpe: Add CAL v4l2 camera capture driver")
Cc: Benoit Parrot <bparrot-l0cyMroinI0@public.gmane.org>
Cc: Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
Signed-off-by: Sudip Mukherjee <sudip-ofJRbWXBVFamYgehrs7/Lw@public.gmane.org>
---

build log of next-20160212 is at:
https://travis-ci.org/sudipm-mukherjee/parport/jobs/108716158

 drivers/media/platform/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
index fd4fcd5..16dbe3d 100644
--- a/drivers/media/platform/Kconfig
+++ b/drivers/media/platform/Kconfig
@@ -124,6 +124,7 @@ config VIDEO_TI_CAL
 	tristate "TI CAL (Camera Adaptation Layer) driver"
 	depends on VIDEO_DEV && VIDEO_V4L2 && VIDEO_V4L2_SUBDEV_API
 	depends on SOC_DRA7XX || COMPILE_TEST
+	depends on HAS_DMA
 	select VIDEOBUF2_DMA_CONTIG
 	default n
 	---help---
-- 
1.9.1

From: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] Input: colibri-vf50-ts: fix implicit declaration
Date: Wed, 10 Feb 2016 15:15:47 +0530
Message-ID: <1455097547-31053-1-git-send-email-sudipm.mukherjee@gmail.com>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=yg5BSPcw+iIZ4Ovr2dTJnWcIlzLOtfdytijJEv5kdm0=;
        b=mlnLKBgt1VNE7QWV3x/8jmgxW7sA+VPoCnlXj24l0o4eZ+g+r9t8YV6JV2p+GQqq72
         Ku0bXVSQ3RjO5lFuP0BTP8+DnOUPU8Jy9i+FCznnQO4Y3aY6La7B/HV5CjtpRZJERXEZ
         V8HNFqOmmHG2SdPXHFcrEbEIv9ufDB1LZLJFe74cNnj7NeNm2GteucbfLHgp5+yMNsRR
         cgFfbxNEojDBBffpCQGni7r/97eldw9vLMY97lwrwZYRMweHpQ0EZ38bZpKasvGRiZ/M
         AMU5Z9ABENl9YZFxLvJA+syDC9oRI7hYtMIEpcyz1keZfyGxFLilB9da+SdWlpCOmcLl
         Pykg==
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Sanchayan Maity <maitysanchayan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-input-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Geert Uytterhoeven <geert-Td1EMuHUCqxL1ZNQvxDV9g@public.gmane.org>

The build of m32r allmodconfig fails with the error:
drivers/input/touchscreen/colibri-vf50-ts.c:302:10: error: implicit
	declaration of function 'of_property_read_u32'

of_property_read_u32() is defined in linux/of.h which was not included.	

Fixes: 1261d013daea ("Input: Allow compile test of Goodix and Colibri VF50 if !GPIOLIB")
Cc: Geert Uytterhoeven <geert-Td1EMuHUCqxL1ZNQvxDV9g@public.gmane.org>
Signed-off-by: Sudip Mukherjee <sudip-ofJRbWXBVFamYgehrs7/Lw@public.gmane.org>
---
 drivers/input/touchscreen/colibri-vf50-ts.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/input/touchscreen/colibri-vf50-ts.c b/drivers/input/touchscreen/colibri-vf50-ts.c
index 5d4903a..594c096 100644
--- a/drivers/input/touchscreen/colibri-vf50-ts.c
+++ b/drivers/input/touchscreen/colibri-vf50-ts.c
@@ -25,6 +25,7 @@
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 #include <linux/types.h>
+#include <linux/of.h>
 
 #define DRIVER_NAME			"colibri-vf50-ts"
 #define DRV_VERSION			"1.0"
-- 
1.9.1

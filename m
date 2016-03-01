From: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] rtc: rtc-generic: use correct header file
Date: Tue,  1 Mar 2016 18:16:40 +0530
Message-ID: <1456836400-10102-1-git-send-email-sudipm.mukherjee@gmail.com>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=PoA3DlOmZdzLPUmev2PmRKiu8KViMiUBqInMFso6uc0=;
        b=oxvOxUNZiM9pdY2ysvytFKtgHQccTTFa9mv4UyYsXJ7rZyCIeQQg7e9kgL0sH8I5vo
         URsDCnB/DbPLwwwqjI+2zkzKpWfbXoGD5fFnNvtOuj4sJ/A1srhl+yjvnqzZRmU65XqF
         U12kGmihF1TXlKNWvKtW0H5bRq+xMfHs7T9IeK621uEFlHpXi7Uu1aG3F0I/s9m5KP7m
         iyW0oG8PuXij7eRtqKPZwz1o3Ft94a0P4M3+sDkm/3TVjx2APERin/A4hMU0GlgAG6GI
         wgcE2Qg3nSW0R3MuQBT0VCV9Jz/jCqyz731h3/d3LdJ6TVZ15WAdTxg4JHjFAxJyapNj
         zGdA==
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alessandro Zummo <a.zummo-BfzFCNDTiLLj+vYz1yj4TQ@public.gmane.org>, Alexandre Belloni <alexandre.belloni-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, rtc-linux-/JYPxA39Uh5TLH3MbocFFw@public.gmane.org, Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

The allmodconfig build of m32r fails with errors like:

In file included from drivers/rtc/rtc-generic.c:12:0:
arch/m32r/include/asm/rtc.h:46:8: error: redefinition of 'struct rtc_time'

drivers/rtc/rtc-generic.c: In function 'generic_get_time':
drivers/rtc/rtc-generic.c:16:21: error: implicit declaration of function 'get_rtc_time'

drivers/rtc/rtc-generic.c:18:12: error: 'RTC_BATT_BAD' undeclared

drivers/rtc/rtc-generic.c: In function 'generic_set_time':
drivers/rtc/rtc-generic.c:26:6: error: implicit declaration of function 'set_rtc_time'

Apart from m32r, many other arch like xtensa, sparc are failing with:
drivers/rtc/rtc-generic.c:12:21: fatal error: asm/rtc.h: No such file or directory

Other rtc drivers are using asm-generic/rtc.h, so use it here.

Fixes: 2a32c792f1c9 ("rtc: enable COMPILE_TEST")
Signed-off-by: Sudip Mukherjee <sudip.mukherjee-4yDnlxn2s6sWdaTGBSpHTA@public.gmane.org>
---

m32r allmodconfig build log is at:
https://travis-ci.org/sudipm-mukherjee/parport/jobs/112780210

failure with sparc and xtensa needs more work as after this patch also
they fail with error about missing file "mc146818rtc.h".

 drivers/rtc/rtc-generic.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/rtc/rtc-generic.c b/drivers/rtc/rtc-generic.c
index e782ebd..494dd85 100644
--- a/drivers/rtc/rtc-generic.c
+++ b/drivers/rtc/rtc-generic.c
@@ -9,7 +9,7 @@
 #include <linux/platform_device.h>
 #include <linux/rtc.h>
 
-#include <asm/rtc.h>
+#include <asm-generic/rtc.h>
 
 static int generic_get_time(struct device *dev, struct rtc_time *tm)
 {
-- 
1.9.1

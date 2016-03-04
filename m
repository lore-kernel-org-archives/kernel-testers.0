From: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] v4l2-mc.h: fix build failure
Date: Fri,  4 Mar 2016 21:24:13 +0530
Message-ID: <1457106853-10969-1-git-send-email-sudipm.mukherjee@gmail.com>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=964nh4CgbX+vLty2o0JYtD7whPu1znHT4ad10GtM/7I=;
        b=y5IzJqfn5YuxzalTWcwJ+qgVpnQUv2tuhNxuf2z1IkNEZAU/xeTDXiO7bhG0FiyoNw
         T2QD9ktn/c1YLhJNdywhdiqc6GM+BazxFk1RMMPBbfZbQ4XzrYzO/oPF51RCdE4VH4EU
         yzB/cvbbeQLygsaXxX2p4lhFMZKob8x8BvKP64UIJUW8zsdcE6Iwl6Uu8erstzdFTBiH
         C/sR4mEASRmUt8tZbPXHcTteqzoKg9xyqSnky+1moBiCyVMheDa772s9rpZbiyZKr40D
         L1IwV0s4jqp1HE4ZwN4Jc20olKtK8c4Mhg28EHKbpsbTsLXiHk9KPKqGTD7x6HvTN+Q6
         wGaw==
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mauro Carvalho Chehab <mchehab-JPH+aEBZ4P+UEJcrhfAQsw@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

We are getting build failure with arm for configurations like
exynos_defconfig, at91_dt_defconfig where MEDIA_CONTROLLER is not
defined.
While adding stubs static inline was missed and an extra ';' was added.

Fixes: a77bf7048add ("v4l2-mc.h: Add stubs for the V4L2 PM/pipeline routines")
Signed-off-by: Sudip Mukherjee <sudip.mukherjee-4yDnlxn2s6sWdaTGBSpHTA@public.gmane.org>
---

build logs at:
https://travis-ci.org/sudipm-mukherjee/parport/jobs/113601228
and
https://travis-ci.org/sudipm-mukherjee/parport/jobs/113601203

 include/media/v4l2-mc.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/media/v4l2-mc.h b/include/media/v4l2-mc.h
index 96cfca9..6096e63 100644
--- a/include/media/v4l2-mc.h
+++ b/include/media/v4l2-mc.h
@@ -229,13 +229,13 @@ static inline int v4l_vb2q_enable_media_source(struct vb2_queue *q)
 	return 0;
 }
 
-int v4l2_pipeline_pm_use(struct media_entity *entity, int use);
+static inline int v4l2_pipeline_pm_use(struct media_entity *entity, int use)
 {
 	return 0;
 }
 
-int v4l2_pipeline_link_notify(struct media_link *link, u32 flags,
-			      unsigned int notification);
+static inline int v4l2_pipeline_link_notify(struct media_link *link, u32 flags,
+			      unsigned int notification)
 {
 	return 0;
 }
-- 
1.9.1

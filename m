From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: regression after "drm/i915: fix page flip finish vs. prepare on
 plane B"
Date: Sun, 04 Jul 2010 20:08:13 +0200
Message-ID: <1278266893.5132.18.camel@zwerg>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org, simon.farnsworth-ByZzAK2WNt/QT0dZR+AlfA@public.gmane.org
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hallo all,
i have suspend problem after this patch:

commit 70565d00db6ef5735819db973fa8da95bd34a6ab
Author: Jesse Barnes <jbarnes-i+zFwBhNuU+v7KeE/7ZovXzaFgp7qdfK@public.gmane.org>
Date:   Thu Jul 1 04:45:43 2010 -0700

    drm/i915: fix page flip finish vs. prepare on plane B
    
    The refreshed patch had a copy & paste bug.
    
    Reported-by: Simon Farnsworth <simon.farnsworth-ByZzAK2WNt/QT0dZR+AlfA@public.gmane.org>
    Signed-off-by: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
    Signed-off-by: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

diff --git a/drivers/gpu/drm/i915/i915_irq.c
b/drivers/gpu/drm/i915/i915_irq.c
index d676e55..dba53d4 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -947,9 +947,9 @@ irqreturn_t i915_driver_irq_handler(DRM_IRQ_ARGS)
                }
 
                if (iir & I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT) {
+                       intel_prepare_page_flip(dev, 1);
                        if (dev_priv->flip_pending_is_done)
                                intel_finish_page_flip_plane(dev, 1);
-                       intel_prepare_page_flip(dev, 1);
                }
 
                if (pipea_stats & vblank_status) {

=============================================

for testing i use plain "echo mem > /sys/power/state"
after this, pc will initiate suspending and freeze with black screen and
cursor on the top left corner.
after reversing this patch suspend working again.
My conf: Intel DG45ID board (G45 + ICH10) and 64bit ubuntu 10.04

Regards,
Alexey


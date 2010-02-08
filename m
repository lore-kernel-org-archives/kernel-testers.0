From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #15015] blank screen at random times in laptop when
 sitting idle
Date: Mon, 8 Feb 2010 13:51:35 -0800
Message-ID: <20100208135135.0c7367b1@jbarnes-piketon>
References: <2uzMDuY-7_O.A.M1G.7X1bLB@chimera>
	<iuJeop2ribM.A.WL.qY1bLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <iuJeop2ribM.A.WL.qY1bLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jithin Emmanuel <jithin1987-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Mon,  8 Feb 2010 01:28:20 +0100 (CET)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still
> should be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15015
> Subject		: blank screen at random times in laptop when
> sitting idle Submitter	: Jithin Emmanuel <jithin1987-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-01-09 16:48 (30 days old)

Care to try this patch?  Just attached it to the bug too...

diff --git a/drivers/gpu/drm/i915/intel_display.c b/drivers/gpu/drm/i915/intel_display.c
index 06761e4..88d52a3 100644
--- a/drivers/gpu/drm/i915/intel_display.c
+++ b/drivers/gpu/drm/i915/intel_display.c
@@ -927,19 +927,28 @@ static void i8xx_enable_fbc(struct drm_crtc *crtc, unsigned long interval)
 void i8xx_disable_fbc(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = dev->dev_private;
+	unsigned long timeout = jiffies + msecs_to_jiffies(1);
 	u32 fbc_ctl;
 
 	if (!I915_HAS_FBC(dev))
 		return;
 
+	if (!(I915_READ(FBC_CONTROL) & FBC_CTL_EN))
+		return;	/* Already off, just return */
+
 	/* Disable compression */
 	fbc_ctl = I915_READ(FBC_CONTROL);
 	fbc_ctl &= ~FBC_CTL_EN;
 	I915_WRITE(FBC_CONTROL, fbc_ctl);
 
 	/* Wait for compressing bit to clear */
-	while (I915_READ(FBC_STATUS) & FBC_STAT_COMPRESSING)
-		; /* nothing */
+	while (I915_READ(FBC_STATUS) & FBC_STAT_COMPRESSING) {
+		if (time_after(jiffies, timeout)) {
+			DRM_DEBUG_DRIVER("FBC idle timed out\n");
+			break;
+		}
+		; /* do nothing */
+	}
 
 	intel_wait_for_vblank(dev);
 

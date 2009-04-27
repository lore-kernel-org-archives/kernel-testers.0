From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #12765] i915 VT switch with AIGLX causes X lock up
Date: Mon, 27 Apr 2009 09:46:51 -0700
Message-ID: <20090427094651.7cc09227@hobbes>
References: <tur5OtdUm3E.A.r2B.7oE9JB@chimera>
	<egHshlwQQFE.A.X4D.-qE9JB@chimera>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="MP_/NIRqWWW2G6ffVXmLhTLhGww"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <egHshlwQQFE.A.X4D.-qE9JB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, DRI <dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org>, Michel =?UTF-8?B?RMOkbnplcg==?= <michel-otUistvHUpPR7s880joybQ@public.gmane.org>, Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>

--MP_/NIRqWWW2G6ffVXmLhTLhGww
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Sun, 26 Apr 2009 11:46:26 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.28 and 2.6.29.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.28 and 2.6.29.  Please verify if it still
> should be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12765
> Subject		: i915 VT switch with AIGLX causes X lock up
> Submitter	: Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
> Date		: 2009-02-21 15:38 (65 days old)
> First-Bad-Commit:
> http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=14d200c5e5bd19219d930bbb9a5a22758c8f5bec
> References	:
> http://marc.info/?l=linux-kernel&m=123523074304955&w=4

I think we had a workaround for this (attached), but it sounds like
Robert has tracked down the root cause (search for "Broken vblanks on
Intel" on dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org).  Will try to get the fix
into the Intel driver soon.  Fortunately this doesn't seem to be biting
a lot of people (at least not that I've heard); I certainly have a hard
time reproducing it.

-- 
Jesse Barnes, Intel Open Source Technology Center

--MP_/NIRqWWW2G6ffVXmLhTLhGww
Content-Type: text/x-patch
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=drm-vblank-wait-fix.patch

diff --git a/drivers/gpu/drm/drm_irq.c b/drivers/gpu/drm/drm_irq.c
index 69aa0ab..c41cba4 100644
--- a/drivers/gpu/drm/drm_irq.c
+++ b/drivers/gpu/drm/drm_irq.c
@@ -341,7 +341,7 @@ int drm_control(struct drm_device *dev, void *data,
  * vblank events since the system was booted, including lost events due to
  * modesetting activity.
  */
-u32 drm_vblank_count(struct drm_device *dev, int crtc)
+unsigned int drm_vblank_count(struct drm_device *dev, int crtc)
 {
 	return atomic_read(&dev->_vblank_count[crtc]);
 }
@@ -522,6 +522,11 @@ out:
 	return ret;
 }
 
+#define frame_after_eq(a,b)	       \
+	(typecheck(unsigned int, a) && \
+	 typecheck(unsigned int, b) && \
+	 ((int)(a) - (int)(b) >= 0))
+
 /**
  * Wait for VBLANK.
  *
@@ -589,10 +594,12 @@ int drm_wait_vblank(struct drm_device *dev, void *data,
 	DRM_DEBUG("waiting on vblank count %d, crtc %d\n",
 		  vblwait->request.sequence, crtc);
 	dev->last_vblank_wait[crtc] = vblwait->request.sequence;
+
+	/* Wait for the sequence number to pass or IRQs to get disabled */
 	DRM_WAIT_ON(ret, dev->vbl_queue[crtc], 3 * DRM_HZ,
-		    (((drm_vblank_count(dev, crtc) -
-		       vblwait->request.sequence) <= (1 << 23)) ||
-		     !dev->irq_enabled));
+		    frame_after_eq(drm_vblank_count(dev, crtc),
+				   vblwait->request.sequence) ||
+		    !dev->irq_enabled);
 
 	if (ret != -EINTR) {
 		struct timeval now;

--MP_/NIRqWWW2G6ffVXmLhTLhGww--

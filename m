From: Roland Dreier <rdreier-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12491] i915 lockdep warning
Date: Fri, 06 Feb 2009 17:48:09 -0800
Message-ID: <adabptfc90m.fsf@cisco.com>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
	<pWZw1SZjMCH.A.ciH.4vYiJB@chimera> <adar62dltg1.fsf@cisco.com>
	<200902050203.40535.rjw@sisk.pl> <adar62bchfw.fsf@cisco.com>
	<F169D4F5E1F1974DBFAFABF47F60C10A1DFD867C@orsmsx507.amr.corp.intel.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <F169D4F5E1F1974DBFAFABF47F60C10A1DFD867C-osO9UTpF0URzLByeVOV5+bfspsVTdybXVpNB7YpNyf8@public.gmane.org>
	(Jesse Brandeburg's message of "Fri, 6 Feb 2009 17:20:27 -0800")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; l=3068; t=1233971290; x=1234835290;
	c=relaxed/simple; s=sjdkim2002;
	h=Content-Type:From:Subject:Content-Transfer-Encoding:MIME-Version;
	d=cisco.com; i=rdreier-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org;
	z=From:=20Roland=20Dreier=20<rdreier-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
	|Subject:=20Re=3A=20[Bug=20#12491]=20i915=20lockdep=20warni
	ng
	|Sender:=20;
	bh=K8R9RNUPVGs6ALSzlFrZU6CAyT90g2O5RHOFQkAZp2U=;
	b=KHQmiiQdT7bgDGp83HhGbojU1FvCr2VmeEfIF/QNHbZX8U/3riLfaVHT5t
	d16/Jepb5a++b/7ap2dO8DPcOua/X1Rh/ZJ3NjWaZIJMV279GI0cl23uKqrZ
	mS/f2XzyDC;
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Brandeburg, Jesse" <jesse.brandeburg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "drivers_video-dri@kernel-bugs.osdl.org" <drivers_video-dri-ztI5WcYan/vQLgFONoPN62D2FQJk+8+b@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, intel-gfx-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org

[intel-gfx CC added]

 > I tested this on my 965 based system that showed the issue and it seemed resolved, at least no warnings in dmesg.  Lockdep was confirmed to still be enabled.

 > I can mark the bug fixed in korg bugzilla too.

Probably we just want to add a comment saying the patch works -- the bug
should stay open until we get the fix upstream I guess.

 > Thank you Roland for looking into this, good work!

Thanks for testing!  Patch with updated changelog (including your
tested-by) below.  Jesse [Barnes] and/or Eric please review and apply:

---

i915: Fix potential AB-BA deadlock in i915_gem_execbuffer()

Lockdep warns that i915_gem_execbuffer() can trigger a page fault (which
takes mmap_sem) while holding dev->struct_mutex, while drm_vm_open()
(which is called with mmap_sem already held) takes dev->struct_mutex.
So this is a potential AB-BA deadlock.

The way that i915_gem_execbuffer() triggers a page fault is by doing
copy_to_user() when returning new buffer offsets back to userspace;
however there is no reason to hold the struct_mutex when doing this
copy, since what is being copied is the contents of an array private to
i915_gem_execbuffer() anyway.  So we can fix the potential deadlock (and
get rid of the lockdep warning) by simply moving the copy_to_user()
outside of where struct_mutex is held.

This fixes <http://bugzilla.kernel.org/show_bug.cgi?id=12491>.

Reported-by: Jesse Brandeburg <jesse.brandeburg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Tested-by: Jesse Brandeburg <jesse.brandeburg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Signed-off-by: Roland Dreier <rolandd-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
---
 drivers/gpu/drm/i915/i915_gem.c |   21 ++++++++++++---------
 1 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index debad5c..23aad8c 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -2610,15 +2610,6 @@ i915_gem_execbuffer(struct drm_device *dev, void *data,
 
 	i915_verify_inactive(dev, __FILE__, __LINE__);
 
-	/* Copy the new buffer offsets back to the user's exec list. */
-	ret = copy_to_user((struct drm_i915_relocation_entry __user *)
-			   (uintptr_t) args->buffers_ptr,
-			   exec_list,
-			   sizeof(*exec_list) * args->buffer_count);
-	if (ret)
-		DRM_ERROR("failed to copy %d exec entries "
-			  "back to user (%d)\n",
-			   args->buffer_count, ret);
 err:
 	for (i = 0; i < pinned; i++)
 		i915_gem_object_unpin(object_list[i]);
@@ -2628,6 +2619,18 @@ err:
 
 	mutex_unlock(&dev->struct_mutex);
 
+	if (!ret) {
+		/* Copy the new buffer offsets back to the user's exec list. */
+		ret = copy_to_user((struct drm_i915_relocation_entry __user *)
+				   (uintptr_t) args->buffers_ptr,
+				   exec_list,
+				   sizeof(*exec_list) * args->buffer_count);
+		if (ret)
+			DRM_ERROR("failed to copy %d exec entries "
+				  "back to user (%d)\n",
+				  args->buffer_count, ret);
+	}
+
 pre_mutex_err:
 	drm_free(object_list, sizeof(*object_list) * args->buffer_count,
 		 DRM_MEM_DRIVER);

From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12491] i915 lockdep warning
Date: Thu, 5 Feb 2009 02:03:39 +0100
Message-ID: <200902050203.40535.rjw@sisk.pl>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <pWZw1SZjMCH.A.ciH.4vYiJB@chimera> <adar62dltg1.fsf@cisco.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <adar62dltg1.fsf-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Roland Dreier <rdreier-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Brandeburg, Jesse" <jesse.brandeburg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, drivers_video-dri-ztI5WcYan/vQLgFONoPN62D2FQJk+8+b@public.gmane.org, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

[Adding CCs.]

On Wednesday 04 February 2009, Roland Dreier wrote:
>  > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12491
>  > Subject		: i915 lockdep warning
>  > Submitter	: Brandeburg, Jesse <jesse.brandeburg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
>  > Date		: 2009-01-13 23:17 (23 days old)
>  > References	: http://marc.info/?l=linux-kernel&m=123188898423532&w=4
> 
> Looking at the code, it seems that the issue is that the DRM
> struct_mutex must be taken inside mmap_sem (because struct_mutex is
> taken in drm_vm_open(), which is called with mmap_sem already held), but
> i915_gem_execbuffer() does a copy_to_user() while holding struct_mutex,
> and if this copy faults, then the VM tries to acquire mmap_sem -- ie
> lockdep identifies correctly a potential AB/BA deadlock.
> 
> I don't pretend to fully understand the DRM or GEM, but a possible fix
> is below -- would be worth it to test and review, and get into 2.6.29 if
> it is a correct fix:
> 
> ---
> i915: Fix potential AB-BA deadlock in i915_gem_execbuffer()
> 
> Lockdep warns that i915_gem_execbuffer() can trigger a page fault (which
> takes mmap_sem) while holding dev->struct_mutex, while drm_vm_open()
> (which is called with mmap_sem already held) takes dev->struct_mutex.
> So this is a potential AB-BA deadlock.
> 
> The way that i915_gem_execbuffer() triggers a page fault is by doing
> copy_to_user() when returning new buffer offsets back to userspace;
> however there is no reason to hold the struct_mutex when doing this
> copy, since what is being copied is a private array anyway.  So we can
> fix the potential deadlock (and get rid of the lockdep warning) by
> simply moving the copy_to_user() outside of where struct_mutex is held.
> 
> This fixes <http://bugzilla.kernel.org/show_bug.cgi?id=12491>.
> 
> Reported-by: Jesse Brandeburg <jesse.brandeburg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Signed-off-by: Roland Dreier <rolandd-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
> ---
>  drivers/gpu/drm/i915/i915_gem.c |   21 ++++++++++++---------
>  1 files changed, 12 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index debad5c..23aad8c 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -2610,15 +2610,6 @@ i915_gem_execbuffer(struct drm_device *dev, void *data,
>  
>  	i915_verify_inactive(dev, __FILE__, __LINE__);
>  
> -	/* Copy the new buffer offsets back to the user's exec list. */
> -	ret = copy_to_user((struct drm_i915_relocation_entry __user *)
> -			   (uintptr_t) args->buffers_ptr,
> -			   exec_list,
> -			   sizeof(*exec_list) * args->buffer_count);
> -	if (ret)
> -		DRM_ERROR("failed to copy %d exec entries "
> -			  "back to user (%d)\n",
> -			   args->buffer_count, ret);
>  err:
>  	for (i = 0; i < pinned; i++)
>  		i915_gem_object_unpin(object_list[i]);
> @@ -2628,6 +2619,18 @@ err:
>  
>  	mutex_unlock(&dev->struct_mutex);
>  
> +	if (!ret) {
> +		/* Copy the new buffer offsets back to the user's exec list. */
> +		ret = copy_to_user((struct drm_i915_relocation_entry __user *)
> +				   (uintptr_t) args->buffers_ptr,
> +				   exec_list,
> +				   sizeof(*exec_list) * args->buffer_count);
> +		if (ret)
> +			DRM_ERROR("failed to copy %d exec entries "
> +				  "back to user (%d)\n",
> +				  args->buffer_count, ret);
> +	}
> +
>  pre_mutex_err:
>  	drm_free(object_list, sizeof(*object_list) * args->buffer_count,
>  		 DRM_MEM_DRIVER);
> --

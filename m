From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11947] 2.6.28-rc VC switching with Intel graphics broken
Date: Wed, 26 Nov 2008 15:44:31 +0100
Message-ID: <200811261544.32461.rjw@sisk.pl>
References: <sBqd4qMeLzC.A.mgB.B7HKJB@chimera> <492AFCC3.4090602@birkenwald.de> <20081126083528.GM26036@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081126083528.GM26036-X9Un+BFzKDI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: Bernhard Schmidt <berni-wpePDvIxQxvMZTq/7ZfH4Q@public.gmane.org>, "Romano Giannetti (lists)" <romanol-vhWWKbMuD/XAemY8wzKmUg@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>, devsk <kernel-bugs.dev1world-w1QkCcy0X+BxKfgMtfWJuA@public.gmane.org>, Johan Bilien <jobi-HxYGxUgKSKlGWvitb5QawA@public.gmane.org>

On Wednesday, 26 of November 2008, Ingo Molnar wrote:
> 
> * Bernhard Schmidt <berni-wpePDvIxQxvMZTq/7ZfH4Q@public.gmane.org> wrote:
> 
> > Hello,
> >
> >> On Monday, November 24, 2008 12:47 am Romano Giannetti (lists) wrote:
> >>> Rafael J. Wysocki wrote:
> >>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11947
> >>>> Subject		: 2.6.28-rc VC switching with Intel graphics broken
> >>>> Submitter	: Romano Giannetti <romano.giannetti-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> >>>> Date		: 2008-11-03 12:10 (20 days old)
> >>>> Handled-By	: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
> >>> Still with us on -rc6, nasty, reproducible, no clues on what can be.
> >>>
> >>> VC switch locks or delay the systems minutes, resuming from suspend locks
> >>> hard the machine.
> >>>
> >>> 2.6.28-rc is unusable here.
> >>>
> >>> Jesse, any hints? My suspicion that it can be the same thing happened with
> >>> bug 10620 is wrong? (It was a very similar error about vblank...)
> >>
> >> Just added to the bug, it looks like a DUP of an issue Keith just fixed 
> >> last week (now to make sure the patch makes it upstream quickly).
> >
> > I can confirm that, with the patch from  
> > http://lists.freedesktop.org/archives/intel-gfx/2008-November/000614.html 
> > applied on top of current git head (rejected hunk in  
> > drivers/gpu/drm/i915/915_irq.c due to the additional  
> > dev_priv->irq_mask_reg = ~0; in git between the removed lines, I kept  
> > it) I can suspend/resume and do a VC switch again.
> >
> > Big thanks!
> 
> here it is below plaintext as well, merged up to latest -git.

Well, I still have a resume issue with this patch applied on Toshiba Portege
R500 (please see http://bugzilla.kernel.org/show_bug.cgi?id=12031#c9 for
details).

Thanks,
Rafael

 
> ------------------->
> From 60174462808051477793776c67282364bc94ded3 Mon Sep 17 00:00:00 2001
> From: Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>
> Date: Tue, 18 Nov 2008 09:30:25 -0800
> Subject: [PATCH] drm: move drm vblank initialization/cleanup to driver load/unload
> 
> drm vblank initialization keeps track of the changes in driver-supplied
> frame counts across vt switch and mode setting, but only if you let it by
> not tearing down the drm vblank structure.
> 
> Signed-off-by: Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>
> Signed-off-by: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> ---
>  drivers/gpu/drm/drm_drv.c       |    2 ++
>  drivers/gpu/drm/drm_irq.c       |    4 +---
>  drivers/gpu/drm/i915/i915_dma.c |    5 +++++
>  drivers/gpu/drm/i915/i915_drv.h |    2 ++
>  drivers/gpu/drm/i915/i915_irq.c |    5 -----
>  include/drm/drmP.h              |    1 +
>  6 files changed, 11 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
> index 3ab1e9c..996097a 100644
> --- a/drivers/gpu/drm/drm_drv.c
> +++ b/drivers/gpu/drm/drm_drv.c
> @@ -305,6 +305,8 @@ static void drm_cleanup(struct drm_device * dev)
>  		return;
>  	}
>  
> +	drm_vblank_cleanup(dev);
> +
>  	drm_lastclose(dev);
>  
>  	if (drm_core_has_MTRR(dev) && drm_core_has_AGP(dev) &&
> diff --git a/drivers/gpu/drm/drm_irq.c b/drivers/gpu/drm/drm_irq.c
> index 15c8dab..1e787f8 100644
> --- a/drivers/gpu/drm/drm_irq.c
> +++ b/drivers/gpu/drm/drm_irq.c
> @@ -94,7 +94,7 @@ static void vblank_disable_fn(unsigned long arg)
>  	}
>  }
>  
> -static void drm_vblank_cleanup(struct drm_device *dev)
> +void drm_vblank_cleanup(struct drm_device *dev)
>  {
>  	/* Bail if the driver didn't call drm_vblank_init() */
>  	if (dev->num_crtcs == 0)
> @@ -278,8 +278,6 @@ int drm_irq_uninstall(struct drm_device * dev)
>  
>  	free_irq(dev->pdev->irq, dev);
>  
> -	drm_vblank_cleanup(dev);
> -
>  	return 0;
>  }
>  EXPORT_SYMBOL(drm_irq_uninstall);
> diff --git a/drivers/gpu/drm/i915/i915_dma.c b/drivers/gpu/drm/i915/i915_dma.c
> index 0d215e3..9a1450e 100644
> --- a/drivers/gpu/drm/i915/i915_dma.c
> +++ b/drivers/gpu/drm/i915/i915_dma.c
> @@ -856,6 +856,11 @@ int i915_driver_load(struct drm_device *dev, unsigned long flags)
>  
>  	spin_lock_init(&dev_priv->user_irq_lock);
>  
> +	ret = drm_vblank_init(dev, I915_NUM_PIPE);
> +
> +	if (ret)
> +		return ret;
> +
>  	return ret;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index ef1c0b8..ec78190 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -47,6 +47,8 @@ enum pipe {
>  	PIPE_B,
>  };
>  
> +#define I915_NUM_PIPE	2
> +
>  /* Interface history:
>   *
>   * 1.1: Original.
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 82752d6..a60af31 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -483,14 +483,9 @@ void i915_driver_irq_preinstall(struct drm_device * dev)
>  int i915_driver_irq_postinstall(struct drm_device *dev)
>  {
>  	drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
> -	int ret, num_pipes = 2;
> -
>  	/* Set initial unmasked IRQs to just the selected vblank pipes. */
>  	dev_priv->irq_mask_reg = ~0;
>  
> -	ret = drm_vblank_init(dev, num_pipes);
> -	if (ret)
> -		return ret;
>  
>  	dev_priv->vblank_pipe = DRM_I915_VBLANK_PIPE_A | DRM_I915_VBLANK_PIPE_B;
>  	dev_priv->irq_mask_reg &= ~I915_DISPLAY_PIPE_A_VBLANK_INTERRUPT;
> diff --git a/include/drm/drmP.h b/include/drm/drmP.h
> index 28c7f16..d5e8e5c 100644
> --- a/include/drm/drmP.h
> +++ b/include/drm/drmP.h
> @@ -1151,6 +1151,7 @@ extern u32 drm_vblank_count(struct drm_device *dev, int crtc);
>  extern void drm_handle_vblank(struct drm_device *dev, int crtc);
>  extern int drm_vblank_get(struct drm_device *dev, int crtc);
>  extern void drm_vblank_put(struct drm_device *dev, int crtc);
> +extern void drm_vblank_cleanup(struct drm_device *dev);
>  /* Modesetting support */
>  extern int drm_modeset_ctl(struct drm_device *dev, void *data,
>  			   struct drm_file *file_priv);
> 
> 



-- 
Everyone knows that debugging is twice as hard as writing a program
in the first place.  So if you're as clever as you can be when you write it,
how will you ever debug it? --- Brian Kernighan

From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: Re: regression after "drm/i915: fix page flip finish vs. prepare
 on plane B"
Date: Wed, 07 Jul 2010 15:57:59 +0200
Message-ID: <1278511079.15565.3.camel@mini>
References: <1278266893.5132.18.camel@zwerg>
	 <20100704123510.6ca6f335@jbarnes-x201>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100704123510.6ca6f335@jbarnes-x201>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: simon.farnsworth-ByZzAK2WNt/QT0dZR+AlfA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Am Sonntag, den 04.07.2010, 12:35 -0700 schrieb Jesse Barnes:
> On Sun, 04 Jul 2010 20:08:13 +0200
> Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org> wrote:
> 
> > Hallo all,
> > i have suspend problem after this patch:
> > 
> > commit 70565d00db6ef5735819db973fa8da95bd34a6ab
> > Author: Jesse Barnes <jbarnes-i+zFwBhNuU+v7KeE/7ZovXzaFgp7qdfK@public.gmane.org>
> > Date:   Thu Jul 1 04:45:43 2010 -0700
> > 
> >     drm/i915: fix page flip finish vs. prepare on plane B
> >     
> >     The refreshed patch had a copy & paste bug.
> >     
> >     Reported-by: Simon Farnsworth <simon.farnsworth-ByZzAK2WNt/QT0dZR+AlfA@public.gmane.org>
> >     Signed-off-by: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
> >     Signed-off-by: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_irq.c
> > b/drivers/gpu/drm/i915/i915_irq.c
> > index d676e55..dba53d4 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -947,9 +947,9 @@ irqreturn_t i915_driver_irq_handler(DRM_IRQ_ARGS)
> >                 }
> >  
> >                 if (iir & I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT) {
> > +                       intel_prepare_page_flip(dev, 1);
> >                         if (dev_priv->flip_pending_is_done)
> >                                 intel_finish_page_flip_plane(dev, 1);
> > -                       intel_prepare_page_flip(dev, 1);
> >                 }
> >  
> >                 if (pipea_stats & vblank_status) {
> > 
> > =============================================
> > 
> > for testing i use plain "echo mem > /sys/power/state"
> > after this, pc will initiate suspending and freeze with black screen and
> > cursor on the top left corner.
> > after reversing this patch suspend working again.
> > My conf: Intel DG45ID board (G45 + ICH10) and 64bit ubuntu 10.04
> 
> Sounds like your kernel may have panic'd with the change.  The previous
> code was definitely wrong though, so it may be a more general problem
> with the flip done vs. pending bit.
> 
> Can you find the "vt/console: try harder to print output when panicing"
> patch and apply that?  You may get some better output and we can figure
> out what's going on.
> 
> Thanks,

Hmm... i have two problems now. It is not 100% reproducible, i still
look for correct position of moon and stars. And i still do not have
serial port.

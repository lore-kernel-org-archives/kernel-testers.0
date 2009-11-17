From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14380] Video tearing/glitching with T400 laptops
Date: Tue, 17 Nov 2009 23:30:42 +0100
Message-ID: <200911172330.42494.rjw@sisk.pl>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera> <xXQGFmujPl.A.wG.6TdALB@chimera> <200911171352.18563.a.miskiewicz@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200911171352.18563.a.miskiewicz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Arkadiusz Miskiewicz <a.miskiewicz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Theodore Ts'o <tytso-3s7WtUTddSA@public.gmane.org>

On Tuesday 17 November 2009, Arkadiusz Miskiewicz wrote:
> On Monday 16 of November 2009, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.31.  Please verify if it still should be listed and let me know
> > (either way).
> 
> It's mostly gone. It still happens for like 1/4s once per 6hours but jbarnes
> asked me to fill separate bug for that and gave such patch for testing (see below).
> 
> So far haven't seen 1/4s problem with this patch applied.

Great.

> diff --git a/drivers/gpu/drm/i915/intel_display.c b/drivers/gpu/drm/i915/intel_display.c
> index 3ba6546..b2cbf7f 100644
> --- a/drivers/gpu/drm/i915/intel_display.c
> +++ b/drivers/gpu/drm/i915/intel_display.c
> @@ -2491,6 +2491,8 @@ static void g4x_update_wm(struct drm_device *dev,  int planea_clock,
>                 /* Use ns/us then divide to preserve precision */
>                 sr_entries = (((sr_latency_ns / line_time_us) + 1) *
>                               pixel_size * sr_hdisplay) / 1000;
> +               if (sr_entries > G4X_FIFO_SIZE)
> +                       sr_entries = G4X_FIFO_SIZE;
>                 sr_entries = roundup(sr_entries / cacheline_size, 1);
>                 DRM_DEBUG("self-refresh entries: %d\n", sr_entries);
>                 I915_WRITE(FW_BLC_SELF, FW_BLC_SELF_EN);
> 
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14380
> > Subject		: Video tearing/glitching with T400 laptops
> > Submitter	: Theodore Ts'o <tytso-3s7WtUTddSA@public.gmane.org>
> > Date		: 2009-10-02 22:40 (46 days old)
> > References	: http://marc.info/?l=linux-kernel&m=125452324520623&w=4
> > Handled-By	: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
> > Patch		: http://marc.info/?l=linux-kernel&m=125591495325000&w=4

Thanks for the update.

Rafael

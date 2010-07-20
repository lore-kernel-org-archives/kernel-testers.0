From: Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
Subject: Re: 2.6.35-rc4-git3: Reported regressions from 2.6.34
Date: Mon, 19 Jul 2010 22:13:01 -0400
Message-ID: <201007192213.01304.shawn.starr@rogers.com>
References: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera> <201007192033.30849.shawn.starr@rogers.com> <201007192112.08468.shawn.starr@rogers.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rogers.com; s=s1024; t=1279591984; bh=QFLf7hea07+v6nrNFFQULBrMiYCLgb1zwTmP0bHsXms=; h=Received:X-Yahoo-SMTP:X-YMail-OSG:X-Yahoo-Newman-Property:From:Organization:To:Subject:Date:User-Agent:Cc:References:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id; b=HAPWqNXFIqSQMcdJEf87gLIyc/aSSJNKYNJNXZozVhbm9wzoSUTcv9KzzQgm9U1sZVIbQdTjCkg4gzCKKWyJyUYqs9QpzGaF73B6MyIBFp6pFzoihCVDMJXf5GNEJAbOGQzxo5Zfj2cFZSgn8QXIFfJ4RxjtUxs+ABm8c9JvTLQ=
In-Reply-To: <201007192112.08468.shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

On Monday, July 19, 2010 09:12:08 pm Shawn Starr wrote:
> On Monday, July 19, 2010 08:33:30 pm Shawn Starr wrote:
> > On Thursday, July 08, 2010 11:36:25 pm Shawn Starr wrote:
> > 
> > <snip>
> > 
> > > > > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=16311
> > > > > Subject         : [REGRESSION][SUSPEND] 2.6.35-rcX won't suspend
> > > > > Lenovo W500 laptop Submitter       : Shawn Starr
> > > > > <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org> Date            : 2010-06-28 0:45 (11 days
> > > > > old)
> > > > > Message-ID      : <201006272045.17004.shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
> > > > > References      :
> > > > > http://marc.info/?l=linux-kernel&m=127768633705286&w=2
> > > > 
> > > > I think this might be usefully bisected. Shawn?
> > > 
> > > I'll have to try bisecting this weekend. It continues in Linux sh0n.net
> > > 2.6.35-rc4+ #1 SMP Wed Jul 7 23:58:41 EDT 2010 x86_64 x86_64 x86_64
> > > GNU/Linux
> > 
> > This continues even with no USB devices plugged in. Will try with today's
> > snapshot build from Linus's tree. If this still happens, I'll see about
> > bisecting.
> > 
> > Thanks,
> > Shawn.
> 
> I also am testing this patch I noticed in anholt's tree, this may be GPU
> suspend issue.
> 
> diff --git a/drivers/gpu/drm/i915/i915_suspend.c
> b/drivers/gpu/drm/i915/i915_suspend.c
> index 60a5800..6e20252 100644 (file)
> --- a/drivers/gpu/drm/i915/i915_suspend.c
> +++ b/drivers/gpu/drm/i915/i915_suspend.c
> @@ -602,7 +602,9 @@ void i915_save_display(struct drm_device *dev)
> 
>         /* Only save FBC state on the platform that supports FBC */
>         if (I915_HAS_FBC(dev)) {
> -               if (IS_GM45(dev)) {
> +               if (IS_IRONLAKE_M(dev)) {
> +                       dev_priv->saveDPFC_CB_BASE =
> I915_READ(ILK_DPFC_CB_BASE);
> +               } else if (IS_GM45(dev)) {
>                         dev_priv->saveDPFC_CB_BASE =
> I915_READ(DPFC_CB_BASE); } else {
>                         dev_priv->saveFBC_CFB_BASE =
> I915_READ(FBC_CFB_BASE); @@ -706,7 +708,10 @@ void
> i915_restore_display(struct drm_device *dev)
> 
>         /* only restore FBC info on the platform that supports FBC*/
>         if (I915_HAS_FBC(dev)) {
> -               if (IS_GM45(dev)) {
> +               if (IS_IRONLAKE_M(dev)) {
> +                       ironlake_disable_fbc(dev);
> +                       I915_WRITE(ILK_DPFC_CB_BASE, dev_priv-
> 
> >saveDPFC_CB_BASE);
> 
> +               } else if (IS_GM45(dev)) {
>                         g4x_disable_fbc(dev);
>                         I915_WRITE(DPFC_CB_BASE,
> dev_priv->saveDPFC_CB_BASE); } else {


Made no difference, today's git snapshot, 2.6.35-rc5-git4 w/ airlied + anholt 
drm git trees still hangs attempting to suspend. in Fedora, it drops to the 
Fedora logo w/ KMS mode then fails to finish suspending (moon light flashes 
off and on), I do hear the disk heads parking though.

I will look at bisecting this week when time permits. If anyone else might 
know what might be the issue it would save some time in the bisecting.


Thanks,
Shawn.

From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: 2.6.35-rc4-git3: Reported regressions from 2.6.34
Date: Tue, 20 Jul 2010 17:24:56 +0200
Message-ID: <201007201724.57049.rjw@sisk.pl>
References: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera> <201007192112.08468.shawn.starr@rogers.com> <201007192213.01304.shawn.starr@rogers.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201007192213.01304.shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tuesday, July 20, 2010, Shawn Starr wrote:
> On Monday, July 19, 2010 09:12:08 pm Shawn Starr wrote:
> > On Monday, July 19, 2010 08:33:30 pm Shawn Starr wrote:
> > > On Thursday, July 08, 2010 11:36:25 pm Shawn Starr wrote:
> > > 
> > > <snip>
> > > 
> > > > > > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=16311
> > > > > > Subject         : [REGRESSION][SUSPEND] 2.6.35-rcX won't suspend
> > > > > > Lenovo W500 laptop Submitter       : Shawn Starr
> > > > > > <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org> Date            : 2010-06-28 0:45 (11 days
> > > > > > old)
> > > > > > Message-ID      : <201006272045.17004.shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
> > > > > > References      :
> > > > > > http://marc.info/?l=linux-kernel&m=127768633705286&w=2
> > > > > 
> > > > > I think this might be usefully bisected. Shawn?
> > > > 
> > > > I'll have to try bisecting this weekend. It continues in Linux sh0n.net
> > > > 2.6.35-rc4+ #1 SMP Wed Jul 7 23:58:41 EDT 2010 x86_64 x86_64 x86_64
> > > > GNU/Linux
> > > 
> > > This continues even with no USB devices plugged in. Will try with today's
> > > snapshot build from Linus's tree. If this still happens, I'll see about
> > > bisecting.
> > > 
> > > Thanks,
> > > Shawn.
> > 
> > I also am testing this patch I noticed in anholt's tree, this may be GPU
> > suspend issue.
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_suspend.c
> > b/drivers/gpu/drm/i915/i915_suspend.c
> > index 60a5800..6e20252 100644 (file)
> > --- a/drivers/gpu/drm/i915/i915_suspend.c
> > +++ b/drivers/gpu/drm/i915/i915_suspend.c
> > @@ -602,7 +602,9 @@ void i915_save_display(struct drm_device *dev)
> > 
> >         /* Only save FBC state on the platform that supports FBC */
> >         if (I915_HAS_FBC(dev)) {
> > -               if (IS_GM45(dev)) {
> > +               if (IS_IRONLAKE_M(dev)) {
> > +                       dev_priv->saveDPFC_CB_BASE =
> > I915_READ(ILK_DPFC_CB_BASE);
> > +               } else if (IS_GM45(dev)) {
> >                         dev_priv->saveDPFC_CB_BASE =
> > I915_READ(DPFC_CB_BASE); } else {
> >                         dev_priv->saveFBC_CFB_BASE =
> > I915_READ(FBC_CFB_BASE); @@ -706,7 +708,10 @@ void
> > i915_restore_display(struct drm_device *dev)
> > 
> >         /* only restore FBC info on the platform that supports FBC*/
> >         if (I915_HAS_FBC(dev)) {
> > -               if (IS_GM45(dev)) {
> > +               if (IS_IRONLAKE_M(dev)) {
> > +                       ironlake_disable_fbc(dev);
> > +                       I915_WRITE(ILK_DPFC_CB_BASE, dev_priv-
> > 
> > >saveDPFC_CB_BASE);
> > 
> > +               } else if (IS_GM45(dev)) {
> >                         g4x_disable_fbc(dev);
> >                         I915_WRITE(DPFC_CB_BASE,
> > dev_priv->saveDPFC_CB_BASE); } else {
> 
> 
> Made no difference, today's git snapshot, 2.6.35-rc5-git4 w/ airlied + anholt 
> drm git trees still hangs attempting to suspend. in Fedora, it drops to the 
> Fedora logo w/ KMS mode then fails to finish suspending (moon light flashes 
> off and on), I do hear the disk heads parking though.

Thanks for the update.

> I will look at bisecting this week when time permits. If anyone else might 
> know what might be the issue it would save some time in the bisecting.

Well, nothing comes to mind immediately at the moment.

Rafael

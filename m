From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13634] [drm:drm_wait_vblank] *ERROR* failed to acquire vblank counter, -22
Date: Thu, 20 Aug 2009 21:02:00 +0200
Message-ID: <200908202102.00850.rjw@sisk.pl>
References: <xDf-7eSwYsC.A.-6B.klIjKB@chimera> <200908202019.23819.rjw@sisk.pl> <20090820115130.6f824b8a@jbarnes-g45>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090820115130.6f824b8a@jbarnes-g45>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Cijoml Cijomlovic Cijomlov <cijoml-VIXq6x/3rUk@public.gmane.org>

On Thursday 20 August 2009, Jesse Barnes wrote:
> On Thu, 20 Aug 2009 20:19:23 +0200
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > On Thursday 20 August 2009, Jesse Barnes wrote:
> > > On Wed, 19 Aug 2009 22:40:45 +0200 (CEST)
> > > "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > > 
> > > > This message has been generated automatically as a part of a
> > > > report of regressions introduced between 2.6.29 and 2.6.30.
> > > > 
> > > > The following bug entry is on the current list of known
> > > > regressions introduced between 2.6.29 and 2.6.30.  Please verify
> > > > if it still should be listed and let me know (either way).
> > > > 
> > > > 
> > > > Bug-Entry	:
> > > > http://bugzilla.kernel.org/show_bug.cgi?id=13634
> > > > Subject		: [drm:drm_wait_vblank] *ERROR* failed to
> > > > acquire vblank counter, -22 Submitter	: Cijoml Cijomlovic
> > > > Cijomlov <cijoml-VIXq6x/3rUk@public.gmane.org> Date		: 2009-06-27 07:02
> > > > (54 days old)
> > > 
> > > Patches to fix this have been queued.
> > 
> > Thanks for the update.
> > 
> > Can you please give me a pointer to the patch?
> 
> commit 8d3457ec3198a569dd14dc9e3ae8b6163bcaa0b5
> Author: Paul Rolland <rol-hQZ2c1jdYO6sTnJN9+BGXg@public.gmane.org>
> Date:   Sun Aug 9 12:24:01 2009 +1000
> 
> Already in Linus's tree actually.

Thanks, closed.

Rafael

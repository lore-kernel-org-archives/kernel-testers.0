From: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Bug #16891] Kernel panic while loading intel module during
 boot
Date: Tue, 5 Oct 2010 18:08:22 +0200
Message-ID: <20101005160821.GA3565@viiv.ffwll.ch>
References: <OjxVjYbf_EJ.A.ReC.pTPqMB@chimera>
 <201010042142.29402.rjw@sisk.pl>
 <AANLkTinsc=DqQwnR18McRP8fLei=GHWV1yykCcYDUCzv@mail.gmail.com>
 <201010050040.59281.rjw@sisk.pl>
 <20101005132829.GE3548@suse.de>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20101005132829.GE3548@suse.de>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Greg KH <gregkh@suse.de>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Anisse Astier <anisse@astier.eu>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Eric Anholt <eric@anholt.net>, Tim Gardner <tim.gardner@canonical.com>, Daniel Vetter <daniel.vetter@ffwll.ch>, Andrew Morton <akpm@linux-foundation.org>, Jesse Barnes <jbarnes@virtuousgeek.org>, Chris Wilson <chris@chris-wilson.co.uk>

On Tue, Oct 05, 2010 at 06:28:29AM -0700, Greg KH wrote:
> On Tue, Oct 05, 2010 at 12:40:59AM +0200, Rafael J. Wysocki wrote:
> > On Monday, October 04, 2010, Anisse Astier wrote:
> > > Also this patch is new and didn't see much testing (I tested on 4
> > > different Intel GPUs, belonging only to 2 different families); if it's
> > > not merged for 2.6.36, it won't be for 2.6.37 (the new code will land
> > > first). If that happens, it might not meet conditions to be accepted
> > > in -stable (being in linus' tree first).
> > 
> > It's a panic fix, so I think it is -stable material anyway.  Greg?
> 
> That sounds good, please cc: stable@kernel.org with the proper
> information for this (git commit id, patch info, etc.)

I'll do that as soon as drm-intel-next has hit -linus. I've written the
original fix and marked it cc: stable so it won't get lost. I've been
rather cautious with pushing this because it's the 3rd trial to fix a bug
in late .35-rc. The previous fixes already caused regressions in -stable
and I'd simply like to avoid causing yet another regression over the same
problem.

Yours, Daniel
-- 
Daniel Vetter
Mail: daniel@ffwll.ch
Mobile: +41 (0)79 365 57 48

From: Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>
Subject: Re: [Bug #16891] Kernel panic while loading intel module during
 boot
Date: Tue, 5 Oct 2010 06:28:29 -0700
Message-ID: <20101005132829.GE3548@suse.de>
References: <OjxVjYbf_EJ.A.ReC.pTPqMB@chimera>
 <201010042142.29402.rjw@sisk.pl>
 <AANLkTinsc=DqQwnR18McRP8fLei=GHWV1yykCcYDUCzv@mail.gmail.com>
 <201010050040.59281.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <201010050040.59281.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Anisse Astier <anisse-fwwRqrJYcP2HXe+LvDLADg@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Tim Gardner <tim.gardner-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, Daniel Vetter <daniel.vetter-/w4YWyX8dFk@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>

On Tue, Oct 05, 2010 at 12:40:59AM +0200, Rafael J. Wysocki wrote:
> On Monday, October 04, 2010, Anisse Astier wrote:
> > On Mon, Oct 4, 2010 at 9:42 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > >> I'll provide this patch here in the meantime in case anyone is interested.
> > >
> > > Thanks for the update and the patch.
> > >
> > > Well, I wonder who's going to merge it?
> > >
> > 
> > I'm not sure is going to be merged because most of this code has been
> > re-written and has been sitting in drm-intel-next for a few weeks now.
> > This (welcome) rewrite will likely be merged in 2.6.37 (but I can't
> > speak for Chris).
> > 
> > This is a port of this patch:
> > http://git.kernel.org/?p=linux/kernel/git/ickle/drm-intel.git;a=commit;h=e5e408fc94595aab897f613b6f4e2f5b36870a6f
> > , but on completely different code.
> > 
> > Also this patch is new and didn't see much testing (I tested on 4
> > different Intel GPUs, belonging only to 2 different families); if it's
> > not merged for 2.6.36, it won't be for 2.6.37 (the new code will land
> > first). If that happens, it might not meet conditions to be accepted
> > in -stable (being in linus' tree first).
> 
> It's a panic fix, so I think it is -stable material anyway.  Greg?

That sounds good, please cc: stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org with the proper
information for this (git commit id, patch info, etc.)

thanks,

greg k-h

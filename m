From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #12705] X200: Brightness broken since 2.6.29-rc4-58-g4c098bc
Date: Tue, 17 Feb 2009 15:23:57 -0800
Message-ID: <200902171523.57612.jbarnes@virtuousgeek.org>
References: <juADNmcceYF.A.mdD.Mr0lJB@chimera> <1234911925.9844.89.camel@gaiman> <20090217231313.GA2654@srcf.ucam.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090217231313.GA2654-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>
Cc: Eric Anholt <eric.anholt-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Len Brown <lenb-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Nico Schottelius <nico-linux-20090213-xuaVFQXs+5hIG4jRRZ66WA@public.gmane.org>

On Tuesday, February 17, 2009 3:13 pm Matthew Garrett wrote:
> On Tue, Feb 17, 2009 at 03:05:25PM -0800, Eric Anholt wrote:
> > On Sun, 2009-02-15 at 13:43 +0000, Matthew Garrett wrote:
> > > On Sat, Feb 14, 2009 at 09:38:23PM +0100, Rafael J. Wysocki wrote:
> > > > The following bug entry is on the current list of known regressions
> > > > from 2.6.28.  Please verify if it still should be listed and let me
> > > > know (either way).
> > >
> > > I think Eric sent a test patch for this. Did that get pushed?
> >
> > I haven't done anything in the area of brightness control.
>
> This was drm failing to initialise because of incorrect mtrr setup and
> opregion not working as a result.

I sent one out; it just made the ioremap in i915_initialize into an ioremap_wc 
for consistency.

-- 
Jesse Barnes, Intel Open Source Technology Center

From: Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>
Subject: Re: [Bug #12705] X200: Brightness broken since 2.6.29-rc4-58-g4c098bc
Date: Tue, 17 Feb 2009 23:13:13 +0000
Message-ID: <20090217231313.GA2654@srcf.ucam.org>
References: <juADNmcceYF.A.mdD.Mr0lJB@chimera> <rjPbZ5GRJPO.A.htD.Sr0lJB@chimera> <20090215134347.GB21670@srcf.ucam.org> <1234911925.9844.89.camel@gaiman>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1234911925.9844.89.camel@gaiman>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Eric Anholt <eric.anholt-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Len Brown <lenb-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Nico Schottelius <nico-linux-20090213-xuaVFQXs+5hIG4jRRZ66WA@public.gmane.org>

On Tue, Feb 17, 2009 at 03:05:25PM -0800, Eric Anholt wrote:
> On Sun, 2009-02-15 at 13:43 +0000, Matthew Garrett wrote:
> > On Sat, Feb 14, 2009 at 09:38:23PM +0100, Rafael J. Wysocki wrote:
> > 
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.28.  Please verify if it still should be listed and let me know
> > > (either way).
> > 
> > I think Eric sent a test patch for this. Did that get pushed?
> 
> I haven't done anything in the area of brightness control.

This was drm failing to initialise because of incorrect mtrr setup and 
opregion not working as a result.

-- 
Matthew Garrett | mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org

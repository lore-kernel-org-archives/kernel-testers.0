From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #16161] [2.6.35-rc1 regression] sysfs: cannot create
 duplicate filename ... XVR-600 related?
Date: Fri, 18 Jun 2010 13:10:49 -0700
Message-ID: <20100618131049.462ca7ce@virtuousgeek.org>
References: <Rlf_Qjov7bG.A.a8F.I8rDMB@chimera>
	<19472.47559.578732.941291@pilspetsen.it.uu.se>
	<19475.45707.157935.788004@pilspetsen.it.uu.se>
	<201006122052.25204.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201006122052.25204.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sat, 12 Jun 2010 20:52:25 +0200
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> On Saturday, June 12, 2010, Mikael Pettersson wrote:
> > Mikael Pettersson writes:
> >  > Rafael J. Wysocki writes:
> >  >  > On Wednesday, June 09, 2010, Mikael Pettersson wrote:
> >  >  > > Rafael J. Wysocki wrote:
> >  >  > > > This message has been generated automatically as a part of a summary report
> >  >  > > > of recent regressions.
> >  >  > > > 
> >  >  > > > The following bug entry is on the current list of known regressions
> >  >  > > > from 2.6.34.  Please verify if it still should be listed and let the tracking team
> >  >  > > > know (either way).
> >  >  > > > 
> >  >  > > > 
> >  >  > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D16161
> >  >  > > > Subject		: [2.6.35-rc1 regression] sysfs: cannot create duplicate filename =
> >  >  > > > ... XVR-600 related?
> >  >  > > > Submitter	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
> >  >  > > > Date		: 2010-06-01 19:57 (8 days old)
> >  >  > > > Message-ID	: <19461.26166.427857.612983-tgku4HJDRZih8lFjZTKsyTAV6s6igYVG@public.gmane.org>
> >  >  > > > References	: http://marc.info/?l=3Dlinux-kernel&m=3D127542227511925&w=3D2
> >  >  > > 
> >  >  > > The bug is still there in 2.6.35-rc2. I haven't checked post-rc2 git snapshots.
> >  >  > 
> >  >  > Please test post-rc2 too.
> >  > 
> >  > The bug is still there in 2.6.35-rc2-git4.
> > 
> > The bug appears to be gone in 2.6.35-rc3.
> 
> Good.
> 
> > I don't know which commit actually fixed it.
> 
> Well, it would be useful information, but it's much more important it's not
> there anymore.

I reverted the symlink patch that was causing the trouble.  The root
cause is elsewhere though; it seems some firmwares report duplicate PCI
slot numbers...

-- 
Jesse Barnes, Intel Open Source Technology Center

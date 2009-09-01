From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14015] pty regressed again, breaking expect and gcc's testsuite
Date: Tue, 1 Sep 2009 20:42:59 +0200
Message-ID: <200909012042.59856.rjw@sisk.pl>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera> <19099.52899.620345.326521@pilspetsen.it.uu.se> <19100.31254.666066.755541@pilspetsen.it.uu.se>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <19100.31254.666066.755541-tgku4HJDRZih8lFjZTKsyTAV6s6igYVG@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Tuesday 01 September 2009, Mikael Pettersson wrote:
> Mikael Pettersson writes:
>  > Rafael J. Wysocki writes:
>  >  > On Saturday 29 August 2009, Mikael Pettersson wrote:
>  >  > > Mikael Pettersson writes:
>  >  > >  > Rafael J. Wysocki writes:
>  >  > >  >  > On Thursday 27 August 2009, Mikael Pettersson wrote:
>  >  > >  >  > > On Tue, 25 Aug 2009 22:34:53 +0200 (CEST), Rafael J. Wysocki wrote:
>  >  > >  >  > > > The following bug entry is on the current list of known regressions
>  >  > >  >  > > > from 2.6.30.  Please verify if it still should be listed and let me know
>  >  > >  >  > > > (either way).
>  >  > >  >  > > > 
>  >  > >  >  > > > 
>  >  > >  >  > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14015
>  >  > >  >  > > > Subject		: pty regressed again, breaking expect and gcc's testsuite
>  >  > >  >  > > > Submitter	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
>  >  > >  >  > > > Date		: 2009-08-14 23:41 (12 days old)
>  >  > >  >  > > > References	: http://marc.info/?l=3Dlinux-kernel&m=3D125029329805643&w=3D4
>  >  > >  >  > > 
>  >  > >  >  > > Not fixed. With 2.6.31-rc7 I'm still seeing repeatable testsuite
>  >  > >  >  > > failures on powerpc64. Reverting to 2.6.30 makes the failures go away.
>  >  > >  >  > 
>  >  > >  >  > Thanks for the update.
>  >  > >  >  > 
>  >  > >  >  > I guess 2.6.31-rc8 doesn't make any difference, does it?
>  >  > >  > 
>  >  > >  > I've scheduled a number of gcc bootstraps and testsuite runs
>  >  > >  > with -rc8 on x86, powerpc64, and arm. I'll post an update in
>  >  > >  > a day or so.
>  >  > > 
>  >  > > 2.6.31-rc8 results in bogus testsuite failures on all three platforms.
>  >  > 
>  >  > That may be a result of the known inotify borkage in -rc8 that has been fixed
>  >  > in the current Linus' tree.
>  > 
>  > No, it's the same old semi-random pty breakage. My kernels are built
>  > without inotify.
>  > 
>  > A bisection has identified Alan's
>  > 
>  > pty: Rework the pty layer to use the normal buffering logic
>  > d945cb9cce20ac7143c2de8d88b187f62db99bdc 
>  > 
>  > as the culprit. This patch introduces a massive number of bogus
>  > failures in the gcc testsuite. Subsequent pty/tty patches do fix
>  > most of those failures, but clearly not all.
> 
> Starting with 2.6.31-rc8 and reverting
> 
> 85dfd81dc57e8183a277ddd7a56aa65c96f3f487 pty: fix data loss when stopped (^S/^Q)
> d945cb9cce20ac7143c2de8d88b187f62db99bdc pty: Rework the pty layer to use the normal buffering logic
> 
> in that order gives me a kernel that works on both x86 and powerpc64.
> 
> So the bug is definitely limited to the pty buffering logic change.

Thanks a lot for this information, adding somme CCs to the list.

Best,
Rafael

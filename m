From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14015] pty regressed again, breaking expect and gcc's testsuite
Date: Fri, 28 Aug 2009 20:56:10 +0200
Message-ID: <200908282056.10251.rjw@sisk.pl>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera> <_yaHeGjHEzG.A.tMH.9sGlKB@chimera> <19094.58486.867940.103340@pilspetsen.it.uu.se>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <19094.58486.867940.103340-tgku4HJDRZih8lFjZTKsyTAV6s6igYVG@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Thursday 27 August 2009, Mikael Pettersson wrote:
> On Tue, 25 Aug 2009 22:34:53 +0200 (CEST), Rafael J. Wysocki wrote:
> > The following bug entry is on the current list of known regressions
> > from 2.6.30.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14015
> > Subject		: pty regressed again, breaking expect and gcc's testsuite
> > Submitter	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
> > Date		: 2009-08-14 23:41 (12 days old)
> > References	: http://marc.info/?l=3Dlinux-kernel&m=3D125029329805643&w=3D4
> 
> Not fixed. With 2.6.31-rc7 I'm still seeing repeatable testsuite
> failures on powerpc64. Reverting to 2.6.30 makes the failures go away.

Thanks for the update.

I guess 2.6.31-rc8 doesn't make any difference, does it?

Rafael

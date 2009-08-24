From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14015] pty regressed again, breaking expect and gcc's testsuite
Date: Mon, 24 Aug 2009 20:32:10 +0200
Message-ID: <200908242032.11065.rjw@sisk.pl>
References: <jCYznkTxcLB.A.EPH.eNIjKB@chimera> <ADSuNT6McuD.A.wlH.nNIjKB@chimera> <19090.26298.630328.344190@pilspetsen.it.uu.se>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <19090.26298.630328.344190-tgku4HJDRZih8lFjZTKsyTAV6s6igYVG@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Monday 24 August 2009, Mikael Pettersson wrote:
> On Wed, 19 Aug 2009 22:27:02 +0200 (CEST), Rafael J. Wysocki wrote:
> > The following bug entry is on the current list of known regressions
> > from 2.6.30.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14015
> > Subject		: pty regressed again, breaking expect and gcc's testsuite
> > Submitter	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
> > Date		: 2009-08-14 23:41 (6 days old)
> > References	: http://marc.info/?l=3Dlinux-kernel&m=3D125029329805643&w=3D4
> 
> The good news is that I don't see this issue any more with 2.6.31-rc7
> on x86. The bad news is that the first time I reported this issue, for
> -rc3 or -rc4 I think, I thought it was fixed in -rc5 only to see it
> reappear in -rc6 on x86 and in -rc5 on ARM. So I'd like to keep this
> open another week while I run more regression tests on non-x86 platforms.
> 
> While I don't suspect any arch-specific problems in the pty/tty code,
> I do suspect timing/race-type problems which are obviously affected
> by platform speed etc.

OK, thanks for the update.

Rafael

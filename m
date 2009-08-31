From: Mikael Pettersson <mikpe@it.uu.se>
Subject: Re: [Bug #14015] pty regressed again, breaking expect and gcc's testsuite
Date: Mon, 31 Aug 2009 15:22:43 +0200
Message-ID: <19099.52899.620345.326521@pilspetsen.it.uu.se>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera>
	<19096.15539.205951.931871@pilspetsen.it.uu.se>
	<19097.14413.89047.384281@pilspetsen.it.uu.se>
	<200908292101.38800.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753519AbZHaN0j@vger.kernel.org>
In-Reply-To: <200908292101.38800.rjw@sisk.pl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Mikael Pettersson <mikpe@it.uu.se>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

Rafael J. Wysocki writes:
 > On Saturday 29 August 2009, Mikael Pettersson wrote:
 > > Mikael Pettersson writes:
 > >  > Rafael J. Wysocki writes:
 > >  >  > On Thursday 27 August 2009, Mikael Pettersson wrote:
 > >  >  > > On Tue, 25 Aug 2009 22:34:53 +0200 (CEST), Rafael J. Wysocki wrote:
 > >  >  > > > The following bug entry is on the current list of known regressions
 > >  >  > > > from 2.6.30.  Please verify if it still should be listed and let me know
 > >  >  > > > (either way).
 > >  >  > > > 
 > >  >  > > > 
 > >  >  > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14015
 > >  >  > > > Subject		: pty regressed again, breaking expect and gcc's testsuite
 > >  >  > > > Submitter	: Mikael Pettersson <mikpe@it.uu.se>
 > >  >  > > > Date		: 2009-08-14 23:41 (12 days old)
 > >  >  > > > References	: http://marc.info/?l=3Dlinux-kernel&m=3D125029329805643&w=3D4
 > >  >  > > 
 > >  >  > > Not fixed. With 2.6.31-rc7 I'm still seeing repeatable testsuite
 > >  >  > > failures on powerpc64. Reverting to 2.6.30 makes the failures go away.
 > >  >  > 
 > >  >  > Thanks for the update.
 > >  >  > 
 > >  >  > I guess 2.6.31-rc8 doesn't make any difference, does it?
 > >  > 
 > >  > I've scheduled a number of gcc bootstraps and testsuite runs
 > >  > with -rc8 on x86, powerpc64, and arm. I'll post an update in
 > >  > a day or so.
 > > 
 > > 2.6.31-rc8 results in bogus testsuite failures on all three platforms.
 > 
 > That may be a result of the known inotify borkage in -rc8 that has been fixed
 > in the current Linus' tree.

No, it's the same old semi-random pty breakage. My kernels are built
without inotify.

A bisection has identified Alan's

pty: Rework the pty layer to use the normal buffering logic
d945cb9cce20ac7143c2de8d88b187f62db99bdc 

as the culprit. This patch introduces a massive number of bogus
failures in the gcc testsuite. Subsequent pty/tty patches do fix
most of those failures, but clearly not all.

/Mikael

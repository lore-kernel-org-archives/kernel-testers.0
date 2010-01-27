From: Thomas Meyer <thomas@m3y3r.de>
Subject: Re: [Bug #14670] i915: playing video via XVideo extension makes
 the screen flicker
Date: Wed, 27 Jan 2010 23:12:16 +0100
Message-ID: <1264630336.3326.3.camel@localhost.localdomain>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera>
	 <q60Z28d_9yH.A.fTB.-aMXLB@chimera>
	 <20100127095940.07e205ba@jbarnes-piketon>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756193Ab0A0WNP@vger.kernel.org>
In-Reply-To: <20100127095940.07e205ba@jbarnes-piketon>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jesse Barnes <jbarnes@virtuousgeek.org>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Eric Anholt <eric@anholt.net>

Am Mittwoch, den 27.01.2010, 09:59 -0800 schrieb Jesse Barnes:
> On Sun, 24 Jan 2010 23:22:54 +0100 (CET)
> "Rafael J. Wysocki" <rjw@sisk.pl> wrote:
> 
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.31 and 2.6.32.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14670
> > Subject		: i915: playing video via XVideo extension makes the screen flicker
> > Submitter	: Thomas Meyer <thomas@m3y3r.de>
> > Date		: 2009-11-23 13:15 (63 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=b42d4c5c6a872815d711e5d51a600f5122c38eee
> > References	: http://lkml.org/lkml/2010/1/11/150
> > 
> 
> this one may also be fixed by David's patch if -rc5 doesn't already fix
> it.

Still see this error with -rc5. But I guess this is very likely an
ACPI/BIOS error. I have an Acer 1810T (1410T in US of A) with BIOS
version 3302. Can someone with the same hardware but different (i.e.
newer BIOS version - version 3303) confirm this bug?

When the flickering occurs, switching VTs back and forth makes the
problem go away!

greets
thomas


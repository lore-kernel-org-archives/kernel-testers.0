From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #12765] i915 VT switch with AIGLX causes X lock up
Date: Thu, 19 Mar 2009 14:02:30 +0100
Message-ID: <200903191402.30936.rjw@sisk.pl>
References: <MiincthRUSI.A.eKC.F4BvJB@chimera> <GCLaknAim2M.A.e2D._4BvJB@chimera> <20090316175419.GC10814@silver.sucs.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754870AbZCSNCx@vger.kernel.org>
In-Reply-To: <20090316175419.GC10814@silver.sucs.org>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sitsofe Wheeler <sitsofe@yahoo.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Dave Airlie <airlied@redhat.com>, Jesse Barnes <jbarnes@virtuousgeek.org>, Michel =?iso-8859-1?q?D=E4nzer?= <michel@daenzer.net>

On Monday 16 March 2009, Sitsofe Wheeler wrote:
> On Sat, Mar 14, 2009 at 08:05:32PM +0100, Rafael J. Wysocki wrote:
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.28.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12765
> > Subject		: i915 VT switch with AIGLX causes X lock up
> > Submitter	: Sitsofe Wheeler <sitsofe@yahoo.com>
> > Date		: 2009-02-21 15:38 (22 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=14d200c5e5bd19219d930bbb9a5a22758c8f5bec
> > References	: http://marc.info/?l=linux-kernel&m=123523074304955&w=4
> 
> Still here in 2.6.29-rc8.

Thanks for the update.

Rafael

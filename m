From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12765] i915 VT switch with AIGLX causes X lock up
Date: Mon, 18 May 2009 19:10:37 +0200
Message-ID: <200905181910.39254.rjw@sisk.pl>
References: <yO1BmxN79sN.A.xAG.8_zDKB@chimera> <pQ9WADCjgyE.A.iyH.9B0DKB@chimera> <20090518071315.GA26870@sucs.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090518071315.GA26870-Ae9UE+oIsuU@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, DRI <dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Michel =?iso-8859-1?q?D=E4nzer?= <michel-otUistvHUpPR7s880joybQ@public.gmane.org>

On Monday 18 May 2009, Sitsofe Wheeler wrote:
> On Sat, May 16, 2009 at 10:05:57PM +0200, Rafael J. Wysocki wrote:
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.28 and 2.6.29.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12765
> > Subject		: i915 VT switch with AIGLX causes X lock up
> > Submitter	: Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
> > Date		: 2009-02-21 15:38 (85 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=14d200c5e5bd19219d930bbb9a5a22758c8f5bec
> > References	: http://marc.info/?l=linux-kernel&m=123523074304955&w=4
> > 		  http://lkml.org/lkml/2009/4/27/317
> > Handled-By	: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
> > Patch		: http://patchwork.kernel.org/patch/20197/
> 
> Yes, this problem is still here in 2.6.30-rc6-00026-g0f6f49a .

Thanks for the update.

Rafael

From: Soeren Sonnenburg <kernel-YxZl4NRrHdw@public.gmane.org>
Subject: Re: [Bug #12613] [Suspend regression][DRM, RADEON]
Date: Fri, 27 Feb 2009 11:14:32 +0100
Message-ID: <1235729672.25340.16.camel@localhost>
References: <GVhknozYwrL.A.hiC.rozoJB@chimera>
	 <vP9hdyF4fL.A.WIF.xpzoJB@chimera> <49A39A2D.7020007@numericable.fr>
	 <200902252358.10362.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200902252358.10362.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: etienne <etienne.basset-Bf/eaXMDFuuXqB7oj33eUg@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Wed, 2009-02-25 at 23:58 +0100, Rafael J. Wysocki wrote:
> On Tuesday 24 February 2009, etienne wrote:
> > Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a report
> > > of recent regressions.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.28.  Please verify if it still should be listed and let me know
> > > (either way).
> > > 
> > > 
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12613
> > > Subject		: [Suspend regression][DRM, RADEON]
> > > Submitter	: etienne <etienne.basset-Bf/eaXMDFuuXqB7oj33eUg@public.gmane.org>
> > > Date		: 2009-01-28 22:00 (27 days old)
> > > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=a9d51a5ad1154b5b20add1e8d30a5564f8aabbe9
> > > References	: http://marc.info/?l=linux-kernel&m=123318030419558&w=4
> > > 		  http://marc.info/?l=linux-kernel&m=123334865404574&w=4
> > > 		  http://lkml.org/lkml/2009/2/8/203
> > > Patch		: http://lkml.org/lkml/2009/2/15/28
> > > 
> > > 
> > > 
> > hello,
> > 
> > no it's gone, I see Dave sent a modified version of my patch (thanks!)
> > you can close the bug as far as i m concerned

On my macbook pro I had a hang today on resume from s2ram (on
git-current and back to running compiz). I will now try without
compositing for some time (and metacity) to see if it is the cause.

Soeren

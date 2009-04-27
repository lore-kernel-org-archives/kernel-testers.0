From: Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12765] i915 VT switch with AIGLX causes X lock up
Date: Mon, 27 Apr 2009 23:07:02 +0100
Message-ID: <20090427220702.GA31679@sucs.org>
References: <tur5OtdUm3E.A.r2B.7oE9JB@chimera> <egHshlwQQFE.A.X4D.-qE9JB@chimera> <20090427094651.7cc09227@hobbes>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090427094651.7cc09227@hobbes>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, DRI <dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org>, Michel =?iso-8859-1?Q?D=E4nzer?= <michel-otUistvHUpPR7s880joybQ@public.gmane.org>

On Mon, Apr 27, 2009 at 09:46:51AM -0700, Jesse Barnes wrote:
> On Sun, 26 Apr 2009 11:46:26 +0200 (CEST)
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.28 and 2.6.29.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.28 and 2.6.29.  Please verify if it still
> > should be listed and let me know (either way).

The problem is still here in 2.6.29-rc3.

> I think we had a workaround for this (attached), but it sounds like
> Robert has tracked down the root cause (search for "Broken vblanks on
> Intel" on dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org).  Will try to get the fix

http://www.mail-archive.com/dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org/msg39370.html
seems to be it.

> into the Intel driver soon.  Fortunately this doesn't seem to be biting
> a lot of people (at least not that I've heard); I certainly have a hard
> time reproducing it.

The patch that was attached to Jesse's mail seems to resolve the
problem...

-- 
Sitsofe | http://sucs.org/~sits/

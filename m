From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #13178] Booting very slow
Date: Tue, 26 May 2009 23:32:44 -0700
Message-ID: <20090526233244.b817948e.akpm@linux-foundation.org>
References: <GtY7d2eWpoK.A.ioC.MQcGKB@chimera>
	<WCcYF-TAbJC.A.VXD.iQcGKB@chimera>
	<349066.43765.qm@web32603.mail.mud.yahoo.com>
	<200905260104.04844.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200905260104.04844.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Martin Knoblauch <spamtrap-Ys4E+72pFW0hFhg+JK9F0w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

On Tue, 26 May 2009 01:04:04 +0200 "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> On Monday 25 May 2009, Martin Knoblauch wrote:
> > 
> > ----- Original Message ----
> > 
> > > From: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> > > To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
> > > Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>; Martin Knoblauch <spamtrap-Ys4E+72pFW0hFhg+JK9F0w@public.gmane.org>
> > > Sent: Sunday, May 24, 2009 9:31:18 PM
> > > Subject: [Bug #13178] Booting very slow
> > > 
> > > This message has been generated automatically as a part of a report
> > > of regressions introduced between 2.6.28 and 2.6.29.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > introduced between 2.6.28 and 2.6.29.  Please verify if it still should
> > > be listed and let me know (either way).
> > > 
> > > 
> > > Bug-Entry    : http://bugzilla.kernel.org/show_bug.cgi?id=13178
> > > Subject        : Booting very slow
> > > Submitter    : Martin Knoblauch 
> > > Date        : 2009-04-24 12:45 (31 days old)
> > > References    : http://marc.info/?l=linux-kernel&m=124057716231773&w=4
> > 
> >  Still happens with 2.6.30-rc7. But see my comment on bz. I would be willing to leave this as "fuzzy timing related problem.
> 
> OK
> 
> I've closed it as "unreproducible".
> 

afacit this should remain open.  It's a reproducible regression on one
of Martin's machines and it has been bisected down to a particular
commit which quite clearly has the potential to increase device
intialisation times by a lot.  Especially if that commit was buggy.

From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #14264] ehci problem - mouse dead on scroll
Date: Tue, 13 Oct 2009 22:39:52 +0200
Message-ID: <200910132239.52666.rjw@sisk.pl>
References: <Pine.LNX.4.44L0.0910131132150.3169-100000@iolanthe.rowland.org> <200910131755.20166.volkerarmin@googlemail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1761258AbZJMUjR@vger.kernel.org>
In-Reply-To: <200910131755.20166.volkerarmin@googlemail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Volker Armin Hemmann <volkerarmin@googlemail.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Oliver Neukum <oliver@neukum.org>

On Tuesday 13 October 2009, Volker Armin Hemmann wrote:
> On Dienstag 13 Oktober 2009, Alan Stern wrote:
> > On Mon, 12 Oct 2009, Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a report
> > > of regressions introduced between 2.6.30 and 2.6.31.
> > >
> > > The following bug entry is on the current list of known regressions
> > > introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> > > be listed and let me know (either way).
> > >
> > >
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14264
> > > Subject		: ehci problem - mouse dead on scroll
> > > Submitter	: Volker Armin Hemmann <volkerarmin@googlemail.com>
> > > Date		: 2009-09-12 7:46 (30 days old)
> > > References	: http://marc.info/?l=linux-kernel&m=125274202707893&w=4
> > > Handled-By	: Alan Stern <stern@rowland.harvard.edu>
> > 
> > This is probably a hardware problem in the mouse or the Logitech
> > receiver.  It affected both EHCI and OHCI, and it was not reproducible
> > with a different mouse.  But Volker hasn't reported any results since
> > the end of September.
> > 
> > Volker, another good test would be to try plugging your mouse into
> > someone else's computer.
> > 
> > Alan Stern
> > 
> 
> yeah, that is a problem - I am pretty 'alone' in regard of linux users. I know 
> very few, and they have either only servers without X or run some stable 
> distributions with old kernels.
> 
> It is probably hardware related. I have tried two other mice and both were ok. 
> Both had a lesser resolution and were slower, but that shouldn't make any 
> difference.

OK, I'm closing the bug.

Thanks,
Rafael

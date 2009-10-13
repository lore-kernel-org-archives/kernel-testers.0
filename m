From: "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>
Subject: Re: [Bug #14278] New message "NOHZ: local_softirq_pending 08" at
	each ping request
Date: Tue, 13 Oct 2009 10:27:26 -0400
Message-ID: <20091013142726.GA2747@tuxdriver.com>
References: <zJ_pXHNwoHC.A.akB.Aal0KB@chimera> <r-4Wjt4coy.A.VeE.Bbl0KB@chimera> <200910121515.49393.mb@bu3sch.de> <200910122349.39408.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200910122349.39408.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Michael Buesch <mb-fseUSCV1ubazQB+pC5nmwQ@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Christian Casteyde <casteyde.christian-GANU6spQydw@public.gmane.org>

On Mon, Oct 12, 2009 at 11:49:39PM +0200, Rafael J. Wysocki wrote:
> On Monday 12 October 2009, Michael Buesch wrote:
> > On Monday 12 October 2009 00:22:00 Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a report
> > > of recent regressions.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.31.  Please verify if it still should be listed and let me know
> > > (either way).
> > > 
> > > 
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14278
> > > Subject		: New message "NOHZ: local_softirq_pending 08" at each ping request
> > > Submitter	: Christian Casteyde <casteyde.christian-GANU6spQydw@public.gmane.org>
> > > Date		: 2009-09-30 18:12 (12 days old)
> > > Handled-By	: Michael Buesch <mb-fseUSCV1ubazQB+pC5nmwQ@public.gmane.org>
> > 
> > I think John or Johannes is handling it, as my patch was rejected.
> > 
> > > Patch		: http://bugzilla.kernel.org/attachment.cgi?id=23220
> 
> Johannes, what's the status here?

Johannes posted a patch here:

	http://marc.info/?l=linux-wireless&m=125525657120789&w=2

It is on my merge train, but it hasn't gone to Linus (or Dave) just
yet -- probably today.

Hth!

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org			might be all we have.  Be ready.

From: Eric Paris <eparis-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13845] inotify regression, missing events
Date: Tue, 28 Jul 2009 16:15:02 -0400
Message-ID: <1248812102.15671.0.camel@localhost>
References: <Jya1GruKQpD.A.16.2GObKB@chimera>
	 <3zAHs5O6maO.A.ATB.-GObKB@chimera> <1248683738.22308.0.camel@quest>
	 <200907280052.44653.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200907280052.44653.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Scott James Remnant <scott-GeWIH/nMZzLQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tue, 2009-07-28 at 00:52 +0200, Rafael J. Wysocki wrote:
> On Monday 27 July 2009, Scott James Remnant wrote:
> > On Sun, 2009-07-26 at 22:28 +0200, Rafael J. Wysocki wrote:
> > 
> > > This message has been generated automatically as a part of a report
> > > of recent regressions.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.30.  Please verify if it still should be listed and let me know
> > > (either way).
> > > 
> > > 
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13845
> > > Subject		: inotify regression, missing events
> > > Submitter	: Scott James Remnant <scott-GeWIH/nMZzLQT0dZR+AlfA@public.gmane.org>
> > > Date		: 2009-07-11 16:02 (16 days old)
> > > References	: http://marc.info/?l=linux-kernel&m=124732816314881&w=4
> > > Handled-By	: Eric Paris <eparis-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> > > 
> > This patch hasn't found its way into Linus' tree yet, so it's definitely
> > still an issue and should be listed.
> 
> Thanks for the update

Looks like it was pulled into Linus's tree last night if you would like
to test and verify.

-Eric

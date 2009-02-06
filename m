From: "Andrew S. Johnson" <andy-9eXmkf4BiQ2aMJb+Lgu22Q@public.gmane.org>
Subject: Re: [Bug #12426] TMDC Joystick no longer works in kernel 2.6.28
Date: Fri, 6 Feb 2009 08:09:21 -0600
Message-ID: <200902060809.21985.andy@asjohnson.com>
References: <a47yn9c9JrF.A.hz.L5YiJB@chimera> <alpine.LRH.1.10.0902041453190.22097@twin.jikos.cz> <200902050234.56056.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200902050234.56056.rjw-KKrjLPT3xs0@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wednesday 04 February 2009 07:34:55 pm Rafael J. Wysocki wrote:
> On Wednesday 04 February 2009, Jiri Kosina wrote:
> > On Wed, 4 Feb 2009, Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a
> > > report of regressions introduced between 2.6.27 and 2.6.28.
> > >
> > > The following bug entry is on the current list of known
> > > regressions introduced between 2.6.27 and 2.6.28.  Please
> > > verify if it still should be listed and let me know (either
> > > way).
> > >
> > >
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12426
> > > Subject		: TMDC Joystick no longer works in kernel 2.6.28
> > > Submitter	: Andrew S. Johnson <andy-9eXmkf4BiQ2aMJb+Lgu22Q@public.gmane.org>
> > > Date		: 2009-01-10 21:53 (26 days old)
> > > References	:
> > > http://marc.info/?l=linux-kernel&m=123162486415366&w=4
> >
> > I asked [1] the Submitter some time ago to check whether
> > reverting a particular commit fixes the issue, but never heard
> > back.
> >
> > [1] http://lkml.org/lkml/2009/1/26/70
>
> Rejected as "insufficient data" and closed.

I never received the email referring to a particular commit because
I am not subscribed to LKML.  The commit revert seemed to work OK on 
gameport.c, but I get an error that gameport.h requires merge 
resolution.

Can you send the gameport.c and gameport.h files to me with the
reverted commit, or tell me how to get this resolved?

Please CC me directly.

Thanks,

Andy Johnson

>
> Thanks,
> Rafael


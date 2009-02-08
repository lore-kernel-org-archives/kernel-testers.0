From: Eric Sesterhenn <snakebyte-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: [Bug #12605] Suspend regression, hang after matroxfb
Date: Sun, 8 Feb 2009 13:39:40 +0100
Message-ID: <20090208123940.GA14450@alice>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <pWZw1SZjMCH.A.2UE.zuYiJB@chimera> <20090205121624.GA17811@alice> <200902051712.56407.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200902051712.56407.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

* Rafael J. Wysocki (rjw-KKrjLPT3xs0@public.gmane.org) wrote:
> On Thursday 05 February 2009, Eric Sesterhenn wrote:
> > * Rafael J. Wysocki (rjw-KKrjLPT3xs0@public.gmane.org) wrote:
> > > This message has been generated automatically as a part of a report
> > > of recent regressions.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.28.  Please verify if it still should be listed and let me know
> > > (either way).
> > > 
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12605
> > > Subject		: Suspend regression, hang after matroxfb
> > > Submitter	: Eric Sesterhenn <snakebyte-Mmb7MZpHnFY@public.gmane.org>
> > > Date		: 2009-01-29 12:58 (7 days old)
> > > References	: http://thread.gmane.org/gmane.linux.power-management.general/12640
> > > Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> > > Patch		: http://marc.info/?l=linux-kernel&m=123335902122029&w=4
> > 
> > with todays -git I still get the same error, I have seen that some of 
> > your PM patches got applied, seems the one I need wasnt one of them.
> 
> No, it's not been merged yet.

This is fixed with todays -git. Thanks
A CC on the newer patches would have been nice, since I read the list
only via web archives, but i saw them floating by.

Greetings, Eric

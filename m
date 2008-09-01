From: Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: [Bug #11438] Upcoming oops in lockdep
Date: Mon, 1 Sep 2008 07:48:18 -0700
Message-ID: <20080901074818.06345dc9@infradead.org>
References: <q6jBvyFdWbL.A.K4C.fhbuIB@albercik>
	<1220132205.8426.40.camel@twins>
	<20080831210115.4fdff99f@infradead.org>
	<200809011348.29917.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200809011348.29917.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org

On Mon, 1 Sep 2008 13:48:29 +0200
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> On Monday, 1 of September 2008, Arjan van de Ven wrote:
> > On Sat, 30 Aug 2008 23:36:45 +0200
> > Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org> wrote:
> > 
> > > On Sat, 2008-08-30 at 21:50 +0200, Rafael J. Wysocki wrote:
> > > > This message has been generated automatically as a part of a
> > > > report of recent regressions.
> > > > 
> > > > The following bug entry is on the current list of known
> > > > regressions from 2.6.26.  Please verify if it still should be
> > > > listed and let me know (either way).
> > > > 
> > > > 
> > > > Bug-Entry	:
> > > > http://bugzilla.kernel.org/show_bug.cgi?id=11438
> > > > Subject		: Upcoming oops in lockdep
> > > > Submitter	: Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
> > > > Date		: 2008-08-23 20:49 (8 days old)
> > > > References	:
> > > > http://marc.info/?l=linux-kernel&m=121952463613140&w=4
> > > > http://www.kerneloops.org/searchweek.php?search=mark_lock
> > > > Handled-By	: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
> > > 
> > > as far as I'm concerned this has nothing to do with lockdep
> > > 
> > >
> > 
> > yeah the pattern increasing looks like a fedora special; eg the
> > fedora utrace patches seem to be utter bust. As long as we keep
> > utrace out of mainline we're fine ;-)
> 
> Should I close it, then?

yeah close it for now

-- 
If you want to reach me at my work email, use arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org
For development, discussion and tips for power savings, 
visit http://www.lesswatts.org

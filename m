From: Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: [Bug #12152] Huge wakeups number from i1915
Date: Sun, 7 Dec 2008 15:12:03 -0800
Message-ID: <20081207151203.46c01a0d@infradead.org>
References: <6VnlupFpCsN.A.2rE.MsEPJB@chimera>
	<07Xes05z25M.A.VtF.ksEPJB@chimera>
	<20081207145203.0f998d5b@infradead.org>
	<200812072352.07151.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200812072352.07151.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Yves-Alexis Perez <corsac-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>

On Sun, 7 Dec 2008 23:52:06 +0100
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> On Sunday, 7 of December 2008, Arjan van de Ven wrote:
> > On Sun,  7 Dec 2008 21:32:54 +0100 (CET)
> > "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > 
> > > This message has been generated automatically as a part of a
> > > report of recent regressions.
> > > 
> > > The following bug entry is on the current list of known
> > > regressions from 2.6.27.  Please verify if it still should be
> > > listed and let me know (either way).
> > > 
> > > 
> > > Bug-Entry	:
> > > http://bugzilla.kernel.org/show_bug.cgi?id=12152
> > > Subject		: Huge wakeups number from i1915
> > > Submitter	: Yves-Alexis Perez <corsac-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>
> > > Date		: 2008-12-02 16:48 (6 days old)
> > > References	:
> > > http://marc.info/?l=linux-acpi&m=122823656702994&w=4
> > > 
> > 
> > at least in some of the cases where this has been seen the cause is
> > the following:
> > The i915 DRM driver used to do polling for completion, busy
> > waiting. It moved to be interrupt driven, which is usually better
> > for power, but it will show up as more wakeups in powertop....
> 
> IOW, this is not a regression?

I don't know about this specifc case (not enough information) but for
the case I described it's not a regression. Going to interrupt driven
from busy waiting is an improvement not a regression :)

-- 
Arjan van de Ven 	Intel Open Source Technology Centre
For development, discussion and tips for power savings, 
visit http://www.lesswatts.org

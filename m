From: Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #11220] Screen stays black after resume
Date: Wed, 1 Oct 2008 00:25:49 +0200
Message-ID: <20080930222545.GA15903@ucw.cz>
References: <PJz8fNrJNHG.A.65F.wzq1IB@albercik> <7lIhZC4hCxE.A.9lB.P4q1IB@albercik>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <7lIhZC4hCxE.A.9lB.P4q1IB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Nico Schottelius <nico-xuaVFQXs+5hIG4jRRZ66WA@public.gmane.org>

On Sun 2008-09-21 20:54:09, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11220
> Subject		: Screen stays black after resume
> Submitter	: Nico Schottelius <nico-xuaVFQXs+5hIG4jRRZ66WA@public.gmane.org>
> Date		: 2008-07-31 21:05 (53 days old)
> References	: http://marc.info/?l=linux-kernel&m=121753882422899&w=4

This is actually three problems in one :-(.

If you try to suspend with minimum config, will resume still take 30
seconds?

Is the problem still there in 2.6.27-rc7?

Is there chance to bisect it?
									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

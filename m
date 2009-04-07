From: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Subject: Re: [Bug #12871] usb bluetooth crashes system
Date: Tue, 7 Apr 2009 23:09:46 +0200
Message-ID: <20090407210946.GK3278@elf.ucw.cz>
References: <n4io5wq70ZO.A.gzG.rFn2JB@chimera> <AsKNxFx2juN.A.dO.aGn2JB@chimera> <1239088599.19390.27.camel@violet>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1239088599.19390.27.camel@violet>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Marcel Holtmann <marcel-kz+m5ild9QBg9hUCZPvPmw@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>

On Tue 2009-04-07 09:16:39, Marcel Holtmann wrote:
> Hi Rafael,
> 
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.28.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12871
> > Subject		: usb bluetooth crashes system
> > Submitter	: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
> > Date		: 2009-03-10 11:23 (28 days old)
> > References	: http://marc.info/?l=linux-kernel&m=123668450400940&w=4
> 
> please have this re-tested against 2.6.30-rc1 then we can work on
> figuring out which patch might have fixed it. I think it is fixed now,
> but I could be also wrong here.

2.6.30-rc1 does not seem to be out (according to kernel.org); I can
test the latest git if that helps?
									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

From: Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>
Subject: Re: [Bug #12610] sync-Regression in 2.6.28.2?
Date: Sun, 22 Feb 2009 20:35:36 -0800
Message-ID: <20090223043536.GC19687@suse.de>
References: <juADNmcceYF.A.mdD.Mr0lJB@chimera> <rjPbZ5GRJPO.A.xTF.As0lJB@chimera> <20090221175646.GB3750@mit.edu> <200902221102.10579.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200902221102.10579.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Federico Cuello <fedux-yJigggV1mSdd+7ixHBZSzg@public.gmane.org>, Ralf Hildebrandt <Ralf.Hildebrandt-jq1tPX9l7E6ELgA04lAiVw@public.gmane.org>, bugme-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org

On Sun, Feb 22, 2009 at 11:02:09AM +0100, Rafael J. Wysocki wrote:
> On Saturday 21 February 2009, Theodore Tso wrote:
> > On Sat, Feb 14, 2009 at 09:38:18PM +0100, Rafael J. Wysocki wrote:
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12610
> > > Subject		: sync-Regression in 2.6.28.2?
> > > Submitter	: Ralf Hildebrandt <Ralf.Hildebrandt-jq1tPX9l7E6ELgA04lAiVw@public.gmane.org>
> > > Date		: 2009-01-27 9:35 (19 days old)
> > > References	: http://marc.info/?l=linux-kernel&m=123304977706620&w=4
> > 
> > This fix for this has landed in mainline post 2.6.29-rc5, as commit
> > 2acf2c.  The deadlock is technically not a regression but it was made
> > *much* more likely to show up because of commit 31a1266: ("mm:
> > write_cache_pages cyclic fix, which show up in 2.6.28.1").  
> > 
> > Commit 3a4c68 in mainline backs up the change made in 31a1266, so you
> > probably won't see this much after 2.6.28.6 (when 3a4c68 was
> > backported to 2.6.28.y), but we should get commit 2acf2c pushed to
> > 2.6.28.x and 2.6.27.y to completely solve the deadlock problem.
> 
> Thanks for the update.
> 
> I'll close the bug since it's fixed in the mainline.  Please tell Greg which
> patches to put into the -stable kernels.

Ted, can you forward the needed patches to stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, or just
tell us to take those git commits directly?

thanks,

greg k-h

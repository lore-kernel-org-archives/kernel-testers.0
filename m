From: Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #15038] drm/ksm: fbdev blanking regression
Date: Mon, 25 Jan 2010 16:28:05 +1000
Message-ID: <1264400885.8478.0.camel@localhost>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera>
	 <hE3x9c-4KZM.A.4_F.ZKMXLB@chimera> <20100124224516.GA20080@localhost>
	 <201001250013.48523.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201001250013.48523.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Johan Hovold <jhovold-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, James Simmons <jsimmons-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Mon, 2010-01-25 at 00:13 +0100, Rafael J. Wysocki wrote:
> On Sunday 24 January 2010, Johan Hovold wrote:
> > On Sun, Jan 24, 2010 at 11:04:36PM +0100, Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a report
> > > of recent regressions.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.32.  Please verify if it still should be listed and let me know
> > > (either way).
> > > 
> > > 
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15038
> > > Subject		: drm/ksm: fbdev blanking regression
> > > Submitter	: Johan Hovold <jhovold-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > > Date		: 2010-01-06 17:00 (19 days old)
> > > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=731b5a15a3b1474a41c2ca29b4c32b0f21bc852e
> > > References	: http://marc.info/?l=linux-kernel&m=126279726418748&w=4
> > > Handled-By	: James Simmons <jsimmons-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
> > 
> > Issue remains in rc5.
> 
> Thanks for the update.
> 
> OK, we know what commit broke things, we don't seem to know how to fix it,
> so perhaps it's time to revert that commit?

Just sent revert of the broken bit to Linus.

Dave.


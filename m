From: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Subject: Re: [PATCH 1/3] PM: Disable OOM killer during system-wide power
	transitions
Date: Sun, 3 May 2009 11:47:18 +0200
Message-ID: <20090503094718.GB10278@elf.ucw.cz>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905020027.31244.rjw@sisk.pl> <20090501160931.1dbd2abc.akpm@linux-foundation.org> <200905021334.51261.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200905021334.51261.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org


> > Does the same apply to suspending?  If so, why?
> 
> Because I think it doesn't work anyway.  User space processes are frozen and
> effectively in TASK_UNINTERRUPTIBLE, so they won't be killed.
> 
> > I think this is an OK change, as long as the only thing which is
> > allocating memory is hibernation itself.  If random processes are still
> > doing random memory allocations at this time then their failed memory
> > allocation could be just as fatal as an oom-killing.  Moreso if they're
> > s/bin/init or whatever.
> 
> At this point all of the user space tasks are frozen.

Well, many kernel threads still remain active. But it is true that OOM
killer is unlikely to help.

									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

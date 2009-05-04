From: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Subject: Re: [PATCH 0/4] PM: Drop shrink_all_memory (rev. 2) (was: Re:
	[PATCH 3/3] PM/Hibernate: Use memory allocations to free memory)
Date: Mon, 4 May 2009 11:33:10 +0200
Message-ID: <20090504093310.GC30306@elf.ucw.cz>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905030220.57933.rjw@sisk.pl> <20090503130818.GC9661@localhost> <200905031830.49690.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200905031830.49690.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org

Hi!

> I know that swsusp_shrink_memory() has problems, that's why I'd like to get rid
> of it.
> 
> > I wonder if it's possible to free up the memory within 1s at all.
> 
> I'm not sure.
> 
> Apparently, the counting of saveable pages takes substantial time (0.5 s each
> iteration on my 64-bit test box), so we can improve that by limiting the number
> of iterations.

We could increase step size after each step. Free in 40MB step, then
80MB step, then 160MB step, ...
									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

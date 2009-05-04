From: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Subject: Re: [PATCH 3/4] PM/Hibernate: Use memory allocations to free
	memory (rev. 2)
Date: Mon, 4 May 2009 11:36:28 +0200
Message-ID: <20090504093628.GD30306@elf.ucw.cz>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <alpine.LFD.2.01.0905021958480.4983@localhost.localdomain> <20090503093659.GA10278@elf.ucw.cz> <200905031835.06928.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200905031835.06928.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org

On Sun 2009-05-03 18:35:06, Rafael J. Wysocki wrote:
> On Sunday 03 May 2009, Pavel Machek wrote:
> > Hi!
> 
> Hi,
> 
> > > > Remove the shrinking of memory from the suspend-to-RAM code, where it is 
> > > > not really necessary.
> > > 
> > > Hmm. Shouldn't we do this _regardless_?
> > > 
> > > IOW, shouldn't this be a totally separate patch? It seems to be left-over 
> > > from when we shared the same code-paths, and before the split of the STR 
> > > and hibernate code?
> > > 
> > > IOW, shouldn't the very _first_ patch just be this part? That code doesn't 
> > > make any sense anyway (that FREE_PAGE_NUMBER really _is_ totally 
> > > arbitrary).
> > > 
> > > This part seems to be totally independent of all the other parts in your 
> > > patch-series. No?
> > 
> > I'm not sure this one is a good idea: drivers will need to allocate
> > memory during suspend/resume, and when processes are frozen/disk
> > driver is suspended, normal memory management will no longer work.
> > 
> > So, freeing 4M of memory before starting suspend seems like a good
> > idea. That way those small alocations will not fail.
> 
> I don't think we've ever had problems with the drivers having too little
> memory to suspend.

Well, we had the 4MB buffer there, so it is hardly surprising.

> I'm opting for removing this code and seeing if that leads to any regressions.
> If it does, we can still get some free memory by allocating and releasing it.

I believe we should. If we don't... we will not get any regression
reports, because it will probably just hang with black screen :-(, and
"being out of memory during suspend" is probably going to be hard to
reproduce.

Perhaps we should try to _eat_ all memory available during suspend to
test driver behaviour with 0 pages free?

	while (kmalloc(100, GFP_ATOMIC))
		;

in suspend path should just do it for testing.
									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

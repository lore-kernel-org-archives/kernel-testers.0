From: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Subject: Re: [PATCH] uswsusp: automatically free the in-memory image once
 s2disk has finished with it
Date: Thu, 3 Dec 2009 21:16:16 +0100
Message-ID: <20091203201616.GA11689@elf.ucw.cz>
References: <200912012253.08522.rjw@sisk.pl>
 <4B16545B.3090703@tuffmail.co.uk>
 <20091202122019.GD1457@csn.ul.ie>
 <4B16797C.3010304@tuffmail.co.uk>
 <20091202211107.GA20830@elf.ucw.cz>
 <20091202220718.GI1457@csn.ul.ie>
 <20091202221524.GB20830@elf.ucw.cz>
 <20091202222516.GD26702@csn.ul.ie>
 <20091203075301.GA29440@elf.ucw.cz>
 <4B17B5B8.1060105@tuffmail.co.uk>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <4B17B5B8.1060105-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Cc: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, pm list <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hi!

> >>>>What's wrong with it? The hang is likely because the allocator has no
> >>>>memory to work with. The patch in question makes small changes to the
> >>>>amount of available memory but it shouldn't matter on uni-core. Some
> >>>>structures are slightly larger but it's extremely borderline. I'm at a
> >>>>loss to explain actually why it makes a difference untill things were
> >>>>extremely borderline to begin with.
> >>>We reserve 4MB, for such purposes, and we already wrote image to disk
> >>>with such constrains, so memory should not be _too_ tight.
> >>>
> >>>Can you try increasing PAGES_FOR_IO to 8MB or something like that?
> >>>
> >>What's wrong with just freeing the memory that is no longer required?
> >
> >Nothing. But 4MB was enough to power down before, it is not enough
> >now, and I'd like to understand why.
> 
> Here's a new datum:
> 
> Applying this patch has left a less frequent hang.  So far it has
> happened twice.  (Once playing last night, and once today testing
> hibernation with KMS enabled).
> 
> This hang happens at a different point.  It happens _before_ writing
> out the hibernation image.  That is, I don't see the textual
> progress bar, and if I force a power-cycle then it doesn't resume
> (and complains about uncleanly unmounted filesystems).

Can you drop the patches, and try increasing PAGES_FOR_IO to 8MB? That
should give you enough memory...
								Pavel

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

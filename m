From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [PATCH 3/3] PM/Hibernate: Use memory allocations to free memory
Date: Sat, 2 May 2009 10:49:47 -0700
Message-ID: <20090502104947.2720f173.akpm@linux-foundation.org>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera>
	<200905020029.39181.rjw@sisk.pl>
	<20090501161423.94b37d5b.akpm@linux-foundation.org>
	<200905021346.34967.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200905021346.34967.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org

On Sat, 2 May 2009 13:46:34 +0200 "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> > Do we need the bitmap?  I expect we can just string all these pages
> > onto a local list via page.lru.  Would need to check that - the
> > pageframe fields are quite overloaded.
> 
> This is the reason why we use the bitmaps for hibernation. :-)

grep the tree for page->lru and you'll see that quite a few page
consumers are using it.  So you'd be pretty safe doing it this way.

Whether it's _worth_ doing it this way is debatable, given that
hibernation uses bitmaps elsewhere.  But it would shrink the patch a
bit I expect?

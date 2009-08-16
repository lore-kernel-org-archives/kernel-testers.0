From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [PATCH 5/5] PM/Hibernate: Do not release preallocated memory unnecessarily (rev. 2)
Date: Mon, 17 Aug 2009 00:48:01 +0200
Message-ID: <200908170048.01609.rjw@sisk.pl>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905060105.10800.rjw@sisk.pl> <20090816134610.GA6266@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090816134610.GA6266@localhost>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: "linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org" <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "pavel-+ZI9xUNit7I@public.gmane.org" <pavel-+ZI9xUNit7I@public.gmane.org>, "torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org" <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org" <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org" <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sunday 16 August 2009, Wu Fengguang wrote:
> On Wed, May 06, 2009 at 07:05:09AM +0800, Rafael J. Wysocki wrote:
> > On Tuesday 05 May 2009, Wu Fengguang wrote:
> > > On Mon, May 04, 2009 at 08:22:38AM +0800, Rafael J. Wysocki wrote:
> > > > From: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> > > > 
> > > > Since the hibernation code is now going to use allocations of memory
> > > > to create enough room for the image, it can also use the page frames
> > > > allocated at this stage as image page frames.  The low-level
> > > > hibernation code needs to be rearranged for this purpose, but it
> > > > allows us to avoid freeing a great number of pages and allocating
> > > > these same pages once again later, so it generally is worth doing.
> > > > 
> > > > [rev. 2: Change the strategy of preallocating memory to allocate as
> > > >  many pages as needed to get the right image size in one shot (the
> > > >  excessive allocated pages are released afterwards).]
> > > 
> > > Rafael, I tried out your patches and found doubled memory shrink speed!
> > >
> > > [  579.641781] PM: Preallocating image memory ... done (allocated 383900 pages, 128000 image pages kept)
> > > [  583.087875] PM: Allocated 1535600 kbytes in 3.43 seconds (447.69 MB/s)
> > 
> > Unfortunately, I'm observing a regression and a huge one.
> > 
> > On my Atom-based test box with 1 GB of RAM after a fresh boot and starting X
> > with KDE 4 there are ~256 MB free.  To create an image we need to free ~300 MB
> > and that takes ~2 s with the old code and ~15 s with the new one.
> > 
> > It helps to call shrink_all_memory() once with a sufficiently large argument
> > before the preallocation.
> 
> The 10 fold slowdown may be related to swapping IO:

I guess it is.

> shrink_all_memory() tends to be reclaiming less anon pages.
> 
> Is this box running on SSD? (Which can be slow on random writes.)

No, on a normal spinning-plate HDD (2.5'').

Thanks,
Rafael

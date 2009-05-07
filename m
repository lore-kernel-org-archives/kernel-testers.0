From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [PATCH 5/5] PM/Hibernate: Do not release preallocated memory unnecessarily (rev. 2)
Date: Thu, 7 May 2009 14:20:42 +0200
Message-ID: <200905071420.43491.rjw@sisk.pl>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905062254.10227.rjw@sisk.pl> <20090507015803.GA12281@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090507015803.GA12281@localhost>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Wu Fengguang <fengguang.wu-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org" <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "pavel-+ZI9xUNit7I@public.gmane.org" <pavel-+ZI9xUNit7I@public.gmane.org>, "torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org" <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org" <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org" <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Thursday 07 May 2009, Wu Fengguang wrote:
> On Thu, May 07, 2009 at 04:54:09AM +0800, Rafael J. Wysocki wrote:
> > On Wednesday 06 May 2009, Wu Fengguang wrote:
> > > On Wed, May 06, 2009 at 07:05:09AM +0800, Rafael J. Wysocki wrote:
> > > > On Tuesday 05 May 2009, Wu Fengguang wrote:
> > > > > On Mon, May 04, 2009 at 08:22:38AM +0800, Rafael J. Wysocki wrote:
> > > > > > From: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> > > > > > 
> > > > > > Since the hibernation code is now going to use allocations of memory
> > > > > > to create enough room for the image, it can also use the page frames
> > > > > > allocated at this stage as image page frames.  The low-level
> > > > > > hibernation code needs to be rearranged for this purpose, but it
> > > > > > allows us to avoid freeing a great number of pages and allocating
> > > > > > these same pages once again later, so it generally is worth doing.
> > > > > > 
> > > > > > [rev. 2: Change the strategy of preallocating memory to allocate as
> > > > > >  many pages as needed to get the right image size in one shot (the
> > > > > >  excessive allocated pages are released afterwards).]
> > > > > 
> > > > > Rafael, I tried out your patches and found doubled memory shrink speed!
> > > > >
> > > > > [  579.641781] PM: Preallocating image memory ... done (allocated 383900 pages, 128000 image pages kept)
> > > > > [  583.087875] PM: Allocated 1535600 kbytes in 3.43 seconds (447.69 MB/s)
> > > > 
> > > > Unfortunately, I'm observing a regression and a huge one.
> > > > 
> > > > On my Atom-based test box with 1 GB of RAM after a fresh boot and starting X
> > > > with KDE 4 there are ~256 MB free.  To create an image we need to free ~300 MB
> > > > and that takes ~2 s with the old code and ~15 s with the new one.
> > > > 
> > > > It helps to call shrink_all_memory() once with a sufficiently large argument
> > > > before the preallocation.
> > > [snip]
> > > > > At last, I'd express my major concern about the transition to preallocate
> > > > > based memory shrinking: will it lead to more random swapping IOs?
> > > > 
> > > > Hmm.  I don't see immediately why would it.  Maybe the regression I'm seeing
> > > > is related to that ...
> > > 
> > > So you do have swap file enabled? hibernate_preallocate_memory() will
> > > firstly try to allocate as much pages as possible(savable+free), and
> > > then to free up (allocated-image_size) pages.
> > 
> > No.  It's going to allocate (total RAM - anticipated image size) and then free
> > up (allocated-image_size) pages.
> 
> Ah yes - I didn't notice that count was subtracted here:
> 
>         for (count -= size; count > 0; count--) {
> 
> Make "count -= size" a standalone line to make that more obvious?

That should be clear in the new patches:
http://patchwork.kernel.org/patch/22193/
http://patchwork.kernel.org/patch/22191/

Thanks,
Rafael

From: Wu Fengguang <fengguang.wu-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH 5/5] PM/Hibernate: Do not release preallocated memory
	unnecessarily (rev. 2)
Date: Thu, 7 May 2009 09:58:03 +0800
Message-ID: <20090507015803.GA12281@localhost>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905060105.10800.rjw@sisk.pl> <20090506135659.GB26233@localhost> <200905062254.10227.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=kfCcQ3nrV+YSygV2TDvN+nA62+l5qEmo3wFqMWUyJgQ=;
        b=N98AaU9Qj4lfXfxZuy6MKH3uCZRaz6LBGxTVe6MxR7KMcdV+1hdkbjBMZ1JAxdvQxF
         djTqcMvbBqstJ2MbInZHph8UeF77kB/GzngXIrNrJ8uCiehXYJtqDg+XW7xo4ja2isPk
         FxmHyscyOrUHCd6vM7lDMS2QqsgkjYNkeXgps=
Content-Disposition: inline
In-Reply-To: <200905062254.10227.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: "linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org" <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "pavel-+ZI9xUNit7I@public.gmane.org" <pavel-+ZI9xUNit7I@public.gmane.org>, "torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org" <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org" <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org" <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Thu, May 07, 2009 at 04:54:09AM +0800, Rafael J. Wysocki wrote:
> On Wednesday 06 May 2009, Wu Fengguang wrote:
> > On Wed, May 06, 2009 at 07:05:09AM +0800, Rafael J. Wysocki wrote:
> > > On Tuesday 05 May 2009, Wu Fengguang wrote:
> > > > On Mon, May 04, 2009 at 08:22:38AM +0800, Rafael J. Wysocki wrote:
> > > > > From: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> > > > > 
> > > > > Since the hibernation code is now going to use allocations of memory
> > > > > to create enough room for the image, it can also use the page frames
> > > > > allocated at this stage as image page frames.  The low-level
> > > > > hibernation code needs to be rearranged for this purpose, but it
> > > > > allows us to avoid freeing a great number of pages and allocating
> > > > > these same pages once again later, so it generally is worth doing.
> > > > > 
> > > > > [rev. 2: Change the strategy of preallocating memory to allocate as
> > > > >  many pages as needed to get the right image size in one shot (the
> > > > >  excessive allocated pages are released afterwards).]
> > > > 
> > > > Rafael, I tried out your patches and found doubled memory shrink speed!
> > > >
> > > > [  579.641781] PM: Preallocating image memory ... done (allocated 383900 pages, 128000 image pages kept)
> > > > [  583.087875] PM: Allocated 1535600 kbytes in 3.43 seconds (447.69 MB/s)
> > > 
> > > Unfortunately, I'm observing a regression and a huge one.
> > > 
> > > On my Atom-based test box with 1 GB of RAM after a fresh boot and starting X
> > > with KDE 4 there are ~256 MB free.  To create an image we need to free ~300 MB
> > > and that takes ~2 s with the old code and ~15 s with the new one.
> > > 
> > > It helps to call shrink_all_memory() once with a sufficiently large argument
> > > before the preallocation.
> > [snip]
> > > > At last, I'd express my major concern about the transition to preallocate
> > > > based memory shrinking: will it lead to more random swapping IOs?
> > > 
> > > Hmm.  I don't see immediately why would it.  Maybe the regression I'm seeing
> > > is related to that ...
> > 
> > So you do have swap file enabled? hibernate_preallocate_memory() will
> > firstly try to allocate as much pages as possible(savable+free), and
> > then to free up (allocated-image_size) pages.
> 
> No.  It's going to allocate (total RAM - anticipated image size) and then free
> up (allocated-image_size) pages.

Ah yes - I didn't notice that count was subtracted here:

        for (count -= size; count > 0; count--) {

Make "count -= size" a standalone line to make that more obvious?

> If we consider maximum image sizes, that means allocating slightly more than
> 50% of RAM, so it really shouldn't regress that much IMO.

Right, that would be a less problem.

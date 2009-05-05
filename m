From: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH 5/5] PM/Hibernate: Do not release preallocated memory
	unnecessarily (rev. 2)
Date: Tue, 5 May 2009 10:46:46 +0800
Message-ID: <20090505024646.GA14621@localhost>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905031830.49690.rjw@sisk.pl> <200905040208.43040.rjw@sisk.pl> <200905040222.39062.rjw@sisk.pl> <20090505022427.GA10880@localhost>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090505022427.GA10880@localhost>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: "linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org" <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "pavel-+ZI9xUNit7I@public.gmane.org" <pavel-+ZI9xUNit7I@public.gmane.org>, "torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org" <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org" <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org" <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tue, May 05, 2009 at 10:24:27AM +0800, Wu Fengguang wrote:
> On Mon, May 04, 2009 at 08:22:38AM +0800, Rafael J. Wysocki wrote:
> > From: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> > 
> > Since the hibernation code is now going to use allocations of memory
> > to create enough room for the image, it can also use the page frames
> > allocated at this stage as image page frames.  The low-level
> > hibernation code needs to be rearranged for this purpose, but it
> > allows us to avoid freeing a great number of pages and allocating
> > these same pages once again later, so it generally is worth doing.
> > 
> > [rev. 2: Change the strategy of preallocating memory to allocate as
> >  many pages as needed to get the right image size in one shot (the
> >  excessive allocated pages are released afterwards).]
> 
> Rafael, I tried out your patches and found doubled memory shrink speed!
> 
> [  579.641781] PM: Preallocating image memory ... done (allocated 383900 pages, 128000 image pages kept)
> [  583.087875] PM: Allocated 1535600 kbytes in 3.43 seconds (447.69 MB/s)
 
> For you reference, here is the free memory before/after
> hibernate_preallocate_memory():
> 
>         # free
>                      total       used       free     shared    buffers     cached
>         Mem:          1933       1917         15          0          0       1845
>         -/+ buffers/cache:         72       1861
>         Swap:            0          0          0
> 
>         # free
>                      total       used       free     shared    buffers     cached
>         Mem:          1933        920       1012          0          0        356
>         -/+ buffers/cache:        563       1369
>         Swap:            0          0          0
> 
> It seems that the preallocated memory is not freed on -ENOMEM.

Ah, this was my fault.

I used to do this debugging trick:

        @@ -1207,7 +1207,7 @@ int hibernate_preallocate_memory(void)
                        pages, size);
                swsusp_show_speed(&start, &stop, pages, "Allocated");

        -       return 0;
        +       return -ENOMEM;

          err_out:
                printk(KERN_CONT "\n");

That "return -ENOMEM" should be "error = -ENOMEM" :-)

Here is one more run:

[  194.016991] PM: Preallocating image memory ... done (allocated 383897 pages, 128000 image pages kept)
[  196.505999] PM: Allocated 1535588 kbytes in 2.47 seconds (621.69 MB/s)

Now the free report is back to normal:

# free
             total       used       free     shared    buffers     cached
Mem:          1933         74       1858          0          0         15


Thanks,
Fengguang

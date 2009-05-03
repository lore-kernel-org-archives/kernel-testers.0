From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [PATCH 3/4] PM/Hibernate: Use memory allocations to free memory (rev. 2)
Date: Sun, 3 May 2009 18:35:06 +0200
Message-ID: <200905031835.06928.rjw@sisk.pl>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <alpine.LFD.2.01.0905021958480.4983@localhost.localdomain> <20090503093659.GA10278@elf.ucw.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090503093659.GA10278-I/5MKhXcvmPrBKCeMvbIDA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org

On Sunday 03 May 2009, Pavel Machek wrote:
> Hi!

Hi,

> > > Remove the shrinking of memory from the suspend-to-RAM code, where it is 
> > > not really necessary.
> > 
> > Hmm. Shouldn't we do this _regardless_?
> > 
> > IOW, shouldn't this be a totally separate patch? It seems to be left-over 
> > from when we shared the same code-paths, and before the split of the STR 
> > and hibernate code?
> > 
> > IOW, shouldn't the very _first_ patch just be this part? That code doesn't 
> > make any sense anyway (that FREE_PAGE_NUMBER really _is_ totally 
> > arbitrary).
> > 
> > This part seems to be totally independent of all the other parts in your 
> > patch-series. No?
> 
> I'm not sure this one is a good idea: drivers will need to allocate
> memory during suspend/resume, and when processes are frozen/disk
> driver is suspended, normal memory management will no longer work.
> 
> So, freeing 4M of memory before starting suspend seems like a good
> idea. That way those small alocations will not fail.

I don't think we've ever had problems with the drivers having too little
memory to suspend.

I'm opting for removing this code and seeing if that leads to any regressions.
If it does, we can still get some free memory by allocating and releasing it.

Thanks,
Rafael

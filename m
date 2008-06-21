From: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Subject: Re: [Experimental][PATCH] putback_lru_page rework
Date: Sat, 21 Jun 2008 17:41:28 +0900
Message-ID: <20080621173912.E824.KOSAKI.MOTOHIRO@jp.fujitsu.com>
References: <20080620101352.e1200b8e.kamezawa.hiroyu@jp.fujitsu.com> <1213981843.6474.68.camel@lts-notebook>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1213981843.6474.68.camel@lts-notebook>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Lee Schermerhorn <Lee.Schermerhorn-VXdhtT5mjnY@public.gmane.org>
Cc: kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

> > Before:
> >       lock_page()(TestSetPageLocked())
> >       spin_lock(zone->lock)
> >       unlock_page()
> >       spin_unlock(zone->lock)  
> 
> Couple of comments:
> * I believe that the locks are acquired in the right order--at least as
> documented in the comments in mm/rmap.c.  
> * The unlocking appears out of order because this function attempts to
> hold the zone lock across a few pages in the pagevec, but must switch to
> a different zone lru lock when it finds a page on a different zone from
> the zone whose lock it is holding--like in the pagevec draining
> functions, altho' they don't need to lock the page.
> 
> > After:
> >       spin_lock(zone->lock)
> >       spin_unlock(zone->lock)
> 
> Right.  With your reworked check_move_unevictable_page() [with retry],
> we don't need to lock the page here, any more.  That means we can revert
> all of the changes to pass the mapping back to sys_shmctl() and move the
> call to scan_mapping_unevictable_pages() back to shmem_lock() after
> clearing the address_space's unevictable flag.  We only did that to
> avoid sleeping while holding the shmem_inode_info lock and the
> shmid_kernel's ipc_perm spinlock.  
> 
> Shall I handle that, after we've tested this patch?

Yeah, I'll do it :)


> > @@ -2438,7 +2437,7 @@ static void show_page_path(struct page *
> >   */
> >  static void check_move_unevictable_page(struct page *page, struct zone *zone)
> >  {
> > -
> > +retry:
> >  	ClearPageUnevictable(page); /* for page_evictable() */
> We can remove this comment            ^^^^^^^^^^^^^^^^^^^^^^^^^^
> page_evictable() no longer asserts !PageUnevictable(), right?

Yes.
I'll remove it.



--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

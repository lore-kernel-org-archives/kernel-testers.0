From: Lee Schermerhorn <Lee.Schermerhorn-VXdhtT5mjnY@public.gmane.org>
Subject: Re: [Experimental][PATCH] putback_lru_page rework
Date: Fri, 20 Jun 2008 13:10:43 -0400
Message-ID: <1213981843.6474.68.camel@lts-notebook>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org>
	 <20080617163501.7cf411ee.nishimura@mxp.nes.nec.co.jp>
	 <20080617164709.de4db070.nishimura@mxp.nes.nec.co.jp>
	 <20080618184000.a855dfe0.kamezawa.hiroyu@jp.fujitsu.com>
	 <1213813266.6497.14.camel@lts-notebook>
	 <20080619092242.79648592.kamezawa.hiroyu@jp.fujitsu.com>
	 <1213886722.6398.29.camel@lts-notebook>
	 <20080620101352.e1200b8e.kamezawa.hiroyu@jp.fujitsu.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080620101352.e1200b8e.kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Cc: Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Kosaki Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Fri, 2008-06-20 at 10:13 +0900, KAMEZAWA Hiroyuki wrote:
> Lee-san, this is an additonal one..
> Not-tested-yet, just by review.

OK, I'll test this on my x86_64 platform, which doesn't seem to hit the
soft lockups.

>=20
> Fixing page_lock() <-> zone->lock nesting of bad-behavior.
>=20
> Before:
>       lock_page()(TestSetPageLocked())
>       spin_lock(zone->lock)
>       unlock_page()
>       spin_unlock(zone->lock) =20

Couple of comments:
* I believe that the locks are acquired in the right order--at least as
documented in the comments in mm/rmap.c. =20
* The unlocking appears out of order because this function attempts to
hold the zone lock across a few pages in the pagevec, but must switch t=
o
a different zone lru lock when it finds a page on a different zone from
the zone whose lock it is holding--like in the pagevec draining
functions, altho' they don't need to lock the page.

> After:
>       spin_lock(zone->lock)
>       spin_unlock(zone->lock)

Right.  With your reworked check_move_unevictable_page() [with retry],
we don't need to lock the page here, any more.  That means we can rever=
t
all of the changes to pass the mapping back to sys_shmctl() and move th=
e
call to scan_mapping_unevictable_pages() back to shmem_lock() after
clearing the address_space's unevictable flag.  We only did that to
avoid sleeping while holding the shmem_inode_info lock and the
shmid_kernel's ipc_perm spinlock. =20

Shall I handle that, after we've tested this patch?

>=20
> Including nit-pick fix. (I'll ask Kosaki-san to merge this to his 5/5=
)
>=20
> Hmm...
>=20
> ---
>  mm/vmscan.c |   25 +++++--------------------
>  1 file changed, 5 insertions(+), 20 deletions(-)
>=20
> Index: test-2.6.26-rc5-mm3/mm/vmscan.c
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> --- test-2.6.26-rc5-mm3.orig/mm/vmscan.c
> +++ test-2.6.26-rc5-mm3/mm/vmscan.c
> @@ -1106,7 +1106,7 @@ static unsigned long shrink_inactive_lis
>  		if (nr_taken =3D=3D 0)
>  			goto done;
> =20
> -		spin_lock(&zone->lru_lock);
> +		spin_lock_irq(&zone->lru_lock);

1) It appears that the spin_lock() [no '_irq'] was there because irqs
are disabled a few lines above so that we could use non-atomic
__count[_zone]_vm_events(). =20
=EF=BB=BF2) I think this predates the split lru or unevictable lru patc=
hes, so
these changes are unrelated.
>  		/*
>  		 * Put back any unfreeable pages.
>  		 */
> @@ -1136,9 +1136,8 @@ static unsigned long shrink_inactive_lis
>  			}
>  		}
>    	} while (nr_scanned < max_scan);
> -	spin_unlock(&zone->lru_lock);
> +	spin_unlock_irq(&zone->lru_lock);
>  done:
> -	local_irq_enable();
>  	pagevec_release(&pvec);
>  	return nr_reclaimed;
>  }
> @@ -2438,7 +2437,7 @@ static void show_page_path(struct page *
>   */
>  static void check_move_unevictable_page(struct page *page, struct zo=
ne *zone)
>  {
> -
> +retry:
>  	ClearPageUnevictable(page); /* for page_evictable() */
We can remove this comment            ^^^^^^^^^^^^^^^^^^^^^^^^^^
page_evictable() no longer asserts !PageUnevictable(), right?

>  	if (page_evictable(page, NULL)) {
>  		enum lru_list l =3D LRU_INACTIVE_ANON + page_is_file_cache(page);
> @@ -2455,6 +2454,8 @@ static void check_move_unevictable_page(
>  		 */
>  		SetPageUnevictable(page);
>  		list_move(&page->lru, &zone->lru[LRU_UNEVICTABLE].list);
> +		if (page_evictable(page, NULL))
> +			goto retry;
>  	}
>  }
> =20
> @@ -2494,16 +2495,6 @@ void scan_mapping_unevictable_pages(stru
>  				next =3D page_index;
>  			next++;
> =20
> -			if (TestSetPageLocked(page)) {
> -				/*
> -				 * OK, let's do it the hard way...
> -				 */
> -				if (zone)
> -					spin_unlock_irq(&zone->lru_lock);
> -				zone =3D NULL;
> -				lock_page(page);
> -			}
> -
>  			if (pagezone !=3D zone) {
>  				if (zone)
>  					spin_unlock_irq(&zone->lru_lock);
> @@ -2514,8 +2505,6 @@ void scan_mapping_unevictable_pages(stru
>  			if (PageLRU(page) && PageUnevictable(page))
>  				check_move_unevictable_page(page, zone);
> =20
> -			unlock_page(page);
> -
>  		}
>  		if (zone)
>  			spin_unlock_irq(&zone->lru_lock);
> @@ -2551,15 +2540,11 @@ void scan_zone_unevictable_pages(struct=20
>  		for (scan =3D 0;  scan < batch_size; scan++) {
>  			struct page *page =3D lru_to_page(l_unevictable);
> =20
> -			if (TestSetPageLocked(page))
> -				continue;
> -
>  			prefetchw_prev_lru_page(page, l_unevictable, flags);
> =20
>  			if (likely(PageLRU(page) && PageUnevictable(page)))
>  				check_move_unevictable_page(page, zone);
> =20
> -			unlock_page(page);
>  		}
>  		spin_unlock_irq(&zone->lru_lock);
> =20
>=20

I'll let you know how it goes.

Later,
Lee

--
To unsubscribe from this list: send the line "unsubscribe kernel-tester=
s" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

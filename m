From: Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>
Subject: Re: [Experimental][PATCH] putback_lru_page rework
Date: Thu, 19 Jun 2008 17:00:59 +0900
Message-ID: <20080619170059.60b42e73.nishimura@mxp.nes.nec.co.jp>
References: <20080617164709.de4db070.nishimura@mxp.nes.nec.co.jp>
	<20080618184000.a855dfe0.kamezawa.hiroyu@jp.fujitsu.com>
	<20080618195009.37BF.KOSAKI.MOTOHIRO@jp.fujitsu.com>
	<20080618205540.11a1644b.kamezawa.hiroyu@jp.fujitsu.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080618205540.11a1644b.kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Cc: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Lee Schermerhorn <lee.schermerhorn-VXdhtT5mjnY@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

> > > -		unlock = putback_lru_page(newpage);
> > > +		putback_lru_page(newpage);
> > >  	} else
> > >  		newpage->mapping = NULL;
> > 
> > originally move_to_lru() called in unmap_and_move().
> > unevictable infrastructure patch move to this point for 
> > calling putback_lru_page() under page locked.
> > 
> > So, your patch remove page locked dependency.
> > move to unmap_and_move() again is better.
> > 
> > it become page lock holding time reducing.
> > 
> ok, will look into again.
> 

I agree with Kosaki-san.

And VM_BUG_ON(page_count(newpage) != 1) in unmap_and_move()
is not correct again, IMHO.
I got this BUG actually when testing this patch(with
migratin_entry_wait fix).

unmap_and_move()
	move_to_new_page()
		migrate_page()
		remove_migration_ptes()
		putback_lru_page()			(*1)
	  :
        if (!newpage->mapping)				(*2)
		VM_BUG_ON(page_count(newpage) != 1)

If a anonymous page(without mapping) is migrated successfully,
this page is moved back to lru by putback_lru_page()(*1),
and the page count becomes 1(pte only).

At the same time(between *1 and *2), if the process
that owns this page are freeing this page, the page count
becomes 0 and ->mapping becomes NULL by free_hot_cold_page(),
so this BUG is caused.

I've not seen this BUG on real HW yet(seen twice on fake-numa
hvm guest of Xen), but I think it can happen theoretically.


Thanks,
Daisuke Nishimura.
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

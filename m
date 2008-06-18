From: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Subject: Re: [PATCH -mm][BUGFIX] migration_entry_wait fix. v2
Date: Wed, 18 Jun 2008 16:26:09 +0900
Message-ID: <20080618162532.37B0.KOSAKI.MOTOHIRO@jp.fujitsu.com>
References: <20080618155233.7dd79312.kamezawa.hiroyu@jp.fujitsu.com> <20080618162944.2f8fd265.kamezawa.hiroyu@jp.fujitsu.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080618162944.2f8fd265.kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Cc: kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org, Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>, Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Lee Schermerhorn <lee.schermerhorn-VXdhtT5mjnY@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org" <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>

> In speculative page cache look up protocol, page_count(page) is set to 0
> while radix-tree modification is going on, truncation, migration, etc...
> 
> While page migration, a page fault to page under migration does
>  - look up page table
>  - find it is migration_entry_pte
>  - decode pfn from migration_entry_pte and get page of pfn_page(pfn)
>  - wait until page is unlocked 
> 
> It does get_page() -> wait_on_page_locked() -> put_page() now.
> 
> In page migration's radix-tree replacement, page_freeze_refs() ->
> page_unfreeze_refs() is called. And page_count(page) turns to be zero
> and must be kept to be zero while radix-tree replacement.
> 
> If get_page() is called against a page under radix-tree replacement,
> the kernel panics(). To avoid this, we shouldn't increment page_count()
> if it is zero. This patch uses get_page_unless_zero().
> 
> Even if get_page_unless_zero() fails, the caller just retries.
> But will be a bit busier.

Great!
	Acked-by: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>


--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

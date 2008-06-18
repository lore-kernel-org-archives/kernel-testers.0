From: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Subject: Re: [PATCH -mm][BUGFIX] migration_entry_wait fix. v2
Date: Wed, 18 Jun 2008 17:40:07 +1000
Message-ID: <200806181740.07749.nickpiggin@yahoo.com.au>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org> <20080618155233.7dd79312.kamezawa.hiroyu@jp.fujitsu.com> <20080618162944.2f8fd265.kamezawa.hiroyu@jp.fujitsu.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080618162944.2f8fd265.kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Cc: Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Lee Schermerhorn <lee.schermerhorn-VXdhtT5mjnY@public.gmane.org>, Kosaki Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org" <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>

On Wednesday 18 June 2008 17:29, KAMEZAWA Hiroyuki wrote:
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
>
> Change log v1->v2:
>  - rewrote the patch description and added comments.
>

Thanks

Acked-by: Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>

Andrew, this is a bugfix to mm-speculative-page-references.patch

> From: Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>
> Signed-off-by: Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>
> Signed-off-by: KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
> ---
>  mm/migrate.c |   11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>
> Index: test-2.6.26-rc5-mm3/mm/migrate.c
> ===================================================================
> --- test-2.6.26-rc5-mm3.orig/mm/migrate.c
> +++ test-2.6.26-rc5-mm3/mm/migrate.c
> @@ -242,8 +242,15 @@ void migration_entry_wait(struct mm_stru
>  		goto out;
>
>  	page = migration_entry_to_page(entry);
> -
> -	get_page(page);
> +	/*
> +	 * Once radix-tree replacement of page migration started, page_count
> +	 * *must* be zero. And, we don't want to call wait_on_page_locked()
> +	 * against a page without get_page().
> +	 * So, we use get_page_unless_zero(), here. Even failed, page fault
> +	 * will occur again.
> +	 */
> +	if (!get_page_unless_zero(page))
> +		goto out;
>  	pte_unmap_unlock(ptep, ptl);
>  	wait_on_page_locked(page);
>  	put_page(page);
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

From: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Subject: Re: [PATCH] migration_entry_wait fix.
Date: Wed, 18 Jun 2008 15:35:57 +1000
Message-ID: <200806181535.58036.nickpiggin@yahoo.com.au>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org> <20080618101349.db4d5205.kamezawa.hiroyu@jp.fujitsu.com> <20080618105435.de10d6bc.kamezawa.hiroyu@jp.fujitsu.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080618105435.de10d6bc.kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Cc: Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Lee Schermerhorn <lee.schermerhorn-VXdhtT5mjnY@public.gmane.org>, Kosaki Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org" <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>

On Wednesday 18 June 2008 11:54, KAMEZAWA Hiroyuki wrote:
> On Wed, 18 Jun 2008 10:13:49 +0900
>
> KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org> wrote:
> > +	if (!page_cache_get_speculative())
> > +		goto out;
>
> This is obviously buggy....sorry..quilt refresh miss..
>
> ==
> In speculative page cache lookup protocol, page_count(page) is set to 0
> while radix-tree modification is going on, truncation, migration, etc...

These tend to all happen while the page is locked, and in particular
while the page does not have any references other than the current
code path and the pagecache. So no page tables should point to it.

So migration_entry_wait should not find pages with a refcount of zero.


> While page migration, a page fault to page under migration should wait
> unlock_page() and migration_entry_wait() waits for the page from its
> pte entry. It does get_page() -> wait_on_page_locked() -> put_page() now.
>
> In page migration, page_freeze_refs() -> page_unfreeze_refs() is called.
>
> Here, page_unfreeze_refs() expects page_count(page) == 0 and panics
> if page_count(page) != 0. To avoid this, we shouldn't touch page_count()
> if it is zero. This patch uses page_cache_get_speculative() to avoid
> the panic.

At any rate, page_cache_get_speculative() should not be used for this
purpose, but for when we _really_ don't have any references to a page.
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

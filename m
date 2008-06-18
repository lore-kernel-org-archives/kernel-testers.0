From: KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Subject: Re: [PATCH] migration_entry_wait fix.
Date: Wed, 18 Jun 2008 15:52:33 +0900
Message-ID: <20080618155233.7dd79312.kamezawa.hiroyu@jp.fujitsu.com>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org>
	<200806181535.58036.nickpiggin@yahoo.com.au>
	<20080618150436.dca5eb75.kamezawa.hiroyu@jp.fujitsu.com>
	<200806181642.38379.nickpiggin@yahoo.com.au>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200806181642.38379.nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Cc: Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Lee Schermerhorn <lee.schermerhorn-VXdhtT5mjnY@public.gmane.org>, Kosaki Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org" <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>

On Wed, 18 Jun 2008 16:42:37 +1000
Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org> wrote:

> > (This fix is not related to lock_page() problem.)
> >
> > If I read your advice correctly, we shouldn't use lock_page() here.
> >
> > Before speculative page cache, page_table_entry of a page under migration
> > has a pte entry which encodes pfn as special pte entry. and wait for the
> > end of page migration by lock_page().
> 
> What I don't think I understand, is how we can have a page in the
> page tables (and with the ptl held) but with a zero refcount... Oh,
> it's not actually a page but a migration entry! I'm not quite so
> familiar with that code.
> 
> Hmm, so we might possibly see a page there that has a zero refcount
> due to page_freeze_refs? In which case, I think the direction of you
> fix is good. Sorry for my misunderstanding the problem, and thank
> you for fixing up my code!
> 
> I would ask you to use get_page_unless_zero rather than
> page_cache_get_speculative(), because it's not exactly a speculative
> reference -- a speculative reference is one where we elevate _count
> and then must recheck that the page we have is correct.
> 
ok.

> Also, please add a comment. It would really be nicer to hide this
> transiently-frozen state away from migration_entry_wait, but I can't
> see any lock that would easily solve it.
> 
ok, will adds comments.

Thanks,
-Kame


--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

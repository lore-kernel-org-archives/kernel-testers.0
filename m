From: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Subject: Re: 2.6.26-rc5-mm2
Date: Tue, 10 Jun 2008 17:50:14 +0100 (BST)
Message-ID: <Pine.LNX.4.64.0806101723070.23096@blonde.site>
References: <20080609223145.5c9a2878.akpm@linux-foundation.org> 
 <200806101728.27486.nickpiggin@yahoo.com.au> <1213112065.6872.12.camel@lts-notebook>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1213112065.6872.12.camel@lts-notebook>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Lee Schermerhorn <Lee.Schermerhorn-VXdhtT5mjnY@public.gmane.org>
Cc: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org

On Tue, 10 Jun 2008, Lee Schermerhorn wrote:
> On Tue, 2008-06-10 at 17:28 +1000, Nick Piggin wrote:
> > mm/memory.c:do_wp_page
> > //TODO:  is this safe?  do_anonymous_page() does it this way.
> > 
> > That's a bit disheartening. Surely a question like that has to
> > be answered definitively? (hopefully whatever is doing the
> > asking won't get merged until answered)
> 
> I put those C++ TODO comments in there specifically to raise their
> visibility in hopes that someone [like you :)] would notice and maybe
> have an answer to the question.  I noted the issue in the change log as
> well--i.e., that I had moved set_pte_at() to after the lru_cache_add and
> 'new_rmap.   The existing order may be that way for a reason, but it's
> not clear [to me] what that reason is.  As I noted, do_anonymous_page()
> sets the pte after the lru_add and new_rmap.
> 
> I agree, these questions need to be answered and the TODO's resolved
> before merging.   Any thoughts as to the ordering?

The ordering of lru_cache_add*, page_add_*_rmap and set_pte_at does
not matter (but update_mmu_cache must come after set_pte_at not before).

Even if the page table lock were not held across them (it is), I think
their ordering would not matter much (just benign races); though it's
always worth keeping in mind that once you've done the lru_cache_add,
that page is now visible to vmscan.c.

But I'm all in favour of you imposing consistency there (as part of
a wider patch? perhaps not; and do_swap_page does now look out of step).
It can sometimes help when inserting debug checks e.g. on page_mapcount.

I think you'll find the lru_cache_add_active_or_noreclaim could
actually be moved into page_add_new_rmap - I found that helpful when
working on eliminating the PageSwapCache flag (work now grown out of
date, I'm afraid), to know that the page was not publicly visible
until I did lru_cache_add_active at the end of page_add_new_rmap.

Hugh
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

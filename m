From: Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: 2.6.26-rc5-mm2 (swap_state.c:77)
Date: Fri, 13 Jun 2008 13:45:07 -0400
Message-ID: <20080613134507.3f08820e@cuia.bos.redhat.com>
References: <20080609223145.5c9a2878.akpm@linux-foundation.org>
	<200806101848.22237.nickpiggin@yahoo.com.au>
	<20080611140902.544e59ec@bree.surriel.com>
	<200806120958.38545.nickpiggin@yahoo.com.au>
	<20080612152905.6cb294ae@cuia.bos.redhat.com>
	<Pine.LNX.4.64.0806122131330.10415@blonde.site>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.64.0806122131330.10415-popGQ1T0qN76K7/ahGyk6A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Cc: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org

On Thu, 12 Jun 2008 22:15:54 +0100 (BST)
Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org> wrote:

> > I'm trying to make sense of all the splice code now
> > and will send fix as soon as I know how to fix this
> > problem in a nice way.
> 
> There's no need to make sense of all the splice code, it's just
> that it's doing add_to_page_cache_lru (on a page not marked as
> SwapBacked), then shmem and swap_state consistency relies on it
> as having been marked as SwapBacked.  Normally, yes, shmem_getpage
> is the one that allocates the page, but in this case it's already
> been done outside, awkward (and long predates loop's use of splice).
> 
> It's remarkably hard to correct the LRU of a page once it's been
> launched towards one.  Is it still on this cpu's pagevec?  Have we
> been preempted and it's on another cpu's pagevec?  If it's reached
> the LRU, has vmscan whisked it off for a moment, even though it's
> PageLocked?  Until now it's been that the LRUs are self-correcting,
> but these patches move away from that.
> 
> I don't know how to fix this problem in a nice way.  For the moment,
> to proceed with testing, I'm using the hack below.  But perhaps that
> screws things up for the other !mapping_cap_account_dirty filesystems
> e.g. ramfs, I just haven't tried them yet - nor shall in the next
> couple of days.

Yeah, it will break ramfs.  Also, we need to take care of
splice going in the opposite direction (moving a page from
SwapBacked to filesystem backed).

I guess we'll need per-mapping flags to help determine where
a page goes at add_to_page_cache_lru() time.

This does not remove our need for the page flags, because
those need to survive until the del_page_from_lru() call
in __page_cache_release(), by which time the page->mapping
will be long gone.

> Am I right to think that the memcontrol stuff is now all broken,
> because memcontrol.c hasn't yet been converted to the more LRUs?
> Certainly I'm now hanging when trying to run in a restricted memcg.

I believe memcontrol has been converted.  Of course, maybe
they changed some stuff under me that I didn't notice :(
 
> Unrelated fix to compiler warning and silly /proc/meminfo numbers
> below too, that one raises fewer questions!

I sent the fix for that one to Andrew already.  I believe
it's in his mmotm tree.

-- 
All Rights Reversed
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

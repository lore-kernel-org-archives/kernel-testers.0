From: Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: 2.6.26-rc5-mm2 (swap_state.c:77)
Date: Fri, 13 Jun 2008 18:03:48 -0400
Message-ID: <20080613180348.55d3fb67@bree.surriel.com>
References: <20080609223145.5c9a2878.akpm@linux-foundation.org>
	<200806101848.22237.nickpiggin@yahoo.com.au>
	<20080611140902.544e59ec@bree.surriel.com>
	<200806120958.38545.nickpiggin@yahoo.com.au>
	<20080612152905.6cb294ae@cuia.bos.redhat.com>
	<Pine.LNX.4.64.0806122131330.10415@blonde.site>
	<20080613134507.3f08820e@cuia.bos.redhat.com>
	<Pine.LNX.4.64.0806132135460.10183@blonde.site>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.64.0806132135460.10183-popGQ1T0qN76K7/ahGyk6A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Cc: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org

On Fri, 13 Jun 2008 22:15:01 +0100 (BST)
Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org> wrote:

> > I guess we'll need per-mapping flags to help determine where
> > a page goes at add_to_page_cache_lru() time.
> 
> The better way would be to add a backing_dev_info flag.  (At one
> point I had been going to criticize your per-mapping AS_UNEVICTABLE,
> to say that one should be a backing_dev_info flag; but no, you're
> right, you've the SHM_LOCK case where it has to be per-mapping.)

Good point.  I'll take a look at that.
 
> > > Am I right to think that the memcontrol stuff is now all broken,
> > > because memcontrol.c hasn't yet been converted to the more LRUs?
> > > Certainly I'm now hanging when trying to run in a restricted memcg.
> > 
> > I believe memcontrol has been converted.  Of course, maybe
> > they changed some stuff under me that I didn't notice :(
> 
> Ah, yes, there are NR_LRU_LISTS arrays in there now, so it has
> the appearance of having been converted.  Fine, then it's worth
> my looking into why it isn't actually working as intended.

I believe that Lee and Kosaki-san have tested this code,
so the breakage could be pretty new.

-- 
All rights reversed.
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

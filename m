From: Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: 2.6.26-rc5-mm2
Date: Wed, 11 Jun 2008 14:09:02 -0400
Message-ID: <20080611140902.544e59ec@bree.surriel.com>
References: <20080609223145.5c9a2878.akpm@linux-foundation.org>
	<200806101728.27486.nickpiggin@yahoo.com.au>
	<20080610013427.aa20a29b.akpm@linux-foundation.org>
	<200806101848.22237.nickpiggin@yahoo.com.au>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200806101848.22237.nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org

On Tue, 10 Jun 2008 18:48:21 +1000
Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org> wrote:

> > > The tmpfs PageSwapBacked stuff seems rather broken. For
> > > them write_begin/write_end path, it is filemap.c, not shmem.c,
> > > which allocates the page, so its no wonder it goes bug. Will
> > > try to do more testing without shmem.

Fun, so what does shmem_alloc_page do?

> > rikstuff.  Could be that the merge caused a problem?
> 
> Doesn't look like it, but I hadn't followed the changes too closely:
> rather they just need to test loopback over tmpfs.

Does loopback over tmpfs use a different allocation path?

> Is the plan to merge all reclaim changes in a big hit, rather than
> slowly trickle in the different independent changes?

My original plan was to merge them incrementally, but Andrew is
right that we should give the whole set as much testing as
possible.

I have done all the cleanups Andrew asked and fixed the bugs
that I found after that merge/cleanup.  Your bug is the one
I still need to fix before giving Andrew a whole new set of
split LRU patches to merge.

(afterwards, I will go incremental fixes only - the cleanups
he asked for were just too big to do as incrementals)

-- 
All rights reversed.
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

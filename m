From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: 2.6.26-rc5-mm2
Date: Tue, 10 Jun 2008 02:15:19 -0700
Message-ID: <20080610021519.52af66f5.akpm@linux-foundation.org>
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
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Tue, 10 Jun 2008 18:48:21 +1000 Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org> wrote:

> Is the plan to merge all reclaim changes in a big hit, rather than
> slowly trickle in the different independent changes?

It's going to take a lot of work to get such extensive reclaim changes
landed.

We need to convince ourselves that these changes are the right way to
fix <whatever they fix>.  We need to review and test the crap out of
them.  The 64-bit-only thing is a concern.  I wonder about whether
we've "fixed" anon pages but didn't do anything about file-backed
mapped pages.  Plus all the other stuff, plus stuff we haven't thought
of yet.

It's huge.
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

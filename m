From: Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: 2.6.26-rc5-mm2
Date: Thu, 12 Jun 2008 15:29:05 -0400
Message-ID: <20080612152905.6cb294ae@cuia.bos.redhat.com>
References: <20080609223145.5c9a2878.akpm@linux-foundation.org>
	<200806101848.22237.nickpiggin@yahoo.com.au>
	<20080611140902.544e59ec@bree.surriel.com>
	<200806120958.38545.nickpiggin@yahoo.com.au>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200806120958.38545.nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org

On Thu, 12 Jun 2008 09:58:38 +1000
Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org> wrote:

> > Does loopback over tmpfs use a different allocation path?
> 
> I'm sorry, hmm I didn't look closely enough and forgot that
> write_begin/write_end requires the callee to allocate the page
> as well, and that Hugh had nicely unified most of that.
> 
> So maybe it's not that. It's pretty easy to hit I found with
> ext2 mounted over loopback on a tmpfs file.

Turns out the loopback driver uses splice, which moves
the pages from one place to another.  This is why you
were seeing the problem with loopback, but not with
just a really big file on tmpfs.

I'm trying to make sense of all the splice code now
and will send fix as soon as I know how to fix this
problem in a nice way.

-- 
All Rights Reversed
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

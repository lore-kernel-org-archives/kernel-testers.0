From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [PATCH 0/4] PM: Drop shrink_all_memory (rev. 2) (was: Re: [PATCH 3/3] PM/Hibernate: Use memory allocations to free memory)
Date: Sun, 3 May 2009 18:30:48 +0200
Message-ID: <200905031830.49690.rjw@sisk.pl>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905030220.57933.rjw@sisk.pl> <20090503130818.GC9661@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090503130818.GC9661@localhost>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org

On Sunday 03 May 2009, Wu Fengguang wrote:
> 
> Hi Rafael,

Hi,

> I happened to be doing some benchmarks on the older shrink_all_memory(),
> Hopefully it can be a useful reference point for the new design.
> 
> The current swsusp_shrink_memory()/shrink_all_memory() are terribly
> inefficient: it takes 7-9s to free up 1.4G memory:

One reason may be that it takes too many steps to do it,

> [  131.899389] PM: Freed 1413380 kbytes in 7.03 seconds (201.04 MB/s)
> [  732.757916] PM: Freed 1490116 kbytes in 9.37 seconds (159.03 MB/s)

because the new way doesn't seem to do any better.

> Below are the logs I collected by injecting printks. There are
> basically two major problems:
> - swsusp_shrink_memory() scans the whole 2G memory again and again;
> - shrink_all_memory() is slow. It won't reclaim pages at all with
>   small priority values, because it's batching size is 10000 pages.

I know that swsusp_shrink_memory() has problems, that's why I'd like to get rid
of it.

> I wonder if it's possible to free up the memory within 1s at all.

I'm not sure.

Apparently, the counting of saveable pages takes substantial time (0.5 s each
iteration on my 64-bit test box), so we can improve that by limiting the number
of iterations.

Well, perhaps we can do it all in one shot after all, I'll think how to do that.

Thanks,
Rafael

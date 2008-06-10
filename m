From: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Subject: Re: 2.6.26-rc5-mm2
Date: Tue, 10 Jun 2008 16:12:14 +1000
Message-ID: <200806101612.15041.nickpiggin@yahoo.com.au>
References: <20080609223145.5c9a2878.akpm@linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080609223145.5c9a2878.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org

On Tuesday 10 June 2008 15:31, Andrew Morton wrote:
> ftp://ftp.kernel.org/pub/linux/kernel/people/akpm/patches/2.6/2.6.26-rc5/2.
>6.26-rc5-mm2/
>
> - This is a bugfixed version of 2.6.26-rc5-mm1 - mainly to repair a
>   vmscan.c bug which would have prevented testing of the other vmscan.c
>   bugs^Wchanges.

BTW. this is known to be broken with x86 1GB pages and direct-IO, due
to interaction between huge pages patchset and lockless get_user_pages.

My fault. I was away from the screen over the long weekend here, and
didn't give Andrew the heads-up in time.

This isn't going to be a problem unless you explicitly enable GB pages
and run direct IO (or splice) into or out of them. I can give a fixup
patch to anyone interested in doing so.
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

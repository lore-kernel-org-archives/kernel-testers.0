From: KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Subject: Re: [Experimental][PATCH] putback_lru_page rework
Date: Thu, 19 Jun 2008 09:22:42 +0900
Message-ID: <20080619092242.79648592.kamezawa.hiroyu@jp.fujitsu.com>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org>
	<20080617163501.7cf411ee.nishimura@mxp.nes.nec.co.jp>
	<20080617164709.de4db070.nishimura@mxp.nes.nec.co.jp>
	<20080618184000.a855dfe0.kamezawa.hiroyu@jp.fujitsu.com>
	<1213813266.6497.14.camel@lts-notebook>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1213813266.6497.14.camel@lts-notebook>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Lee Schermerhorn <Lee.Schermerhorn-VXdhtT5mjnY@public.gmane.org>
Cc: Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Kosaki Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Wed, 18 Jun 2008 14:21:06 -0400
Lee Schermerhorn <Lee.Schermerhorn-VXdhtT5mjnY@public.gmane.org> wrote:

> On Wed, 2008-06-18 at 18:40 +0900, KAMEZAWA Hiroyuki wrote:
> > Lee-san, how about this ?
> > Tested on x86-64 and tried Nisimura-san's test at el. works good now.
> 
> I have been testing with my work load on both ia64 and x86_64 and it
> seems to be working well.  I'll let them run for a day or so.
> 
thank you.
<snip>

> > @@ -240,6 +232,9 @@ static int __munlock_pte_handler(pte_t *
> >  	struct page *page;
> >  	pte_t pte;
> >  
> > +	/*
> > +	 * page is never be unmapped by page-reclaim. we lock this page now.
> > +	 */
> 
> I don't understand what you're trying to say here.  That is, what the
> point of this comment is...
> 
We access the page-table without taking pte_lock. But this vm is MLOCKED
and migration-race is handled. So we don't need to be too nervous to access
the pte. I'll consider more meaningful words.

Thanks,
-Kame

--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

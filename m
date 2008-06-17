From: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Subject: Re: [PATCH][RFC] fix kernel BUG at mm/migrate.c:719! in 2.6.26-rc5-mm3
Date: Wed, 18 Jun 2008 00:33:18 +0900
Message-ID: <20080618003129.DE27.KOSAKI.MOTOHIRO@jp.fujitsu.com>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org> <20080617163501.7cf411ee.nishimura@mxp.nes.nec.co.jp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080617163501.7cf411ee.nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>
Cc: kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Lee Schermerhorn <lee.schermerhorn-VXdhtT5mjnY@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

> @@ -715,13 +725,7 @@ unlock:
>   		 * restored.
>   		 */
>   		list_del(&page->lru);
> -		if (!page->mapping) {
> -			VM_BUG_ON(page_count(page) != 1);
> -			unlock_page(page);
> -			put_page(page);		/* just free the old page */
> -			goto end_migration;
> -		} else
> -			unlock = putback_lru_page(page);
> +		unlock = putback_lru_page(page);
>  	}
>  
>  	if (unlock)

this part is really necessary?
I tryed to remove it, but any problem doesn't happend.

Of cource, another part is definitly necessary for specurative pagecache :)




--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

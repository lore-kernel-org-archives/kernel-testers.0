From: Yasunori Goto <y-goto-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Subject: Re: 2.6.26-rc5-mm2 (compile error in mm/memory_hotplug.c)
Date: Wed, 11 Jun 2008 11:26:47 +0900
Message-ID: <20080611112111.C7BE.E1E9C6FF@jp.fujitsu.com>
References: <20080609223145.5c9a2878.akpm@linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080609223145.5c9a2878.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>


> lockess pagecache
>
> +vmscan-move-isolate_lru_page-to-vmscanc.patch
>   :

This patch is cause of compile error in mm/memory_hotplug.c.
Obviously, just here is old against changing interface of
isolate_lru_page(). :-(

Signed-off-by: Yasunori Goto <y-goto-+CUm20s59erQFUHtdCDX3A@public.gmane.org>


---
 mm/memory_hotplug.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

Index: current/mm/memory_hotplug.c
===================================================================
--- current.orig/mm/memory_hotplug.c
+++ current/mm/memory_hotplug.c
@@ -595,8 +595,9 @@ do_migrate_range(unsigned long start_pfn
 		 * We can skip free pages. And we can only deal with pages on
 		 * LRU.
 		 */
-		ret = isolate_lru_page(page, &source);
+		ret = isolate_lru_page(page);
 		if (!ret) { /* Success */
+			list_add_tail(&page->lru, &source);
 			move_pages--;
 		} else {
 			/* Becasue we don't have big zone->lock. we should

-- 
Yasunori Goto 


--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

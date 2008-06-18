From: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Subject: [PATCH][-mm] remove redundant page->mapping check
Date: Wed, 18 Jun 2008 16:54:01 +0900
Message-ID: <20080618164349.37B6.KOSAKI.MOTOHIRO@jp.fujitsu.com>
References: <20080618105400.b9f1b664.nishimura@mxp.nes.nec.co.jp> <20080618134128.828156bc.nishimura@mxp.nes.nec.co.jp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080618134128.828156bc.nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Lee Schermerhorn <lee.schermerhorn-VXdhtT5mjnY@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

> > > this part is really necessary?
> > > I tryed to remove it, but any problem doesn't happend.
> > > 
> > I made this part first, and added a fix for migration_entry_wait later.
> > 
> > So, I haven't test without this part, and I think it will cause
> > VM_BUG_ON() here without this part.
> > 
> > Anyway, I will test it.
> > 
> I got this VM_BUG_ON() as expected only by doing:
> 
>   # echo $$ >/cgroup/cpuset/02/tasks
> 
> So, I beleive that both fixes for migration_entry_wait and
> unmap_and_move (and, of course, removal VM_BUG_ON from
> putback_lru_page) are needed.

OK, I confirmed this part.

Andrew, please pick.


==================================================

Against: 2.6.26-rc5-mm3

remove redundant mapping check.

we'd be doing exactly what putback_lru_page() is doing.  So, this code
as always unnecessary, duplicate code.
So, just let putback_lru_page() handle this condition and conditionally
unlock_page().


Signed-off-by: Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>
Signed-off-by: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Acked-by:      Lee Schermerhorn <Lee.Schermerhorn-VXdhtT5mjnY@public.gmane.org>

---
 mm/migrate.c |    8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

Index: b/mm/migrate.c
===================================================================
--- a/mm/migrate.c
+++ b/mm/migrate.c
@@ -716,13 +716,7 @@ unlock:
  		 * restored.
  		 */
  		list_del(&page->lru);
-		if (!page->mapping) {
-			VM_BUG_ON(page_count(page) != 1);
-			unlock_page(page);
-			put_page(page);		/* just free the old page */
-			goto end_migration;
-		} else
-			unlock = putback_lru_page(page);
+		unlock = putback_lru_page(page);
 	}
 
 	if (unlock)



--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

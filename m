From: Lee Schermerhorn <Lee.Schermerhorn-VXdhtT5mjnY@public.gmane.org>
Subject: Re: [PATCH] fix double unlock_page() in 2.6.26-rc5-mm3 kernel BUG
	at mm/filemap.c:575!
Date: Fri, 13 Jun 2008 11:30:46 -0400
Message-ID: <1213371046.9670.12.camel@lts-notebook>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org>
	 <4850E1E5.90806@linux.vnet.ibm.com>
	 <20080612015746.172c4b56.akpm@linux-foundation.org>
	 <20080612202003.db871cac.kamezawa.hiroyu@jp.fujitsu.com>
	 <20080613104444.63bd242f.kamezawa.hiroyu@jp.fujitsu.com>
	 <20080612191311.1331f337.akpm@linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080612191311.1331f337.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, Andy Whitcroft <apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org>, "riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org" <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Thu, 2008-06-12 at 19:13 -0700, Andrew Morton wrote:
> On Fri, 13 Jun 2008 10:44:44 +0900 KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org> wrote:
> 
> > This is reproducer of panic. "quick fix" is attached.
> 
> Thanks - I put that in
> ftp://ftp.kernel.org/pub/linux/kernel/people/akpm/patches/2.6/2.6.26-rc5/2.6.26-rc5-mm3/hot-fixes/
> 
> > But I think putback_lru_page() should be re-designed.
> 
> Yes, it sounds that way.

Here's a proposed replacement patch that reworks putback_lru_page()
slightly and cleans up the call sites.  I still want to balance the
get_page() in isolate_lru_page() with a put_page() in putback_lru_page()
for the primary users--vmscan and page migration.  So, I need to drop
the lock before the put_page() when handed a page with null mapping and
a single reference count as the page will be freed on put_page() and a
locked page would bug out in free_pages_check()/bad_page().  

Lee

PATCH fix page unlocking protocol for putback_lru_page()

Against:  2.6.26-rc5-mm3

Replaces Kame-san's hotfix:
fix-double-unlock_page-in-2626-rc5-mm3-kernel-bug-at-mm-filemapc-575.patch

Applies at end of vmscan/unevictable/mlock series to avoid patch conflicts.

1)  modified putback_lru_page() to drop page lock only if both page_mapping()
    NULL and page_count() == 1 [rather than VM_BUG_ON(page_count(page) != 1].
    I want to balance the put_page() from isolate_lru_page() here for vmscan
    and, e.g., page migration rather than requiring explicit checks of the
    page_mapping() and explicit put_page() in these areas.  However, the page
    could be truncated while one of these subsystems holds it isolated from
    the LRU.  So, need to handle this case.  Callers of putback_lru_page()
    need to be aware of this and only call it with a page with NULL
    page_mapping() when they will no longer reference the page afterwards.
    This is the case for vmscan and page migration.

2)  m[un]lock_vma_page() already will not be called for page with NULL
    mapping.  Added VM_BUG_ON() to assert this.

3)  modified clear_page_lock() to skip the isolate/putback shuffle for
    pages with NULL mapping, as they are being truncated/freed.  Thus,
    any future callers of clear_page_lock() need not be concerned about
    the putback_lru_page() semantics for truncated pages.

Signed-off-by: Lee Schermerhorn <lee.schermerhorn-VXdhtT5mjnY@public.gmane.org>

 mm/mlock.c  |   29 +++++++++++++++++++----------
 mm/vmscan.c |   12 +++++++-----
 2 files changed, 26 insertions(+), 15 deletions(-)

Index: linux-2.6.26-rc5-mm3/mm/mlock.c
===================================================================
--- linux-2.6.26-rc5-mm3.orig/mm/mlock.c	2008-06-12 11:42:59.000000000 -0400
+++ linux-2.6.26-rc5-mm3/mm/mlock.c	2008-06-13 09:47:14.000000000 -0400
@@ -59,27 +59,33 @@ void __clear_page_mlock(struct page *pag
 
 	dec_zone_page_state(page, NR_MLOCK);
 	count_vm_event(NORECL_PGCLEARED);
-	if (!isolate_lru_page(page)) {
-		putback_lru_page(page);
-	} else {
-		/*
-		 * Page not on the LRU yet.  Flush all pagevecs and retry.
-		 */
-		lru_add_drain_all();
-		if (!isolate_lru_page(page))
+	if (page->mapping) {	/* truncated ? */
+		if (!isolate_lru_page(page)) {
 			putback_lru_page(page);
-		else if (PageUnevictable(page))
-			count_vm_event(NORECL_PGSTRANDED);
+		} else {
+			/*
+			 * Page not on the LRU yet.
+			 * Flush all pagevecs and retry.
+			 */
+			lru_add_drain_all();
+			if (!isolate_lru_page(page))
+				putback_lru_page(page);
+			else if (PageUnevictable(page))
+				count_vm_event(NORECL_PGSTRANDED);
+		}
 	}
 }
 
 /*
  * Mark page as mlocked if not already.
  * If page on LRU, isolate and putback to move to unevictable list.
+ *
+ * Called with page locked and page_mapping() != NULL.
  */
 void mlock_vma_page(struct page *page)
 {
 	BUG_ON(!PageLocked(page));
+	VM_BUG_ON(!page_mapping(page));
 
 	if (!TestSetPageMlocked(page)) {
 		inc_zone_page_state(page, NR_MLOCK);
@@ -92,6 +98,8 @@ void mlock_vma_page(struct page *page)
 /*
  * called from munlock()/munmap() path with page supposedly on the LRU.
  *
+ * Called with page locked and page_mapping() != NULL.
+ *
  * Note:  unlike mlock_vma_page(), we can't just clear the PageMlocked
  * [in try_to_munlock()] and then attempt to isolate the page.  We must
  * isolate the page to keep others from messing with its unevictable
@@ -110,6 +118,7 @@ void mlock_vma_page(struct page *page)
 static void munlock_vma_page(struct page *page)
 {
 	BUG_ON(!PageLocked(page));
+	VM_BUG_ON(!page_mapping(page));
 
 	if (TestClearPageMlocked(page)) {
 		dec_zone_page_state(page, NR_MLOCK);
Index: linux-2.6.26-rc5-mm3/mm/vmscan.c
===================================================================
--- linux-2.6.26-rc5-mm3.orig/mm/vmscan.c	2008-06-12 11:39:09.000000000 -0400
+++ linux-2.6.26-rc5-mm3/mm/vmscan.c	2008-06-13 09:44:44.000000000 -0400
@@ -1,4 +1,4 @@
-/*
+ /*
  *  linux/mm/vmscan.c
  *
  *  Copyright (C) 1991, 1992, 1993, 1994  Linus Torvalds
@@ -488,6 +488,9 @@ int remove_mapping(struct address_space 
  * lru_lock must not be held, interrupts must be enabled.
  * Must be called with page locked.
  *
+ * If page truncated [page_mapping() == NULL] and we hold the last reference,
+ * the page will be freed here.  For vmscan and page migration.
+ *
  * return 1 if page still locked [not truncated], else 0
  */
 int putback_lru_page(struct page *page)
@@ -502,12 +505,11 @@ int putback_lru_page(struct page *page)
 	lru = !!TestClearPageActive(page);
 	was_unevictable = TestClearPageUnevictable(page); /* for page_evictable() */
 
-	if (unlikely(!page->mapping)) {
+	if (unlikely(!page->mapping && page_count(page) == 1)) {
 		/*
-		 * page truncated.  drop lock as put_page() will
-		 * free the page.
+		 * page truncated and we hold last reference.
+		 * drop lock as put_page() will free the page.
 		 */
-		VM_BUG_ON(page_count(page) != 1);
 		unlock_page(page);
 		ret = 0;
 	} else if (page_evictable(page, NULL)) {


--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

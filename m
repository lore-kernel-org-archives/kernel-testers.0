From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [PATCH 3/4] PM/Hibernate: Use memory allocations to free memory
 (rev. 2)
Date: Sat, 2 May 2009 20:06:51 -0700 (PDT)
Message-ID: <alpine.LFD.2.01.0905021958480.4983@localhost.localdomain>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <20090502104947.2720f173.akpm@linux-foundation.org> <200905030220.57933.rjw@sisk.pl> <200905030224.21471.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200905030224.21471.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, pavel-+ZI9xUNit7I@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org



On Sun, 3 May 2009, Rafael J. Wysocki wrote:
>
> Remove the shrinking of memory from the suspend-to-RAM code, where it is 
> not really necessary.

Hmm. Shouldn't we do this _regardless_?

IOW, shouldn't this be a totally separate patch? It seems to be left-over 
from when we shared the same code-paths, and before the split of the STR 
and hibernate code?

IOW, shouldn't the very _first_ patch just be this part? That code doesn't 
make any sense anyway (that FREE_PAGE_NUMBER really _is_ totally 
arbitrary).

This part seems to be totally independent of all the other parts in your 
patch-series. No?

		Linus

---
 kernel/power/main.c |   19 +------------------
 1 files changed, 1 insertions(+), 18 deletions(-)

diff --git a/kernel/power/main.c b/kernel/power/main.c
index f99ed6a..e3197e9 100644
--- a/kernel/power/main.c
+++ b/kernel/power/main.c
@@ -188,9 +188,6 @@ static void suspend_test_finish(const char *label)
 
 #endif
 
-/* This is just an arbitrary number */
-#define FREE_PAGE_NUMBER (100)
-
 static struct platform_suspend_ops *suspend_ops;
 
 /**
@@ -241,24 +238,10 @@ static int suspend_prepare(void)
 	if (error)
 		goto Finish;
 
-	if (suspend_freeze_processes()) {
-		error = -EAGAIN;
-		goto Thaw;
-	}
-
-	free_pages = global_page_state(NR_FREE_PAGES);
-	if (free_pages < FREE_PAGE_NUMBER) {
-		pr_debug("PM: free some memory\n");
-		shrink_all_memory(FREE_PAGE_NUMBER - free_pages);
-		if (nr_free_pages() < FREE_PAGE_NUMBER) {
-			error = -ENOMEM;
-			printk(KERN_ERR "PM: No enough memory\n");
-		}
-	}
+	error = suspend_freeze_processes();
 	if (!error)
 		return 0;
 
- Thaw:
 	suspend_thaw_processes();
 	usermodehelper_enable();
  Finish:

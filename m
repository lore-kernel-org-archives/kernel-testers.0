From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #13058] First hibernation attempt fails
Date: Mon, 20 Apr 2009 13:04:12 -0700
Message-ID: <20090420130412.bc337673.akpm@linux-foundation.org>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera>
	<nY3-4PrO6XH.A.xtB.yw85JB@chimera>
	<20090417063007.GB4593@kernel.dk>
	<49E83DC4.8040207@tuffmail.co.uk>
	<20090417091321.GP4593@kernel.dk>
	<alpine.LFD.2.00.0904170813550.4042@localhost.localdomain>
	<20090407080632.GG1408@ucw.cz>
	<20090420122044.7ea6cc15.akpm@linux-foundation.org>
	<20090420195306.GA3299@elf.ucw.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090420195306.GA3299-I/5MKhXcvmPrBKCeMvbIDA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Cc: torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Mon, 20 Apr 2009 21:53:06 +0200
Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org> wrote:

> > Remind me: why can't we just allocate N pages at suspend-time?
> 
> We need half of memory free. The reason we can't "just allocate" is
> probably OOM killer; but my memories are quite weak :-(.

hm.  You'd think that with out splendid range of __GFP_foo falgs, there
would be some combo which would suit this requirement but I can't
immediately spot one.

We can always add another I guess.  Something like...


diff -puN mm/page_alloc.c~a mm/page_alloc.c
--- a/mm/page_alloc.c~a
+++ a/mm/page_alloc.c
@@ -1620,7 +1620,8 @@ nofail_alloc:
 		}
 
 		/* The OOM killer will not help higher order allocs so fail */
-		if (order > PAGE_ALLOC_COSTLY_ORDER) {
+		if (order > PAGE_ALLOC_COSTLY_ORDER ||
+				(gfp_mask & __GFP_NO_OOM_KILL)) {
 			clear_zonelist_oom(zonelist, gfp_mask);
 			goto nopage;
 		}
diff -puN include/linux/gfp.h~a include/linux/gfp.h
--- a/include/linux/gfp.h~a
+++ a/include/linux/gfp.h
@@ -51,8 +51,9 @@ struct vm_area_struct;
 #define __GFP_THISNODE	((__force gfp_t)0x40000u)/* No fallback, no policies */
 #define __GFP_RECLAIMABLE ((__force gfp_t)0x80000u) /* Page is reclaimable */
 #define __GFP_MOVABLE	((__force gfp_t)0x100000u)  /* Page is movable */
+#define __GFP_NO_OOM_KILL ((__force gfp_t)0x200000u)  /* Don't invoke out_of_memory() */
 
-#define __GFP_BITS_SHIFT 21	/* Room for 21 __GFP_FOO bits */
+#define __GFP_BITS_SHIFT 22	/* Number of__GFP_FOO bits */
 #define __GFP_BITS_MASK ((__force gfp_t)((1 << __GFP_BITS_SHIFT) - 1))
 
 /* This equals 0, but use constants in case they ever change */
_

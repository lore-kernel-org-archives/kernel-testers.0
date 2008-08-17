From: Johannes Weiner <hannes-BfM5BwqdGSkPyMaTEpOvjQ@public.gmane.org>
Subject: [PATCH] mm: make unmap_vmas() handle non-page-aligned boundary addresses
Date: Sun, 17 Aug 2008 03:06:12 +0200
Message-ID: <87fxp4pi0r.fsf_-_@skyscraper.fehenstaub.lan>
References: <DLWXHEp37wB.A.duD.yZzpIB@albercik>
	<sNRO-BDDjQL.A.spE.VazpIB@albercik>
	<Pine.LNX.4.64.0808170036400.25704@blonde.site>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.64.0808170036400.25704-popGQ1T0qN76K7/ahGyk6A@public.gmane.org> (Hugh Dickins's
	message of "Sun, 17 Aug 2008 00:38:35 +0100 (BST)")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

zap_pte_range() overruns the page tables if the distance between the
start and end is not a multiple of the pagesize.  Because then,
`start' will never be equal to `end' and we will keep looping.

To fix this, round the boundary addresses to exclude partial pages from
the range completely, we must not unmap them anyway.

Signed-off-by: Johannes Weiner <hannes-BfM5BwqdGSkPyMaTEpOvjQ@public.gmane.org>
---

Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org> writes:

> On Sat, 16 Aug 2008, Rafael J. Wysocki wrote:
>> 
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11335
>> Subject		: 2.6.27-rc2-git5 BUG: unable to handle kernel paging request
>> Submitter	: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
>> Date		: 2008-08-12 4:18 (5 days old)
>> References	: http://marc.info/?l=linux-kernel&m=121851477201960&w=4
>> Handled-By	: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
>
> This should still be listed for now, it's interesting,
> but I doubt we'll make any progress unless it can be reproduced.

I think this patch fixes it.  exit_mmap() even calls unmap_vmas() with
an ending address of -1UL which is not page-aligned in my book and on my
architecture :)

It is a similar problem to what we had with gup some weeks ago.

diff --git a/mm/memory.c b/mm/memory.c
index 1002f47..483c5d0 100644
--- a/mm/memory.c
+++ b/mm/memory.c
@@ -896,11 +896,17 @@ unsigned long unmap_vmas(struct mmu_gather **tlbp,
 	long zap_work = ZAP_BLOCK_SIZE;
 	unsigned long tlb_start = 0;	/* For tlb_finish_mmu */
 	int tlb_start_valid = 0;
-	unsigned long start = start_addr;
+	unsigned long start;
 	spinlock_t *i_mmap_lock = details? details->i_mmap_lock: NULL;
 	int fullmm = (*tlbp)->fullmm;
 	struct mm_struct *mm = vma->vm_mm;
 
+	/* Preserve partial pages */
+	start_addr = PAGE_ALIGN(start_addr);
+	end_addr &= PAGE_MASK;
+
+	start = start_addr;
+
 	mmu_notifier_invalidate_range_start(mm, start_addr, end_addr);
 	for ( ; vma && vma->vm_start < end_addr; vma = vma->vm_next) {
 		unsigned long end;

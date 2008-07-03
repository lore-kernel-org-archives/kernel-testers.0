From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [BUILD-FAILURE] 2.6.26-rc8-mm1 - x86 -
 __ptep_modify_prot_start() missing
Date: Thu, 3 Jul 2008 10:46:43 -0700
Message-ID: <20080703104643.04ea2acb.akpm@linux-foundation.org>
References: <20080703020236.adaa51fa.akpm@linux-foundation.org>
	<20080703122943.GB6451@linux.vnet.ibm.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080703122943.GB6451-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org, Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Martin Schwidefsky <schwidefsky-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>

On Thu, 3 Jul 2008 17:59:43 +0530 Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org> wrote:

> Hi Andrew,
> 
> 2.6.26-rc8-mm1 kernel build fails on the x86
> 
>   CC      arch/x86/kernel/paravirt.o
> arch/x86/kernel/paravirt.c:383: error: _____ptep_modify_prot_start___ undeclared here (not in a function)
> make[1]: *** [arch/x86/kernel/paravirt.o] Error 1
> make: *** [arch/x86/kernel] Error 2
> 
> linux-next patches has the changes to the adds the function
> __ptep_modify_prot_start as inline, the patch s390-build-fixes.patch
> is coverting it into macro. Reverting the s390-build-fixes.patch
> fixes the build failure.

grump.  Who did all this stuff?

I dunno.  I'll drop s390-build-fixes.patch, add some ccs and stomp off.


From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

In file included from include/asm/pgtable.h:1087,
                 from include/linux/mm.h:39,
                 from arch/s390/mm/hugetlbpage.c:8:
include/asm-generic/pgtable.h: In function '__ptep_modify_prot_start':
include/asm-generic/pgtable.h:209: error: dereferencing pointer to incomplete type

Cc: Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Cc: Martin Schwidefsky <schwidefsky-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Signed-off-by: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
---

 include/asm-generic/pgtable.h |   26 +++++++++-----------------
 1 file changed, 9 insertions(+), 17 deletions(-)

diff -puN include/asm-generic/pgtable.h~s390-build-fixes include/asm-generic/pgtable.h
--- a/include/asm-generic/pgtable.h~s390-build-fixes
+++ a/include/asm-generic/pgtable.h
@@ -197,17 +197,13 @@ static inline int pmd_none_or_clear_bad(
 }
 #endif /* CONFIG_MMU */
 
-static inline pte_t __ptep_modify_prot_start(struct mm_struct *mm,
-					     unsigned long addr,
-					     pte_t *ptep)
-{
-	/*
-	 * Get the current pte state, but zero it out to make it
-	 * non-present, preventing the hardware from asynchronously
-	 * updating it.
-	 */
-	return ptep_get_and_clear(mm, addr, ptep);
-}
+/*
+ * Get the current pte state, but zero it out to make it
+ * non-present, preventing the hardware from asynchronously
+ * updating it.
+ */
+#define __ptep_modify_prot_start(mm, addr, ptep)	\
+	ptep_get_and_clear(mm, addr, ptep)
 
 static inline void __ptep_modify_prot_commit(struct mm_struct *mm,
 					     unsigned long addr,
@@ -235,12 +231,8 @@ static inline void __ptep_modify_prot_co
  * queue the update to be done at some later time.  The update must be
  * actually committed before the pte lock is released, however.
  */
-static inline pte_t ptep_modify_prot_start(struct mm_struct *mm,
-					   unsigned long addr,
-					   pte_t *ptep)
-{
-	return __ptep_modify_prot_start(mm, addr, ptep);
-}
+#define ptep_modify_prot_start(mm, addr, ptep)		\
+	__ptep_modify_prot_start(mm, addr, ptep)
 
 /*
  * Commit an update to a pte, leaving any hardware-controlled bits in
_


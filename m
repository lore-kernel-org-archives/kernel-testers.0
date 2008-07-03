From: Jeremy Fitzhardinge <jeremy@goop.org>
Subject: Re: [BUILD-FAILURE] 2.6.26-rc8-mm1 - x86 - __ptep_modify_prot_start()
 missing
Date: Thu, 03 Jul 2008 11:00:35 -0700
Message-ID: <486D13C3.3000409@goop.org>
References: <20080703020236.adaa51fa.akpm@linux-foundation.org>	<20080703122943.GB6451@linux.vnet.ibm.com> <20080703104643.04ea2acb.akpm@linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755463AbYGCSAx@vger.kernel.org>
In-Reply-To: <20080703104643.04ea2acb.akpm@linux-foundation.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Kamalesh Babulal <kamalesh@linux.vnet.ibm.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, apw@shadowen.org, Heiko Carstens <heiko.carstens@de.ibm.com>, Martin Schwidefsky <schwidefsky@de.ibm.com>

Andrew Morton wrote:
> On Thu, 3 Jul 2008 17:59:43 +0530 Kamalesh Babulal <kamalesh@linux.vnet.ibm.com> wrote:
>
>   
>> Hi Andrew,
>>
>> 2.6.26-rc8-mm1 kernel build fails on the x86
>>
>>   CC      arch/x86/kernel/paravirt.o
>> arch/x86/kernel/paravirt.c:383: error: _____ptep_modify_prot_start___ undeclared here (not in a function)
>>     

Where did all those _____underlines___ come from?

>> make[1]: *** [arch/x86/kernel/paravirt.o] Error 1
>> make: *** [arch/x86/kernel] Error 2
>>
>> linux-next patches has the changes to the adds the function
>> __ptep_modify_prot_start as inline, the patch s390-build-fixes.patch
>> is coverting it into macro. Reverting the s390-build-fixes.patch
>> fixes the build failure.
>>     
>
> grump.  Who did all this stuff?
>
> I dunno.  I'll drop s390-build-fixes.patch, add some ccs and stomp off.
>
>
> From: Andrew Morton <akpm@linux-foundation.org>
>
> In file included from include/asm/pgtable.h:1087,
>                  from include/linux/mm.h:39,
>                  from arch/s390/mm/hugetlbpage.c:8:
> include/asm-generic/pgtable.h: In function '__ptep_modify_prot_start':
> include/asm-generic/pgtable.h:209: error: dereferencing pointer to incomplete type
>   

We can't turn them into macros because we're expecting to be able to 
take the address of __ptep_modify_prot_start/commit.  What type is not 
defined on s390 at that point?  Would simply adding an extra include to 
arch/s390/mm/hugetlbpage.c fix the problem?

In the worst case we could push __ptep_modify_proc_start/commit out of 
line somewhere appropriate, but that's a bit sad given how simple they are.

    J

> Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
> Cc: Martin Schwidefsky <schwidefsky@de.ibm.com>
> Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
> ---
>
>  include/asm-generic/pgtable.h |   26 +++++++++-----------------
>  1 file changed, 9 insertions(+), 17 deletions(-)
>
> diff -puN include/asm-generic/pgtable.h~s390-build-fixes include/asm-generic/pgtable.h
> --- a/include/asm-generic/pgtable.h~s390-build-fixes
> +++ a/include/asm-generic/pgtable.h
> @@ -197,17 +197,13 @@ static inline int pmd_none_or_clear_bad(
>  }
>  #endif /* CONFIG_MMU */
>  
> -static inline pte_t __ptep_modify_prot_start(struct mm_struct *mm,
> -					     unsigned long addr,
> -					     pte_t *ptep)
> -{
> -	/*
> -	 * Get the current pte state, but zero it out to make it
> -	 * non-present, preventing the hardware from asynchronously
> -	 * updating it.
> -	 */
> -	return ptep_get_and_clear(mm, addr, ptep);
> -}
> +/*
> + * Get the current pte state, but zero it out to make it
> + * non-present, preventing the hardware from asynchronously
> + * updating it.
> + */
> +#define __ptep_modify_prot_start(mm, addr, ptep)	\
> +	ptep_get_and_clear(mm, addr, ptep)
>  
>  static inline void __ptep_modify_prot_commit(struct mm_struct *mm,
>  					     unsigned long addr,
> @@ -235,12 +231,8 @@ static inline void __ptep_modify_prot_co
>   * queue the update to be done at some later time.  The update must be
>   * actually committed before the pte lock is released, however.
>   */
> -static inline pte_t ptep_modify_prot_start(struct mm_struct *mm,
> -					   unsigned long addr,
> -					   pte_t *ptep)
> -{
> -	return __ptep_modify_prot_start(mm, addr, ptep);
> -}
> +#define ptep_modify_prot_start(mm, addr, ptep)		\
> +	__ptep_modify_prot_start(mm, addr, ptep)
>  
>  /*
>   * Commit an update to a pte, leaving any hardware-controlled bits in
> _
>
>
>   

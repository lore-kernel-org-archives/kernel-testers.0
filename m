From: Jon Tollefson <kniht@linux.vnet.ibm.com>
Subject: Re: [RFC] hugetlb reservations -- MAP_PRIVATE fixes for split vmas
 V2
Date: Wed, 25 Jun 2008 16:22:53 -0500
Message-ID: <4862B72D.7060103@linux.vnet.ibm.com>
References: <485A8903.9030808@linux.vnet.ibm.com> <1214242533-12104-1-git-send-email-apw@shadowen.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755295AbYFYVWt@vger.kernel.org>
In-Reply-To: <1214242533-12104-1-git-send-email-apw@shadowen.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andy Whitcroft <apw@shadowen.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Nick Piggin <npiggin@suse.de>, Nishanth Aravamudan <nacc@us.ibm.com>, Adam Litke <agl@linux.vnet.ibm.com>, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, linux-mm@kvack.org, Mel Gorman <mel@csn.ul.ie>

Andy Whitcroft wrote:
> As reported by Adam Litke and Jon Tollefson one of the libhugetlbfs
> regression tests triggers a negative overall reservation count.  When
> this occurs where there is no dynamic pool enabled tests will fail.
>
> Following this email are two patches to address this issue:
>
> hugetlb reservations: move region tracking earlier -- simply moves the
>   region tracking code earlier so we do not have to supply prototypes, and
>
> hugetlb reservations: fix hugetlb MAP_PRIVATE reservations across vma
>   splits -- which moves us to tracking the consumed reservation so that
>   we can correctly calculate the remaining reservations at vma close time.
>
> This stack is against the top of v2.6.25-rc6-mm3, should this solution
> prove acceptable it would need slipping underneath Nick's multiple hugepage
> size patches and those updated.  I have a modified stack prepared for that.
>
> This version incorporates Mel's feedback (both cosmetic, and an allocation
> under spinlock issue) and has an improved layout.
>
> Changes in V2:
>  - commentry updates
>  - pull allocations out from under hugetlb_lock
>  - refactor to match shared code layout
>  - reinstate BUG_ON's
>
> Jon could you have a test on this and see if it works out for you.
>
> -apw
>   
Version two works for me too.  I am not seeing the reserve value become
negative when running the libhuge tests.

Jon

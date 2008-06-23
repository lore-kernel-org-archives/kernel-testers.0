From: Jon Tollefson <kniht-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Subject: Re: [RFC] hugetlb reservations -- MAP_PRIVATE fixes for split vmas
Date: Mon, 23 Jun 2008 11:04:04 -0500
Message-ID: <485FC974.70403@linux.vnet.ibm.com>
References: <485A8903.9030808@linux.vnet.ibm.com> <1213989474-5586-1-git-send-email-apw@shadowen.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1213989474-5586-1-git-send-email-apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andy Whitcroft <apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, Nishanth Aravamudan <nacc-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>, Adam Litke <agl-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>

Andy Whitcroft wrote:
> As reported by Adam Litke and Jon Tollefson one of the libhugetlbfs
> regression tests triggers a negative overall reservation count.  When
> this occurs where there is no dynamic pool enabled tests will fail.
>
> Following this email are two patches to fix this issue:
>
> hugetlb reservations: move region tracking earlier -- simply moves the
>   region tracking code earlier so we do not have to supply prototypes, and
>
> hugetlb reservations: fix hugetlb MAP_PRIVATE reservations across vma
>   splits -- which moves us to tracking the consumed reservation so that
>   we can correctly calculate the remaining reservations at vma close time.
>
> This stack is against the top of v2.6.25-rc6-mm3, should this solution
> prove acceptable it would probabally need porting below Nicks multiple
> hugepage size patches and those updated; if so I would be happy to do
> that too.
>
> Jon could you have a test on this and see if it works out for you.
>
> -apw
>   
Looking good so far.
I am not seeing any of the tests push the reservation number negative -
with this patch set applied

Jon


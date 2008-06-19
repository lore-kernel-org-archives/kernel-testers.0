From: Andy Whitcroft <apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org>
Subject: Re: 2.6.26-rc5-mm3: BUG large value for HugePages_Rsvd
Date: Thu, 19 Jun 2008 18:16:44 +0100
Message-ID: <20080619171644.GC13275@shadowen.org>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org> <485A8903.9030808@linux.vnet.ibm.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <485A8903.9030808-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jon Tollefson <kniht-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, Nishanth Aravamudan <nacc-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>, Adam Litke <agl-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>

On Thu, Jun 19, 2008 at 11:27:47AM -0500, Jon Tollefson wrote:
> After running some of the libhugetlbfs tests the value for
> /proc/meminfo/HugePages_Rsvd becomes really large.  It looks like it has
> wrapped backwards from zero.
> Below is the sequence I used to run one of the tests that causes this;
> the tests passes for what it is intended to test but leaves a large
> value for reserved pages and that seemed strange to me.
> test run on ppc64 with 16M huge pages

Yes Adam reported that here yesterday, he found it in his hugetlfs testing.
I have done some investigation on it and it is being triggered by a bug in
the private reservation tracking patches.  It is triggered by the hugetlb
test which causes some complex vma splits to occur on a private mapping.

I believe I have the underlying problem nailed and do have some nearly
complete patches for this and they should be in a postable state by
tommorrow.

-apw
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

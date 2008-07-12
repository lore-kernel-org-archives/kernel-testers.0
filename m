From: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Subject: Re: [BUG] 2.6.26-rc8-mm1 - sleeping function called from invalid context at include/linux/pagemap.h:291
Date: Sat, 12 Jul 2008 16:15:55 +0900
Message-ID: <20080712161058.F6A5.KOSAKI.MOTOHIRO@jp.fujitsu.com>
References: <20080703020236.adaa51fa.akpm@linux-foundation.org> <48737CBE.4010301@linux.vnet.ibm.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <48737CBE.4010301-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Cc: kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Andy Whitcroft <apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org>, Balbir Singh <balbir-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>

Hi Kamalesh,

> Hi Andrew,
> 
> While booting up and shutting down, x86 machine with 2.6.26-rc8-mm1 kernel,
> kernel bug call trace is shows up in the logs

That is known bug.
please turn off CONFIG_UNEVICTABLE_LRU.

and see below thread.

	[-mm] BUG: sleeping function called from invalid context at include/linux/pagemap.h:290





From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [BUG] 2.6.26-rc5-mm3 kernel BUG at mm/filemap.c:575!
Date: Fri, 13 Jun 2008 00:16:44 -0700
Message-ID: <20080613001644.b1b87b0e.akpm@linux-foundation.org>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org>
	<4850E1E5.90806@linux.vnet.ibm.com>
	<4041.1213330723@turing-police.cc.vt.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4041.1213330723-+bZmOdGhbsPr6rcHtW+onFJE71vCis6O@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Valdis.Kletnieks-PjAqaU27lzQ@public.gmane.org
Cc: Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, Andy Whitcroft <apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org>

On Fri, 13 Jun 2008 00:18:43 -0400 Valdis.Kletnieks-PjAqaU27lzQ@public.gmane.org wrote:

> On Thu, 12 Jun 2008 14:14:21 +0530, Kamalesh Babulal said:
> > Hi Andrew,
> > 
> > 2.6.26-rc5-mm3 kernel panics while booting up on the x86_64
> > machine. Sorry the console is bit overwritten for the first few lines.
> 
> > no fstab.kernel BUG at mm/filemap.c:575!
> 
> For whatever it's worth, I'm seeing the same thing on my x86_64 laptop.
> -rc5-mm2 works OK, I'm going to try to bisect it tonight.

ftp://ftp.kernel.org/pub/linux/kernel/people/akpm/patches/2.6/2.6.26-rc5/2.6.26-rc5-mm3/hot-fixes/fix-double-unlock_page-in-2626-rc5-mm3-kernel-bug-at-mm-filemapc-575.patch is said to "fix" it.

--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

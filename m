From: Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Subject: Re: [PATCH] fix double unlock_page() in 2.6.26-rc5-mm3 kernel BUG
 at mm/filemap.c:575!
Date: Sat, 14 Jun 2008 19:02:43 +0530
Message-ID: <4853C87B.7050602@linux.vnet.ibm.com>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org> <4850E1E5.90806@linux.vnet.ibm.com> <20080612015746.172c4b56.akpm@linux-foundation.org> <20080612202003.db871cac.kamezawa.hiroyu@jp.fujitsu.com> <20080613104444.63bd242f.kamezawa.hiroyu@jp.fujitsu.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080613104444.63bd242f.kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, Andy Whitcroft <apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org>, "riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org" <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Lee.Schermerhorn-VXdhtT5mjnY@public.gmane.org" <Lee.Schermerhorn-VXdhtT5mjnY@public.gmane.org>

KAMEZAWA Hiroyuki wrote:
> This is reproducer of panic. "quick fix" is attached.
> But I think putback_lru_page() should be re-designed.
> 
> ==
> #include <stdio.h>
> #include <sys/types.h>
> #include <sys/stat.h>
> #include <fcntl.h>
> #include <sys/mman.h>
> #include <unistd.h>
> #include <errno.h>
> 
> int main(int argc, char *argv[])
> {
>         int fd;
>         char *filename = argv[1];
>         char buffer[4096];
>         char *addr;
>         int len;
> 
>         fd = open(filename, O_CREAT | O_EXCL | O_RDWR, S_IRWXU);
> 
>         if (fd < 0) {
>                 perror("open");
>                 exit(1);
>         }
>         len = write(fd, buffer, sizeof(buffer));
> 
>         if (len < 0) {
>                 perror("write");
>                 exit(1);
>         }
> 
>         addr = mmap(NULL, 4096, PROT_WRITE, MAP_SHARED|MAP_LOCKED, fd, 0);
>         if (addr == MAP_FAILED) {
>                 perror("mmap");
>                 exit(1);
>         }
>         munmap(addr, 4096);
>         close(fd);
> 
>         unlink(filename);
> }
> ==
> you'll see panic.
> 
> Fix is here
> ==
Hi Kame,

Thanks, The patch fixes the kernel panic.

Tested-by: Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
> 
> quick fix for double unlock_page();
> 
> Signed-off-by: KAMEZAWA Hiroyuki <kamewzawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
> Index: linux-2.6.26-rc5-mm3/mm/truncate.c
> ===================================================================
> --- linux-2.6.26-rc5-mm3.orig/mm/truncate.c
> +++ linux-2.6.26-rc5-mm3/mm/truncate.c
> @@ -104,8 +104,8 @@ truncate_complete_page(struct address_sp
> 
>  	cancel_dirty_page(page, PAGE_CACHE_SIZE);
> 
> -	remove_from_page_cache(page);
>  	clear_page_mlock(page);
> +	remove_from_page_cache(page);
>  	ClearPageUptodate(page);
>  	ClearPageMappedToDisk(page);
>  	page_cache_release(page);	/* pagecache ref */
> 


-- 
Thanks & Regards,
Kamalesh Babulal,
Linux Technology Center,
IBM, ISTL.
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

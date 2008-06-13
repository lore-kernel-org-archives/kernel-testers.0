From: Valdis.Kletnieks-PjAqaU27lzQ@public.gmane.org
Subject: Re: [PATCH] fix double unlock_page() in 2.6.26-rc5-mm3 kernel BUG at mm/filemap.c:575!
Date: Fri, 13 Jun 2008 00:34:33 -0400
Message-ID: <5289.1213331673@turing-police.cc.vt.edu>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org> <4850E1E5.90806@linux.vnet.ibm.com> <20080612015746.172c4b56.akpm@linux-foundation.org> <20080612202003.db871cac.kamezawa.hiroyu@jp.fujitsu.com>
            <20080613104444.63bd242f.kamezawa.hiroyu@jp.fujitsu.com>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="==_Exmh_1213331673_4969P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: Your message of "Fri, 13 Jun 2008 10:44:44 +0900."
             <20080613104444.63bd242f.kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, Andy Whitcroft <apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org>, "riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org" <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Lee.Schermerhorn-VXdhtT5mjnY@public.gmane.org" <Lee.Schermerhorn-VXdhtT5mjnY@public.gmane.org>

--==_Exmh_1213331673_4969P
Content-Type: text/plain; charset=us-ascii

On Fri, 13 Jun 2008 10:44:44 +0900, KAMEZAWA Hiroyuki said:

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

Confirming this quick fix works on my laptop that was hitting this crash -
am now up and running on -rc5-mm3.

--==_Exmh_1213331673_4969P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Exmh version 2.5 07/13/2001

iD8DBQFIUfjZcC3lWbTT17ARAl94AJkBoB3dPLHaq1a+dfK29jmkGakJigCfaIDJ
B55Awuo3IiE4YPeXEEoK928=
=ioU1
-----END PGP SIGNATURE-----

--==_Exmh_1213331673_4969P--
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

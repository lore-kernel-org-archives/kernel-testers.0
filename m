From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: 2.6.26-rc5-mm2  compile error in vmscan.c
Date: Tue, 10 Jun 2008 11:37:33 -0700
Message-ID: <20080610113733.8d924c0e.akpm@linux-foundation.org>
References: <20080609223145.5c9a2878.akpm@linux-foundation.org>
	<484E6A68.4060203@aitel.hist.no>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <484E6A68.4060203-i5bjtSbraLbLX0NG8FE4ug@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Helge Hafting <helge.hafting-i5bjtSbraLbLX0NG8FE4ug@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Tue, 10 Jun 2008 13:50:00 +0200 Helge Hafting <helge.hafting-i5bjtSbraLbLX0NG8FE4ug@public.gmane.org> wrote:

> Andrew Morton wrote:
> > ftp://ftp.kernel.org/pub/linux/kernel/people/akpm/patches/2.6/2.6.26-rc5/2.6.26-rc5-mm2/
> > 
> > - This is a bugfixed version of 2.6.26-rc5-mm1 - mainly to repair a
> >   vmscan.c bug which would have prevented testing of the other vmscan.c
> >   bugs^Wchanges.
> > 
> 
> Interesting to try out, but I got this:
> 
>   $ make
>    CHK     include/linux/version.h
>    CHK     include/linux/utsrelease.h
>    CALL    scripts/checksyscalls.sh
>    CHK     include/linux/compile.h
>    CC      mm/vmscan.o
> mm/vmscan.c: In function 'show_page_path':
> mm/vmscan.c:2419: error: 'struct mm_struct' has no member named 'owner'
> make[1]: *** [mm/vmscan.o] Error 1
> make: *** [mm] Error 2
> 
> 
> I then tried to configure with "Track page owner", but that did not 
> change anything.
> 

Thanks.  I guess this will get you going.

--- a/mm/vmscan.c~mm-only-vmscan-noreclaim-lru-scan-sysctl-fix
+++ a/mm/vmscan.c
@@ -2400,6 +2400,7 @@ static void show_page_path(struct page *
 		       dentry_path(dentry, buf, 256), pgoff);
 		spin_unlock(&mapping->i_mmap_lock);
 	} else {
+#ifdef CONFG_MM_OWNER
 		struct anon_vma *anon_vma;
 		struct vm_area_struct *vma;
 
@@ -2413,6 +2414,7 @@ static void show_page_path(struct page *
 			break;
 		}
 		page_unlock_anon_vma(anon_vma);
+#endif
 	}
 }
 
_


--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

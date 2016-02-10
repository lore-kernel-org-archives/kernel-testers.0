From: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] blackfin: define dummy pgprot_writecombine for !MMU
Date: Wed, 10 Feb 2016 16:20:54 +0530
Message-ID: <1455101454-25441-1-git-send-email-sudipm.mukherjee@gmail.com>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=uDODFQ9PiIV22454dICSXysCaStytZ5KKmxX94I7GGg=;
        b=k+xkGgBMXI7GfEJiEW6QSzXeoy2/JuxrHeqKLTvGDfYqXIk9l6pOOfdG8+JRfh876o
         eZnGo3wxS7ru+7HNh08ZKCeQK6K6akTPmXiYPmt5xR0OWiChq4fFswnWhjOoHGNB7jGw
         5RXQS+z7vShDFMkD0qh1yktyxw3QqZwSb5sUgFlZd6Gv/6W4J5nzfVr5HFe/ixxrKr+Y
         q4zMFgi5fxsAtxOkNUYWus9C2v4AdnDeClCn/j+xx0YPJAJmGmRP1ebN2cCjtJlI270X
         JgPuar3yzHKurNN5v1eyWGyBFPHoZJWHtafZPI0e+iklYn+QmOG8k/wjQInBDqrBIBT4
         8Dpw==
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Steven Miao <realmz6-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, adi-buildroot-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org, Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

blackfin allmodconfig build fails with the error:

../sound/core/pcm_native.c: In function 'snd_pcm_lib_default_mmap':
../sound/core/pcm_native.c:3386:24: error: implicit declaration of function 'pgprot_writecombine' [-Werror=implicit-function-declaration]
   area->vm_page_prot = pgprot_writecombine(area->vm_page_prot);
                        ^
../sound/core/pcm_native.c:3386:22: error: incompatible types when assigning to type 'pgprot_t {aka struct <anonymous>}' from type 'int'
   area->vm_page_prot = pgprot_writecombine(area->vm_page_prot);
                      ^

When !MMU, asm-generic will not define default pgprot_writecombine, so
blackfin needs to define it by itself.

Signed-off-by: Sudip Mukherjee <sudip-ofJRbWXBVFamYgehrs7/Lw@public.gmane.org>
---

Build log is at
https://travis-ci.org/sudipm-mukherjee/parport/jobs/108209182

The patch idea is from:
65b9ab888cd7 ("arch/c6x/include/asm/pgtable.h: define dummy pgprot_writecombine for !MMU")

 arch/blackfin/include/asm/pgtable.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/blackfin/include/asm/pgtable.h b/arch/blackfin/include/asm/pgtable.h
index b88a155..c1ee3d6 100644
--- a/arch/blackfin/include/asm/pgtable.h
+++ b/arch/blackfin/include/asm/pgtable.h
@@ -97,6 +97,8 @@ extern unsigned long get_fb_unmapped_area(struct file *filp, unsigned long,
 					  unsigned long);
 #define HAVE_ARCH_FB_UNMAPPED_AREA
 
+#define pgprot_writecombine pgprot_noncached
+
 #include <asm-generic/pgtable.h>
 
 #endif				/* _BLACKFIN_PGTABLE_H */
-- 
1.9.1

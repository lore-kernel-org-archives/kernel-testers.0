From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Subject: [PATCH] mm: provide reference to READ_IMPLIES_EXEC
Date: Thu, 28 Jan 2016 14:41:03 +0530
Message-ID: <1453972263-25907-1-git-send-email-sudipm.mukherjee@gmail.com>
Return-path: <owner-linux-mm@kvack.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=mCs51QigWWCsKnWW+JXajUALbusNZzTD+BY0iIIto8Y=;
        b=frG51TVSpOVsGrTDI6T9PAzDX+rjRSncZ1U01GLcP/d/glziwh8tA0MZp7Qf5hbmOR
         m8bvGOH8FI6fmSljMoSd/u/sOtSApFQ6ei2L2lW9p0nRf1LejYKBH/r/CYgWMc44hK9A
         Fe+UrL2pVA/ECgLKQYjmf8uWDtTso2tFIGF3sxLBscwqCttjoqCFuz+BiDwH9smfDNPJ
         TFeBUtw6RQDlHa7I15UTlFyaNm25zZfAmoj76QzNF9y5bTJ+HAtADnSmtQFKpEMjOfua
         brQxdwOQ0yRbeEy3w+NvPIHa5OiIZcwLIpJCfgKxBysme2Bg5SyOo82B98qbO+yghjRh
         tEjg==
Sender: owner-linux-mm@kvack.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, linux-mm@kvack.org, Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Konstantin Khlebnikov <koct9i@gmail.com>

blackfin defconfig fails with the error:
mm/internal.h: In function 'is_stack_mapping':
arch/blackfin/include/asm/page.h:15:27: error: 'READ_IMPLIES_EXEC' undeclared

Commit 07dff8ae2bc5 has added is_stack_mapping in mm/internal.h but it
also needs personality.h.

Fixes: 07dff8ae2bc5 ("mm: warn about VmData over RLIMIT_DATA")
Cc: Konstantin Khlebnikov <koct9i@gmail.com>
Signed-off-by: Sudip Mukherjee <sudip@vectorindia.org>
---

build log at:
https://travis-ci.org/sudipm-mukherjee/parport/jobs/105335848

 mm/internal.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/mm/internal.h b/mm/internal.h
index cac6eb4..59c496f 100644
--- a/mm/internal.h
+++ b/mm/internal.h
@@ -14,6 +14,7 @@
 #include <linux/fs.h>
 #include <linux/mm.h>
 #include <linux/pagemap.h>
+#include <linux/personality.h>
 #include <linux/tracepoint-defs.h>
 
 /*
-- 
1.9.1

--
To unsubscribe, send a message with 'unsubscribe linux-mm' in
the body to majordomo@kvack.org.  For more info on Linux MM,
see: http://www.linux-mm.org/ .
Don't email: <a href=mailto:"dont@kvack.org"> email@kvack.org </a>

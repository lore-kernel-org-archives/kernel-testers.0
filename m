From: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] s390: fix build failure
Date: Fri,  1 Apr 2016 13:35:16 +0100
Message-ID: <1459514116-24505-1-git-send-email-sudipm.mukherjee@gmail.com>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=LF0CROAklnb4PlbWO2Nok5hL0jUYvJhosCa41i0oLOk=;
        b=ZewnrRq4Sbt4l4bYmV0VVer129j+IhmjTFgHutpZBHUPGZpTFfgkwzwgLdsFlIlAh9
         TJEBNuxbMykHRd+OYis7qziHARNEb5jTSueVMg3DT9ov+I16QGtOtitSzOZKDwOeM7Ri
         QJkxDUJOjWQrTBM0NIMasXDs9oERjMgV2kht3AnMSTbh47GXdFgrlBu+c1BpQkQ5qy0p
         A7VkmOoTPsoDoquY99RtpAXGCsz94AUQ/TUpG7bDVqUkbUWgXM9Bfnh9g5GGqXPJKsOm
         XwdIvy9lwZ6Wq0OUPwRHxTg2Im/6J8zcquHUTOehWLNCG7Mexb8sNZXhBw5L4AKQcpZf
         AdPw==
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Martin Schwidefsky <schwidefsky-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-s390-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Matt Redfearn <matt.redfearn-1AXoQHu6uovQT0dZR+AlfA@public.gmane.org>

s390 defconfig and allmodconfig fails with the error:
kernel/seccomp.c: In function '__secure_computing_strict':
kernel/seccomp.c:526:3: error: implicit declaration of function
				'get_compat_mode1_syscalls'

The retrieval of compat syscall numbers were moved into inline function
defined in asm-generic header but the asm-generic header was not being
used by s390.

Fixes: 5adddb612ca1 ("seccomp: Get compat syscalls from asm-generic header")
Cc: Matt Redfearn <matt.redfearn-1AXoQHu6uovQT0dZR+AlfA@public.gmane.org>
Signed-off-by: Sudip Mukherjee <sudip.mukherjee-4yDnlxn2s6sWdaTGBSpHTA@public.gmane.org>
---

Tested with s390 defconfig and allmodconfig build.
Build logs of next-20160401 are at:
https://travis-ci.org/sudipm-mukherjee/parport/jobs/119983952 (allmodconfig)
and
https://travis-ci.org/sudipm-mukherjee/parport/jobs/119983909 (defconfig)

 arch/s390/include/asm/seccomp.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/s390/include/asm/seccomp.h b/arch/s390/include/asm/seccomp.h
index 781a9cf..e10f833 100644
--- a/arch/s390/include/asm/seccomp.h
+++ b/arch/s390/include/asm/seccomp.h
@@ -13,4 +13,6 @@
 #define __NR_seccomp_exit_32	__NR_exit
 #define __NR_seccomp_sigreturn_32 __NR_sigreturn
 
+#include <asm-generic/seccomp.h>
+
 #endif	/* _ASM_S390_SECCOMP_H */
-- 
2.1.4

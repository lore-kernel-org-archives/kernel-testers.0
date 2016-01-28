From: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] m32r: fix build failure due to SMP and MMU
Date: Thu, 28 Jan 2016 14:18:23 +0530
Message-ID: <1453970903-9502-1-git-send-email-sudipm.mukherjee@gmail.com>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=N39Nt0a++V0vTYe+alq+F9HJeUMBHikz3YHm658TxCI=;
        b=GcFgU4dsbzkA8yVJiDZg1MTldANX9xvEyenz2L3tV9aWN5z6lF46rHwBuss7blQi30
         WVIgfJoFT3BFLBo7LYm/aMyolqoP5QJRH/u0bs7sbCkito7odLr7XF1qWYq5FoPF0r7a
         jowjxtgvtFYEg2ST5jRzw046n4xm4yeYPHUKtYUokG9vNMHRKbkB5u7BkrmT4A0dR5BK
         5O7vWrG3D6/cJECT/wxJM9sZ0wWqiFkcwBIfkkeQuQgf30Uvsx0NeJOY88L0jwESkUzS
         qQWs7MFGbauhtkOPacMzYmCfG8Zy7XCEeFAcX4KI8C7+/pjfy8jcBTe0TbgmQckigMf/
         Yeug==
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

One of the randconfig build failed with the error:

arch/m32r/kernel/smp.c: In function 'smp_flush_tlb_mm':
arch/m32r/kernel/smp.c:283:20: error: subscripted value is neither array nor pointer nor vector
  mmc = &mm->context[cpu_id];
                    ^
arch/m32r/kernel/smp.c: In function 'smp_flush_tlb_page':
arch/m32r/kernel/smp.c:353:20: error: subscripted value is neither array nor pointer nor vector
  mmc = &mm->context[cpu_id];
                    ^
arch/m32r/kernel/smp.c: In function 'smp_invalidate_interrupt':
arch/m32r/kernel/smp.c:479:41: error: subscripted value is neither array nor pointer nor vector
  unsigned long *mmc = &flush_mm->context[cpu_id];

It turned out that CONFIG_SMP was defined but CONFIG_MMU was not
defined. But arch/m32r/include/asm/mmu.h only defines mm_context_t as an
array when both CONFIG_SMP and CONFIG_MMU are defined. And
arch/m32r/kernel/smp.c is always using context as an array. So without
MMU SMP can not work.

Signed-off-by: Sudip Mukherjee <sudip-ofJRbWXBVFamYgehrs7/Lw@public.gmane.org>
---
 arch/m32r/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/m32r/Kconfig b/arch/m32r/Kconfig
index 836ac5a..2841c0a 100644
--- a/arch/m32r/Kconfig
+++ b/arch/m32r/Kconfig
@@ -276,6 +276,7 @@ source "kernel/Kconfig.preempt"
 
 config SMP
 	bool "Symmetric multi-processing support"
+	depends on MMU
 	---help---
 	  This enables support for systems with more than one CPU. If you have
 	  a system with only one CPU, say N. If you have a system with more
-- 
1.9.1

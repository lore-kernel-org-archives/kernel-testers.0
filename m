From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Subject: [PATCH] MIPS: remove duplicate definition
Date: Mon,  4 Apr 2016 17:12:15 +0530
Message-ID: <1459770135-6228-1-git-send-email-sudipm.mukherjee@gmail.com>
Return-path: <linux-mips-bounce@linux-mips.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=kFIk8pw6DIdu4XMuoj4znc1+kUrMpGyD1ckMarOvwqQ=;
        b=lNwJqEoCXUDvFSURxjnDIBI8ygvmaAqHkyHbyk6A7uiPJxwvBSWdTEWa0rzrshAu9a
         D+wvdF3KxV7+nV4Ndu3y21ZK4W5HTwkLPng91u5tispXDctSC/QD+vAEdke7cJm3oOzX
         S9PFTetTiwP7is3dYv4VR/2JeHdAku4dqqclrbgJ9EC3OlJgYA2uhvpWV3ufzs9mnb5Q
         huHZTLDbeN7BKfzEGbc92HDkCcm5ZefXzR8NGY1nidbc8c4Rd+RW6RJLxGJIgU2fR7HW
         AjrR1cvSsk6/84KuIko9Ed87figLzCoP8WkYLzXM5Yok9hj/mWeKNQwX5shcxWo4r8eb
         MCzw==
Sender: linux-mips-bounce@linux-mips.org
Errors-to: linux-mips-bounce@linux-mips.org
List-help: <mailto:ecartis@linux-mips.org?Subject=help>
List-unsubscribe: <mailto:ecartis@linux-mips.org?subject=unsubscribe%20linux-mips>
List-software: Ecartis version 1.0.0
List-Id: <kernel-testers.vger.kernel.org>
List-subscribe: <mailto:ecartis@linux-mips.org?subject=subscribe%20linux-mips>
List-owner: <mailto:ralf@linux-mips.org>
List-post: <mailto:linux-mips@linux-mips.org>
List-archive: <http://www.linux-mips.org/archives/linux-mips/>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ralf Baechle <ralf@linux-mips.org>
Cc: linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, linux-mips@linux-mips.org, Sudip Mukherjee <sudipm.mukherjee@gmail.com>

mips defconfig and allmodconfig are failing with the error:

In file included from ../arch/mips/kernel/asm-offsets.c:13:0:
include/linux/sched.h:2656:20: error: conflicting types for 'exit_thread'

exit_thread() was already defined in include/linux/sched.h.

Fixes: 8664c52c094e ("MIPS: Make flush_thread and exit_thread inline.")
Signed-off-by: Sudip Mukherjee <sudip.mukherjee@codethink.co.uk>
---

build log of next-20160404 is at:
https://travis-ci.org/sudipm-mukherjee/parport/jobs/120536697 (defconfig)
https://travis-ci.org/sudipm-mukherjee/parport/jobs/120536714 (allmodconfig)

patch has been build tested with defconfig and allmodconfig.

 arch/mips/include/asm/processor.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/mips/include/asm/processor.h b/arch/mips/include/asm/processor.h
index 06469df..cfa15ba 100644
--- a/arch/mips/include/asm/processor.h
+++ b/arch/mips/include/asm/processor.h
@@ -359,10 +359,6 @@ static inline void flush_thread(void)
 {
 }
 
-static inline void exit_thread(void)
-{
-}
-
 unsigned long get_wchan(struct task_struct *p);
 
 #define __KSTK_TOS(tsk) ((unsigned long)task_stack_page(tsk) + \
-- 
1.9.1



From: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] proc: fix missing reference of mm
Date: Thu, 21 Jan 2016 10:25:28 +0530
Message-ID: <1453352128-29863-1-git-send-email-sudipm.mukherjee@gmail.com>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=KdinKjTPznLUnNYWKeUB1PXStH4rJfJ+iIxiV4wXN30=;
        b=ijeDnVPRX7C922rQcbrGEa/Ph9xyEARkcI3I1I/NSXLlCa+PwSwB0az09/JpUq7pFW
         qcFEeQVQM0ml0N/AgnTRSmu2MyOa/EIV8fflz7+rO3zW2T05tkzoP8ra1L5xZc7Y+wiI
         WliI+lcY24CU9dETmWaUYanqEHY/xKDlJsmuQ8MjNfu7XViu4QnDwlIjuZ66pwVdA2PP
         Rj/e58uMdIeLZx3IuCkXzV1A5DM/+G0LhemfeHXRv09nmX5nIJeAZMNp7Crel7wrh4bd
         C2QceG4c62i5K52UJH3uAx8qKjzJliR+34knFegl57P37zgbkAzw0ibx6F+iTfBdfPVL
         q0aA==
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Johannes Weiner <hannes-druUgvl0LCNAfugRpC6u6w@public.gmane.org>

The defconfig build of blackfin was failing with the error:
fs/proc/task_nommu.c: In function 'is_stack':
fs/proc/task_nommu.c:132:28: error: 'mm' undeclared (first use in this function)

While reverting /proc/<pid>/maps [stack:TID] annotation a reference to
mm was missed.

Fixes: e87d4fd02f40 ("proc: revert /proc/<pid>/maps [stack:TID] annotation")
CC: Johannes Weiner <hannes-druUgvl0LCNAfugRpC6u6w@public.gmane.org>
Signed-off-by: Sudip Mukherjee <sudip-ofJRbWXBVFamYgehrs7/Lw@public.gmane.org>
---

The build log of blackfin defconfig is at:
https://travis-ci.org/sudipm-mukherjee/parport/jobs/103757285

 fs/proc/task_nommu.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/proc/task_nommu.c b/fs/proc/task_nommu.c
index 60ab72e..faacb0c 100644
--- a/fs/proc/task_nommu.c
+++ b/fs/proc/task_nommu.c
@@ -126,6 +126,7 @@ unsigned long task_statm(struct mm_struct *mm,
 static int is_stack(struct proc_maps_private *priv,
 		    struct vm_area_struct *vma, int is_pid)
 {
+	struct mm_struct *mm = vma->vm_mm;
 	int stack = 0;
 
 	if (is_pid) {
-- 
1.9.1

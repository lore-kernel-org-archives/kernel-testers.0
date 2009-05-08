From: Felix Blyakher <felixb-sJ/iWh9BUns@public.gmane.org>
Subject: [PATCH] xfs: fix double unlock in xfs_swap_extents()
Date: Thu,  7 May 2009 20:13:22 -0500
Message-ID: <1241745202-7452-1-git-send-email-felixb@sgi.com>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Felix Blyakher <felixb-sJ/iWh9BUns@public.gmane.org>

Regreesion from commit ef8f7fc, which rearranged the code in
xfs_swap_extents() leading to double unlock of xfs inode iolock.
That resulted in xfs_fsr deadlocking itself on platforms, which
don't handle double unlock of rw_semaphore nicely. It caused the
count go negative, which represents the write holder, without
really having one. ia64 is one of the platforms where deadlock
was easily reproduced and the fix was tested.

Signed-off-by: Felix Blyakher <felixb-sJ/iWh9BUns@public.gmane.org>
---
 fs/xfs/xfs_dfrag.c |    8 +++++---
 1 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/fs/xfs/xfs_dfrag.c b/fs/xfs/xfs_dfrag.c
index e6d839b..7465f9e 100644
--- a/fs/xfs/xfs_dfrag.c
+++ b/fs/xfs/xfs_dfrag.c
@@ -347,13 +347,15 @@ xfs_swap_extents(
 
 	error = xfs_trans_commit(tp, XFS_TRANS_SWAPEXT);
 
-out_unlock:
-	xfs_iunlock(ip,  XFS_ILOCK_EXCL | XFS_IOLOCK_EXCL);
-	xfs_iunlock(tip, XFS_ILOCK_EXCL | XFS_IOLOCK_EXCL);
 out:
 	kmem_free(tempifp);
 	return error;
 
+out_unlock:
+	xfs_iunlock(ip,  XFS_ILOCK_EXCL | XFS_IOLOCK_EXCL);
+	xfs_iunlock(tip, XFS_ILOCK_EXCL | XFS_IOLOCK_EXCL);
+	goto out;
+
 out_trans_cancel:
 	xfs_trans_cancel(tp, 0);
 	goto out_unlock;
-- 
1.5.4.rc3

From: Eric Sandeen <sandeen-+82itfer+wXR7s880joybQ@public.gmane.org>
Subject: Re: [PATCH] xfs: fix double unlock in xfs_swap_extents()
Date: Thu, 07 May 2009 21:57:09 -0500
Message-ID: <4A039F85.8010506@sandeen.net>
References: <1241745202-7452-1-git-send-email-felixb@sgi.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1241745202-7452-1-git-send-email-felixb-sJ/iWh9BUns@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Felix Blyakher <felixb-sJ/iWh9BUns@public.gmane.org>
Cc: xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

Felix Blyakher wrote:
> Regreesion from commit ef8f7fc, which rearranged the code in
> xfs_swap_extents() leading to double unlock of xfs inode iolock.
> That resulted in xfs_fsr deadlocking itself on platforms, which
> don't handle double unlock of rw_semaphore nicely. It caused the
> count go negative, which represents the write holder, without
> really having one. ia64 is one of the platforms where deadlock
> was easily reproduced and the fix was tested.
> 
> Signed-off-by: Felix Blyakher <felixb-sJ/iWh9BUns@public.gmane.org>

Also-written-by: Eric Sandeen <sandeen-+82itfer+wXR7s880joybQ@public.gmane.org>
Independently-arrived-at-by: Eric Sandeen <sandeen-+82itfer+wXR7s880joybQ@public.gmane.org>

;)

But seriously ...

Reviewed-by: Eric Sandeen <sandeen-+82itfer+wXR7s880joybQ@public.gmane.org>

> ---
>  fs/xfs/xfs_dfrag.c |    8 +++++---
>  1 files changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/xfs/xfs_dfrag.c b/fs/xfs/xfs_dfrag.c
> index e6d839b..7465f9e 100644
> --- a/fs/xfs/xfs_dfrag.c
> +++ b/fs/xfs/xfs_dfrag.c
> @@ -347,13 +347,15 @@ xfs_swap_extents(
>  
>  	error = xfs_trans_commit(tp, XFS_TRANS_SWAPEXT);
>  
> -out_unlock:
> -	xfs_iunlock(ip,  XFS_ILOCK_EXCL | XFS_IOLOCK_EXCL);
> -	xfs_iunlock(tip, XFS_ILOCK_EXCL | XFS_IOLOCK_EXCL);
>  out:
>  	kmem_free(tempifp);
>  	return error;
>  
> +out_unlock:
> +	xfs_iunlock(ip,  XFS_ILOCK_EXCL | XFS_IOLOCK_EXCL);
> +	xfs_iunlock(tip, XFS_ILOCK_EXCL | XFS_IOLOCK_EXCL);
> +	goto out;
> +
>  out_trans_cancel:
>  	xfs_trans_cancel(tp, 0);
>  	goto out_unlock;

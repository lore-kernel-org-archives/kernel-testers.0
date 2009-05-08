From: Felix Blyakher <felixb-sJ/iWh9BUns@public.gmane.org>
Subject: Re: 2.6.30-rc4: xfs_fsr hangs
Date: Thu, 7 May 2009 20:17:49 -0500
Message-ID: <A84486DD-0769-45A8-B858-63082457D497@sgi.com>
References: <a4423d670905011333s664115bdh1d72392897567c1d@mail.gmail.com> <4A036FBC.9020201@sandeen.net> <4A037503.1070904@sandeen.net> <ABCCDF18-5100-4891-AF1C-BA9513C8A334@sgi.com> <4A038651.5010202@sandeen.net>
Mime-Version: 1.0 (Apple Message framework v930.3)
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4A038651.5010202-+82itfer+wXR7s880joybQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; delsp="yes"
To: Eric Sandeen <sandeen-+82itfer+wXR7s880joybQ@public.gmane.org>
Cc: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org


On May 7, 2009, at 8:09 PM, Eric Sandeen wrote:

> Felix Blyakher wrote:
>
>> I've been chasing this as well, and I found the double xfs iolock
>> unlock which is causing xfs_fsr deadlock itself. I have a fix tested.
>> The patch is coming.
>>
>> Felix
>>
> Oh :)  I just sent this one to the list ...  :)

Oh :) And I did as well.

And guess what, the fix is exactly the same.
Great minds think alike :)

Felix

>
>
> XFS: Fix double unlock of inodes in xfs_swap_extents()
>
> commit ef8f7fc549bf345d92f396f5aa7b152b4969cbf7 had an error
> where we would try to re-unlock the inodes after they had been
> committed in the transaction; this double unlock caused a
>
> =====================================
> [ BUG: bad unlock balance detected! ]
> -------------------------------------
> xfs_fsr/1459 is trying to release lock (&(&ip->i_iolock)->mr_lock) at:
> [<e248dedb>] xfs_iunlock+0x2c/0x92 [xfs]
> but there are no more locks to release!
>
> Signed-off-by: Eric Sandeen <sandeen-+82itfer+wXR7s880joybQ@public.gmane.org>
> ---
>
> Index: linux-2.6/fs/xfs/xfs_dfrag.c
> ===================================================================
> --- linux-2.6.orig/fs/xfs/xfs_dfrag.c
> +++ linux-2.6/fs/xfs/xfs_dfrag.c
> @@ -347,13 +347,15 @@ xfs_swap_extents(
>
> 	error = xfs_trans_commit(tp, XFS_TRANS_SWAPEXT);
>
> -out_unlock:
> -	xfs_iunlock(ip,  XFS_ILOCK_EXCL | XFS_IOLOCK_EXCL);
> -	xfs_iunlock(tip, XFS_ILOCK_EXCL | XFS_IOLOCK_EXCL);
> out:
> 	kmem_free(tempifp);
> 	return error;
>
> +out_unlock:
> +	xfs_iunlock(ip,  XFS_ILOCK_EXCL | XFS_IOLOCK_EXCL);
> +	xfs_iunlock(tip, XFS_ILOCK_EXCL | XFS_IOLOCK_EXCL);
> +	goto out;
> +
> out_trans_cancel:
> 	xfs_trans_cancel(tp, 0);
> 	goto out_unlock;
>
>
>
>
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux- 
> kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/

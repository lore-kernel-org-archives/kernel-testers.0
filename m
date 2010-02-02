From: Evgeniy Polyakov <zbr-i6C2adt8DTjR7s880joybQ@public.gmane.org>
Subject: Re: [Bug #14894] pohmelfs: NULL pointer dereference
Date: Tue, 2 Feb 2010 23:57:43 +0300
Message-ID: <20100202205743.GA26703@ioremap.net>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera> <srmJ8vMxKPH.A.iAC.TwhOLB@chimera> <20091229163512.GA4958@ioremap.net> <200912292237.54182.rjw@sisk.pl> <20091230091433.GU4489@kernel.dk>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20091230091433.GU4489-tSWWG44O7X1aa/9Udqfwiw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, GregKH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>

Hi.

Sorry, it took really long to catch all the things around, but it is
better than never.

History says that commit which introduced per-bdi writeback broke
pohmelfs, since it does not have backing store device and did not fill
appropriate superblock entry, which lead to crash on umoount.

Jens provided a patch below, which I tested to fix the problem.
There is a problem though, when all writes happend before umount,
but did net yet written back to storage, get lost. I can not say whether
this happens because of per-bdi writeback (it should not I think), but
that's what happens.

Albeit being a bug, it will not be fixed :)
The reason is simple, new backing storage for POHMELFS (a distributed
hash table called elliptics network) is essentially ready and I start
working on porting POHMELFS to it, which means all its bugs will be
fixed there^W^Werased and written from scratch.

Jens, thanks a lot for you patch, Greg please pull it up.
If you did not find it or can not extract from the reply, I will resend.

Thanks everyone!

On Wed, Dec 30, 2009 at 10:14:34AM +0100, Jens Axboe (jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org) wrote:
> Since pohmelfs isn't tied to a single block device, it needs to setup a
> backing dev like nfs/btrfs/etc do. Here's a completely untested patch.
> 
> diff --git a/drivers/staging/pohmelfs/inode.c b/drivers/staging/pohmelfs/inode.c
> index f69b778..cd25811 100644
> --- a/drivers/staging/pohmelfs/inode.c
> +++ b/drivers/staging/pohmelfs/inode.c
> @@ -36,6 +36,7 @@
>  #define POHMELFS_MAGIC_NUM	0x504f482e
>  
>  static struct kmem_cache *pohmelfs_inode_cache;
> +static atomic_t psb_bdi_num = ATOMIC_INIT(0);
>  
>  /*
>   * Removes inode from all trees, drops local name cache and removes all queued
> @@ -1331,6 +1332,8 @@ static void pohmelfs_put_super(struct super_block *sb)
>  	pohmelfs_crypto_exit(psb);
>  	pohmelfs_state_exit(psb);
>  
> +	bdi_destroy(&psb->bdi);
> +
>  	kfree(psb);
>  	sb->s_fs_info = NULL;
>  }
> @@ -1815,11 +1818,22 @@ static int pohmelfs_fill_super(struct super_block *sb, void *data, int silent)
>  	if (!psb)
>  		goto err_out_exit;
>  
> +	err = bdi_init(&psb->bdi);
> +	if (err)
> +		goto err_out_free_sb;
> +
> +	err = bdi_register(&psb->bdi, NULL, "pfs-%d", atomic_inc_return(&psb_bdi_num));
> +	if (err) {
> +		bdi_destroy(&psb->bdi);
> +		goto err_out_free_sb;
> +	}
> +
>  	sb->s_fs_info = psb;
>  	sb->s_op = &pohmelfs_sb_ops;
>  	sb->s_magic = POHMELFS_MAGIC_NUM;
>  	sb->s_maxbytes = MAX_LFS_FILESIZE;
>  	sb->s_blocksize = PAGE_SIZE;
> +	sb->s_bdi = &psb->bdi;
>  
>  	psb->sb = sb;
>  
> @@ -1863,11 +1877,11 @@ static int pohmelfs_fill_super(struct super_block *sb, void *data, int silent)
>  
>  	err = pohmelfs_parse_options((char *) data, psb, 0);
>  	if (err)
> -		goto err_out_free_sb;
> +		goto err_out_free_bdi;
>  
>  	err = pohmelfs_copy_crypto(psb);
>  	if (err)
> -		goto err_out_free_sb;
> +		goto err_out_free_bdi;
>  
>  	err = pohmelfs_state_init(psb);
>  	if (err)
> @@ -1916,6 +1930,8 @@ err_out_state_exit:
>  err_out_free_strings:
>  	kfree(psb->cipher_string);
>  	kfree(psb->hash_string);
> +err_out_free_bdi:
> +	bdi_destroy(&psb->bdi);
>  err_out_free_sb:
>  	kfree(psb);
>  err_out_exit:
> diff --git a/drivers/staging/pohmelfs/netfs.h b/drivers/staging/pohmelfs/netfs.h
> index 623a07d..01cba00 100644
> --- a/drivers/staging/pohmelfs/netfs.h
> +++ b/drivers/staging/pohmelfs/netfs.h
> @@ -18,6 +18,7 @@
>  
>  #include <linux/types.h>
>  #include <linux/connector.h>
> +#include <linux/backing-dev.h>
>  
>  #define POHMELFS_CN_IDX			5
>  #define POHMELFS_CN_VAL			0
> @@ -624,6 +625,8 @@ struct pohmelfs_sb {
>  
>  	struct super_block	*sb;
>  
> +	struct backing_dev_info	bdi;
> +
>  	/*
>  	 * Algorithm strings.
>  	 */
> 
> -- 
> Jens Axboe

-- 
	Evgeniy Polyakov

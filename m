From: Dave Chinner <david@fromorbit.com>
Subject: Re: 2.6.30-rc6: BUG at fs/xfs/support/debug.c:109!
Date: Thu, 4 Jun 2009 19:23:30 +1000
Message-ID: <20090604092330.GT16929@discord.disaster>
References: <a4423d670906010822l6e8e112dl3d6f7de9e2179850@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <xfs-bounces@oss.sgi.com>
Content-Disposition: inline
In-Reply-To: <a4423d670906010822l6e8e112dl3d6f7de9e2179850@mail.gmail.com>
List-Id: <kernel-testers.vger.kernel.org>
List-Unsubscribe: <http://oss.sgi.com/mailman/options/xfs>,
	<mailto:xfs-request@oss.sgi.com?subject=unsubscribe>
List-Archive: <http://oss.sgi.com/pipermail/xfs>
List-Post: <mailto:xfs@oss.sgi.com>
List-Help: <mailto:xfs-request@oss.sgi.com?subject=help>
List-Subscribe: <http://oss.sgi.com/mailman/listinfo/xfs>,
	<mailto:xfs-request@oss.sgi.com?subject=subscribe>
Sender: xfs-bounces@oss.sgi.com
Errors-To: xfs-bounces@oss.sgi.com
To: Alexander Beregalov <a.beregalov@gmail.com>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, xfs@oss.sgi.com

On Mon, Jun 01, 2009 at 07:22:56PM +0400, Alexander Beregalov wrote:
> Hi
> 
> Assertion failed: *nmap >= 1, file: fs/xfs/xfs_bmap.c, line: 4846
.....
> Call Trace:
>  [<ffffffff803d6bad>] xfs_bmapi+0xad/0x1ad0
>  [<ffffffff803ee5c0>] xfs_dir2_leaf_getdents+0x640/0x7b0
>  [<ffffffff803e975c>] xfs_readdir+0x12c/0x140
>  [<ffffffff80430b57>] xfs_file_readdir+0x47/0x70
>  [<ffffffff802ec500>] vfs_readdir+0xd0/0xf0
>  [<ffffffff802ec6b6>] sys_getdents+0x96/0x110
>  [<ffffffff8020ba6b>] system_call_fastpath+0x16/0x1b

I'd say this indicates a corrupted directory.  Can you run
'xfs_repair -n' over the filesystem and see if it finds a bad
directory?

Cheers,

Dave.
-- 
Dave Chinner
david@fromorbit.com

_______________________________________________
xfs mailing list
xfs@oss.sgi.com
http://oss.sgi.com/mailman/listinfo/xfs

From: Dave Chinner <david@fromorbit.com>
Subject: Re: 2.6.27-rc6: lockdep warning: iprune_mutex at
	shrink_icache_memory+0x38/0x1a8
Date: Tue, 16 Sep 2008 12:52:04 +1000
Message-ID: <20080916025204.GL5811@disturbed>
References: <20080913233138.GA19576@orion>
Mime-Version: 1.0
Return-path: <linux-fsdevel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20080913233138.GA19576@orion>
Sender: linux-fsdevel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alexander Beregalov <a.beregalov@gmail.com>
Cc: rjw@sisk.pl, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, linux-fsdevel@vger.kernel.org, xfs@oss.sgi.com

On Sun, Sep 14, 2008 at 03:31:38AM +0400, Alexander Beregalov wrote:
> Hi
> 
> [ INFO: possible circular locking dependency detected ]
> 2.6.27-rc6-00034-gd1c6d2e #3
> -------------------------------------------------------
> nfsd/1766 is trying to acquire lock:
>  (iprune_mutex){--..}, at: [<c01743fb>] shrink_icache_memory+0x38/0x1a8
> 
>  but task is already holding lock:
>   (&(&ip->i_iolock)->mr_lock){----}, at: [<c021134f>]
>   xfs_ilock+0xa2/0xd6
> 
> 
> I read files through nfs and saw delay for few seconds.
> System is x86_32, nfs, xfs.
> The last working kernel is 2.6.27-rc5,
> I do not know yet is it reproducible or not.

<sigh>

We need a FAQ for this one. It's a false positive.  Google for an
explanation - I've explained it 4 or 5 times in the past year and
asked that the lockdep folk invent a special annotation for the
iprune_mutex (or memory reclaim) because of the way it can cause
recursion into the filesystem and hence invert lock orders without
causing deadlocks.....

Cheers,

Dave.
-- 
Dave Chinner
david@fromorbit.com

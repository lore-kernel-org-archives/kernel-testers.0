From: Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #19062] Dirtiable inode bdi default != sb bdi btrfs
Date: Mon, 4 Oct 2010 11:59:44 +0200
Message-ID: <20101004095943.GE3589@quack.suse.cz>
References: <MEG5YPP-fxC.A.vnD.So6nMB@chimera>
 <sQALkqF1FWE.A.15D.bo6nMB@chimera>
 <20101002165433.GL21129@thunk.org>
 <201010022358.35972.rjw@sisk.pl>
 <20101003022707.GN21129@thunk.org>
 <4CA89E63.4080907@kernel.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <4CA89E63.4080907-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Ted Ts'o <tytso-3s7WtUTddSA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Cesar Eduardo Barros <cesarb-PWySMVKUnqmsTnJN9+BGXg@public.gmane.org>, Jens Axboe <axboe-tSWWG44O7X1aa/9Udqfwiw@public.gmane.org>, Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>, Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>

On Sun 03-10-10 17:16:51, Tejun Heo wrote:
> On 10/03/2010 04:27 AM, Ted Ts'o wrote:
> > WARNING: at /usr/projects/linux/ext4/fs/fs-writeback.c:87 inode_to_bdi+0x4e/0x5c()
> > Hardware name: 
> > Dirtiable inode bdi block != sb bdi block
> > Modules linked in:
> > Pid: 21649, comm: mkfs.ext4 Tainted: G        W   2.6.36-rc6-00016-gcc25699 #735
> > Call Trace:
> >  [<c015a2e2>] warn_slowpath_common+0x6a/0x7f
> >  [<c020a762>] ? inode_to_bdi+0x4e/0x5c
> >  [<c015a36a>] warn_slowpath_fmt+0x2b/0x2f
> >  [<c020a762>] inode_to_bdi+0x4e/0x5c
> >  [<c020b6c3>] __mark_inode_dirty+0xaf/0x162
> >  [<c0202305>] file_update_time+0xcc/0xe9
> >  [<c01c68dd>] __generic_file_aio_write+0x136/0x28f
> >  [<c02145a4>] blkdev_aio_write+0x33/0x72
> >  [<c01f20da>] do_sync_write+0x8f/0xca
> >  [<c0647678>] ? mutex_unlock+0xd/0xf
> >  [<c030d528>] ? security_file_permission+0x27/0x2b
> >  [<c01f227c>] ? rw_verify_area+0x9d/0xc0
> >  [<c01f204b>] ? do_sync_write+0x0/0xca
> >  [<c01f2629>] vfs_write+0x85/0xe3
> >  [<c01f2725>] sys_write+0x40/0x62
> >  [<c064915d>] syscall_call+0x7/0xb
> > ---[ end trace 1f39401760ab3a42 ]---
  Yes, it's caused by one of my fixes. It's harmless (the warning I've
added is just too strict). Christoph has a patch that also fixes this
- http://lkml.org/lkml/2010/9/29/76. I hope he'll push it soon.

								Honza
-- 
Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>
SUSE Labs, CR

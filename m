From: Ted Ts'o <tytso-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #19062] Dirtiable inode bdi default != sb bdi btrfs
Date: Tue, 5 Oct 2010 11:59:50 -0400
Message-ID: <20101005155949.GA18454@thunk.org>
References: <MEG5YPP-fxC.A.vnD.So6nMB@chimera>
 <sQALkqF1FWE.A.15D.bo6nMB@chimera>
 <20101002165433.GL21129@thunk.org>
 <201010022358.35972.rjw@sisk.pl>
 <20101004130911.1375c6e3.akpm@linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20101004130911.1375c6e3.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Cesar Eduardo Barros <cesarb-PWySMVKUnqmsTnJN9+BGXg@public.gmane.org>, Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Jens Axboe <axboe-tSWWG44O7X1aa/9Udqfwiw@public.gmane.org>, Christoph Hellwig <hch-jcswGhMUV9g@public.gmane.org>, Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>

On Mon, Oct 04, 2010 at 01:09:11PM -0700, Andrew Morton wrote:
> 
> Christoph had a patch, and Jan had another patch.  Maybe
> 
> commit 692ebd17c2905313fff3c504c249c6a0faad16ec
> Author: Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>
> Date:   Tue Sep 21 11:51:01 2010 +0200
> 
>     bdi: Fix warnings in __mark_inode_dirty for /dev/zero and friends
> 
> already fixed this?
> 

Actually, I do believe that's the _cause_ of what I was seeing.  The
fix is:

	  http://lkml.org/lkml/2010/9/29/76

						- Ted


				

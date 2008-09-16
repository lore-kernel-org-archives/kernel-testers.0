From: Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>
Subject: Re: 2.6.27-rc6: lockdep warning: iprune_mutex at
	shrink_icache_memory+0x38/0x1a8
Date: Tue, 16 Sep 2008 17:03:17 +1000
Message-ID: <20080916070317.GB5811@disturbed>
References: <20080913233138.GA19576@orion> <20080916025204.GL5811@disturbed> <7iduc45t9dvo0396fm78d8uat84uurh131@4ax.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <7iduc45t9dvo0396fm78d8uat84uurh131-e09XROE/p8c@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Grant Coady <gcoady.lk-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-fsdevel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org

On Tue, Sep 16, 2008 at 02:31:05PM +1000, Grant Coady wrote:
> On Tue, 16 Sep 2008 12:52:04 +1000, Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org> wrote:
> 
> >On Sun, Sep 14, 2008 at 03:31:38AM +0400, Alexander Beregalov wrote:
> >> Hi
> >> 
> >> [ INFO: possible circular locking dependency detected ]
> >> 2.6.27-rc6-00034-gd1c6d2e #3
> >> -------------------------------------------------------
> >> nfsd/1766 is trying to acquire lock:
> >>  (iprune_mutex){--..}, at: [<c01743fb>] shrink_icache_memory+0x38/0x1a8
> >> 
> >>  but task is already holding lock:
> >>   (&(&ip->i_iolock)->mr_lock){----}, at: [<c021134f>]
> >>   xfs_ilock+0xa2/0xd6
> >> 
> >> 
> >> I read files through nfs and saw delay for few seconds.
> >> System is x86_32, nfs, xfs.
> >> The last working kernel is 2.6.27-rc5,
> >> I do not know yet is it reproducible or not.
> >
> ><sigh>
> >
> >We need a FAQ for this one. It's a false positive.  Google for an
> >explanation - I've explained it 4 or 5 times in the past year and
> >asked that the lockdep folk invent a special annotation for the
> >iprune_mutex (or memory reclaim) because of the way it can cause
> >recursion into the filesystem and hence invert lock orders without
> >causing deadlocks.....
> 
> Yeah, but a 30 second dreadlock?  It's a long wait wondering what's 
> gone down or not ;)

The delay will be probably due to how slow the system can be when it
runs out of memory, not from the lockdep report.

Cheers,

Dave.
-- 
Dave Chinner
david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org

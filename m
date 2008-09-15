From: Al Viro <viro-3bDd1+5oDREiFSDQTTA3OLVCufUGDwFn@public.gmane.org>
Subject: Re: 2.6.27-rc4-git1: Reported regressions from 2.6.26
Date: Mon, 15 Sep 2008 06:30:48 +0100
Message-ID: <20080915053048.GE28946@ZenIV.linux.org.uk>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik> <alpine.LFD.1.10.0808241120460.3363@nehalem.linux-foundation.org> <m3k5e2qkk2.fsf@telia.com> <alpine.LFD.1.10.0808271335260.3363@nehalem.linux-foundation.org> <20080828135245.GA12410@infradead.org> <20080902072642.GX20055@kernel.dk> <20080903020629.GS28946@ZenIV.linux.org.uk> <20080904101326.GD20055@kernel.dk>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20080904101326.GD20055-tSWWG44O7X1aa/9Udqfwiw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Cc: Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Peter Osterlund <petero2-zq6IREYz3ykAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Alan Cox <alan-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Thu, Sep 04, 2008 at 12:13:27PM +0200, Jens Axboe wrote:
> On Wed, Sep 03 2008, Al Viro wrote:
> > On Tue, Sep 02, 2008 at 09:26:43AM +0200, Jens Axboe wrote:
> > > > Actually both interfaces are a fscking disaster.  The right things to
> > > > pass is neither and inode nor a file but a struct block_device.  Al had
> > > > all this work done a while and it just needs rebasing to a current tree:
> > > > 
> > > > 	http://git.kernel.org/?p=linux/kernel/git/viro/bdev.git;a=summary
> > > 
> > > Completely agreed. Al, I remember talking to you about this at the
> > > storage summit back in february. What are your current plans wrt moving
> > > this forward?
> > 
> > Rebased, with nfs parts of fmode_t patch taken out (irrelevant for
> > bdev anyway and really better off in intent-killing queue).  Other
> > than that, it's a straight port...  Same place, same branch.
> 
> So what's your plan with this - 2.6.28?

Yes.  The only nastiness is around drivers/ide - there it gets a bunch of
annoying conflicts from the ide-{disk,floppy}_ioctl.c splitoff.  Other than
that, it's trivially ported on top of current linux-next.  Merge order is
going to be interesting - depending on whether block merge happens before
or after ide one.

I'm going to put linux-next-based series on kernel.org tonight, before
going to Portland...

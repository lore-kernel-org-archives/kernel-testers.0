From: Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: 2.6.27-rc4-git1: Reported regressions from 2.6.26
Date: Thu, 28 Aug 2008 09:52:45 -0400
Message-ID: <20080828135245.GA12410@infradead.org>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik> <alpine.LFD.1.10.0808241120460.3363@nehalem.linux-foundation.org> <m3k5e2qkk2.fsf@telia.com> <alpine.LFD.1.10.0808271335260.3363@nehalem.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.LFD.1.10.0808271335260.3363-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Peter Osterlund <petero2-zq6IREYz3ykAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Alan Cox <alan-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, viro-RmSDqhL/yNMiFSDQTTA3OLVCufUGDwFn@public.gmane.org

On Wed, Aug 27, 2008 at 01:40:10PM -0700, Linus Torvalds wrote:
> 
> 
> On Wed, 27 Aug 2008, Peter Osterlund wrote:
> > 
> > Why not just revert the offending change and try again during the next
> > merge window, assuming someone has figured out an acceptable way to
> > handle this mess by then?
> 
> Well,, for 2.6.27 that's what we'll have to do. But there's actually a 
> real problem here - the unlocked ioctl's (which we _should_ prefer) have a 
> strictly weaker and worse interface. I also wonder if any other 
> block_ioctl users were converted..

Actually both interfaces are a fscking disaster.  The right things to
pass is neither and inode nor a file but a struct block_device.  Al had
all this work done a while and it just needs rebasing to a current tree:

	http://git.kernel.org/?p=linux/kernel/git/viro/bdev.git;a=summary

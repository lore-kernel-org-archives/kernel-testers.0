From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: 2.6.27-rc4-git1: Reported regressions from 2.6.26
Date: Sun, 24 Aug 2008 11:34:32 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808241120460.3363@nehalem.linux-foundation.org>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <mzBsPw3QUOF.A.87F.wZGsIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Alan Cox <alan-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Peter Osterlund <petero2-zq6IREYz3ykAvxtiuMwx3w@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Sat, 23 Aug 2008, Rafael J. Wysocki wrote:
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11401
> Subject		: pktcdvd: BUG, NULL pointer dereference in pkt_ioctl, bisected
> Submitter	: Laurent Riffard <laurent.riffard-GANU6spQydw@public.gmane.org>
> Date		: 2008-08-22 08:16 (2 days old)

This one looks irritating.

It's bisected to 5b6155ee70e9c4d2ad7e6f514c8eee06e2711c3a ("pktcdvd: push 
BKL down into driver"), but the problem goes deeper than that.

The "unlocked" ioctl's do not get a "struct inode *" pointer, they _only_ 
get the "struct file *". And this is very much historical usage, where 
some internal functions only passed in the inode (good or not, whatever).

And ioctl_by_bdev() doesn't have a "struct file *" and has depended on 
passing in a NUMM "struct file *" and its own "struct inode *", and 
expects the ioctl's to just use that instead. But the unlocked ioctl just 
drops it on the floor, and uses just the (unusable) file pointer.

Grr.

And some other cases (like pkt_ioctl() itself) that simply pass in a 
_different_ inode than the file itself is attached to. It does

	blkdev_ioctl(pd->bdev->bd_inode, file, cmd, arg);

where "file" points to the pkt_ioctl thing, but "inode" points to the 
inode "behind" the pkt interface.

Double grr.

I really think the only sane model is to literally make "unlocked_ioctl()" 
have the same calling convention as the old "ioctl()" thing had, and pass 
in both file * and inode *. It was a stupid "cleanup" to try to have a 
simpler interface for the unlocked version. Having two different models, 
where we have actually _depended_ on the old model and then are trying to 
convert to a (weaker) new model, is not a good idea.

The alternative is to do this _only_ for the blkdev_ioctl's, and have 
those only take the "inode *", and then create a new fake "struct file *" 
to go with it, regardless of what "struct file" was passed in (exactly 
because the blockdev ones really think that the inode is the important 
part).

Hmm?

We need to fix this.

		Linus

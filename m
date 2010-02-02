From: Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14894] pohmelfs: NULL pointer dereference
Date: Tue, 2 Feb 2010 13:18:09 -0800
Message-ID: <20100202211809.GB8755@kroah.com>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
 <srmJ8vMxKPH.A.iAC.TwhOLB@chimera>
 <20091229163512.GA4958@ioremap.net>
 <200912292237.54182.rjw@sisk.pl>
 <20091230091433.GU4489@kernel.dk>
 <20100202205743.GA26703@ioremap.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20100202205743.GA26703-i6C2adt8DTjR7s880joybQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Evgeniy Polyakov <zbr-i6C2adt8DTjR7s880joybQ@public.gmane.org>
Cc: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Tue, Feb 02, 2010 at 11:57:43PM +0300, Evgeniy Polyakov wrote:
> Hi.
> 
> Sorry, it took really long to catch all the things around, but it is
> better than never.
> 
> History says that commit which introduced per-bdi writeback broke
> pohmelfs, since it does not have backing store device and did not fill
> appropriate superblock entry, which lead to crash on umoount.
> 
> Jens provided a patch below, which I tested to fix the problem.
> There is a problem though, when all writes happend before umount,
> but did net yet written back to storage, get lost. I can not say whether
> this happens because of per-bdi writeback (it should not I think), but
> that's what happens.
> 
> Albeit being a bug, it will not be fixed :)
> The reason is simple, new backing storage for POHMELFS (a distributed
> hash table called elliptics network) is essentially ready and I start
> working on porting POHMELFS to it, which means all its bugs will be
> fixed there^W^Werased and written from scratch.
> 
> Jens, thanks a lot for you patch, Greg please pull it up.
> If you did not find it or can not extract from the reply, I will resend.

Please resend it with a signed-off-by line so that I can apply it.

thanks,

greg k-h

From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14894] pohmelfs: NULL pointer dereference
Date: Tue, 2 Feb 2010 22:21:09 +0100
Message-ID: <201002022221.09895.rjw@sisk.pl>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera> <20091230091433.GU4489@kernel.dk> <20100202205743.GA26703@ioremap.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100202205743.GA26703-i6C2adt8DTjR7s880joybQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Evgeniy Polyakov <zbr-i6C2adt8DTjR7s880joybQ@public.gmane.org>
Cc: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, GregKH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>

On Tuesday 02 February 2010, Evgeniy Polyakov wrote:
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

Thanks, I've linked the Jens' patch to the bugzilla entry and marked the
bug as resolved.

Rafael

From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13665] commit 69c854817566 causes OOMs
Date: Tue, 28 Jul 2009 00:19:34 +0200
Message-ID: <200907280019.35927.rjw@sisk.pl>
References: <Jya1GruKQpD.A.16.2GObKB@chimera> <3zAHs5O6maO.A.44E.QIObKB@chimera> <20090727004851.GA10495@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090727004851.GA10495@localhost>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Howells <dhowells-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, MinChan Kim <minchan.kim-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org" <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Monday 27 July 2009, Wu Fengguang wrote:
> On Mon, Jul 27, 2009 at 04:28:20AM +0800, Rafael J. Wysocki wrote:
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13665
> > Subject		: commit 69c854817566 causes OOMs
> > Submitter	: David Howells <dhowells-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> > Date		: 2009-06-27 08:12 (30 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=69c854817566db82c362797b4a6521d0b00fe1d8
> > References	: http://lkml.org/lkml/2009/6/27/28
> 
> Both patches from KOSAKI and Rik can fix the OOM in my tests:
> 
> http://lkml.org/lkml/2009/7/7/104
> http://patchwork.kernel.org/patch/34740/
> 
> The latter one has been included in -mm
> 
> > Handled-By	: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> > Patch		: http://patchwork.kernel.org/patch/32740/
> 
> This patch is also in -mm.

Thanks, updated.

Rafael

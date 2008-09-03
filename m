From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11441] lots of 'in_atomic():1, irqs_disabled():0' with software-raid1
Date: Wed, 3 Sep 2008 22:00:35 +0200
Message-ID: <200809032200.36471.rjw@sisk.pl>
References: <q6jBvyFdWbL.A.K4C.fhbuIB@albercik> <N8SeMoDzuxC.A.IxD._hbuIB@albercik> <20080903194417.GA4937@amd64.of.nowhere>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080903194417.GA4937-9lYvA+wzQ+BL6ehbpA6KYA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: thunder7-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Neil Brown <neilb-l3A5Bk7waGM@public.gmane.org>

On Wednesday, 3 of September 2008, thunder7-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org wrote:
> From: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> Date: Sat, Aug 30, 2008 at 09:50:25PM +0200
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.26.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11441
> > Subject		: lots of 'in_atomic():1, irqs_disabled():0' with software-raid1
> > Submitter	: jurriaan <thunder7-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
> > Date		: 2008-08-27 17:05 (4 days old)
> > References	: http://marc.info/?l=linux-kernel&m=121985847724696&w=4
> > Handled-By	: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
> > 		  Neil Brown <neilb-l3A5Bk7waGM@public.gmane.org>
> > Patch		: http://marc.info/?l=linux-kernel&m=121998896602338&w=4
> > 
> As a matter of fact, now it's even worse.
> 
> On bootup, I see
> 
> md4: bitmap initalized from disk: read 10/10 pages, set 6 bits
> created bitmap for device md4 (156 pages)
> unable to handle null pointer dereference
> write_page+0x179
> 
> _spin_unlock_irqrestore
> bitmap_update_sb
> bitmap_create
> do_md_run
> [ snipped the rest ]
> 
> when I boot 2.6.27-rc5 with the mentioned patch. I've written this
> information down by hand. I don't have a dmesg, since my root filesystem
> is on a raid1-volume, and thus I can't boot 2.6.27-rc5.
> If you need more information, please let me know.

Can you test the current -git kernel, please?

Rafael

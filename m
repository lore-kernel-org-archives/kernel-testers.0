From: Neil Brown <neilb-l3A5Bk7waGM@public.gmane.org>
Subject: Re: [Bug #11441] lots of 'in_atomic():1, irqs_disabled():0' with software-raid1
Date: Thu, 4 Sep 2008 15:01:02 +1000
Message-ID: <18623.27534.745183.683281@notabene.brown>
References: <q6jBvyFdWbL.A.K4C.fhbuIB@albercik>
	<N8SeMoDzuxC.A.IxD._hbuIB@albercik>
	<20080903194417.GA4937@amd64.of.nowhere>
	<200809032200.36471.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: message from Rafael J. Wysocki on Wednesday September 3
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: thunder7-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

On Wednesday September 3, rjw-KKrjLPT3xs0@public.gmane.org wrote:
> > > Patch		: http://marc.info/?l=linux-kernel&m=121998896602338&w=4
> > > 
> > As a matter of fact, now it's even worse.
> > 
> > On bootup, I see
> > 
> > md4: bitmap initalized from disk: read 10/10 pages, set 6 bits
> > created bitmap for device md4 (156 pages)
> > unable to handle null pointer dereference
> > write_page+0x179
> > 
> > _spin_unlock_irqrestore
> > bitmap_update_sb
> > bitmap_create
> > do_md_run
> > [ snipped the rest ]
> > 
> > when I boot 2.6.27-rc5 with the mentioned patch. I've written this
> > information down by hand. I don't have a dmesg, since my root filesystem
> > is on a raid1-volume, and thus I can't boot 2.6.27-rc5.
> > If you need more information, please let me know.

Yes.  As I said it was an untested patch and it did turn out to have a
problem when I finally found time to test it.
The fixed version is here:
 http://neil.brown.name/git?p=md;a=commitdiff;h=b2d2c4ceaddc3098f19637a732f74b820a81a9e7

and is with Linus now, so...
> 
> Can you test the current -git kernel, please?

...this is good advice.

Thanks,
NeilBrown

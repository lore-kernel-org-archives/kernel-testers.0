From: Neil Brown <neilb-l3A5Bk7waGM@public.gmane.org>
Subject: Re: x86_64 panic on latest linux-2.6
Date: Mon, 26 May 2008 09:35:04 +1000
Message-ID: <18489.63400.560248.222094@notabene.brown>
References: <200805251051.33781.m.kozlowski@tuxland.pl>
	<20080525204229.GL1791@cs181133002.pp.htv.fi>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: message from Adrian Bunk on Sunday May 25
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Mariusz Kozlowski <m.kozlowski-NWF1p15JEu3VItvQsEIGlw@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Kay Sievers <kay.sievers-tD+1rO4QERM@public.gmane.org>, Greg Kroah-Hartman <gregkh-l3A5Bk7waGM@public.gmane.org>

On Sunday May 25, bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org wrote:
> On Sun, May 25, 2008 at 10:51:33AM +0200, Mariusz Kozlowski wrote:
> > Hello,
> 
> Hi Mariusz,
> 
> > 	My x86_64 box is not willing to boot.
> > 
> > http://tuxland.pl/tmp/s7300372.jpg (275kB)
> > 
> > (gdb) p blk_lookup_devt
> > $1 = {dev_t (const char *, int)} 0xffffffff8032a430 <blk_lookup_devt>
> > (gdb) l *(0xffffffff8032a430+0x7f)
> > 0xffffffff8032a4af is in blk_lookup_devt (block/genhd.c:664).
> > 659             dev_t devt = MKDEV(0, 0);
> > 660     
> > 661             mutex_lock(&block_class_lock);
> > 662             list_for_each_entry(dev, &block_class.devices, node) {
> > 663                     if (strcmp(dev->bus_id, name) == 0) {
> > 664                             struct gendisk *disk = dev_to_disk(dev);
> > 665     
> > 666                             if (part < disk->minors)
> > 667                                     devt = MKDEV(MAJOR(dev->devt),
> > 668                                                  MINOR(dev->devt) + part);

Having decoded the "Code:", what is happening here is that 'dev' is
clearly not embedded inside a 'disk'.
The address of 'dev' is in RBX and is ffff81007f270010.
disk->minors is at and offset of -0x60 from 'dev' (as 'dev' is assumed
to be a structure embeded in a 'struct gendisk' - dev_to_disk uses
container_of to find the gendisk that holds the device).  But 0x60 from RBX
is in a different page, and presumably that memory doesn't exist.

So the question is: how can a 'struct device' which is not part of
a 'struct gendisk' be on 'block_class.devices'.

Unfortunately, I have no idea.

NeilBrown
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html

From: Bart Van Assche <bvanassche-HInyCGIudOg@public.gmane.org>
Subject: Re: [Bug #32982] Kernel locks up a few minutes after boot
Date: Mon, 18 Apr 2011 20:32:43 +0200
Message-ID: <BANLkTimaekpwmK+z=ePE+XSP6GUteidwfw@mail.gmail.com>
References: <OlQwC5HnRsN.A.ULB.OGuqNB@chimera> <_H4l51C1wXN.A.yDC.yGuqNB@chimera>
 <BANLkTimeaHwBiZoz=isCM=qtBxoxaBqDUw@mail.gmail.com> <BANLkTi=1jO73DXDTD50bVpU82qphVKmRCw@mail.gmail.com>
 <4DAC2429.5000105@fusionio.com> <BANLkTinCWWYqnksxevho9TN3u6ZC_Rjzwg@mail.gmail.com>
 <4DAC82E6.3020809@fusionio.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:in-reply-to:references:from
         :date:x-google-sender-auth:message-id:subject:to:cc:content-type;
        bh=Bn0S18Oju4MJnyQLmxQ1OvHju1moUtWtnkFQGU19DJ0=;
        b=tYVLJK7PBvSD8Y3nW90PS/rJRjxpAXRUr+O4jGNBzDmaWQRHz0rdSxct7+vCj+pYzg
         iv9Ohp3VEa7Z43AEzuPtrmS+zyxH1oMyKGsKrSbT5Eae0Gv6KEgPztt/nScFBp92Ym3I
         4Y66wJdIUY7zbBp9aqD/fXYviDdmNBE+PSjAY=
In-Reply-To: <4DAC82E6.3020809-5c4llco8/ftWk0Htik3J/w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jens Axboe <jaxboe-5c4llco8/ftWk0Htik3J/w@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Neil Brown <neilb-l3A5Bk7waGM@public.gmane.org>

On Mon, Apr 18, 2011 at 8:28 PM, Jens Axboe <jaxboe-5c4llco8/ftWk0Htik3J/w@public.gmane.org> wrote:
> On 2011-04-18 20:21, Bart Van Assche wrote:
>> a performance regression in the block layer not related to the md
>> issue. If I run a small block IOPS test on a block device created by
>> ib_srp (NOOP scheduler) I see about 11% less IOPS than with 2.6.38.3
>> (155.000 IOPS with 2.6.38.3 and 140.000 IOPS with 2.6.39-rc3+).
>
> That's not good. What's the test case?

Nothing more than a fio IOPS test:

fio --bs=512 --ioengine=libaio --buffered=0 --rw=read --thread
--iodepth=64 --numjobs=2 --loops=10000 --group_reporting --size=1G
    --gtod_reduce=1 --name=iops-test --filename=/dev/${dev} --invalidate=1

Bart.
